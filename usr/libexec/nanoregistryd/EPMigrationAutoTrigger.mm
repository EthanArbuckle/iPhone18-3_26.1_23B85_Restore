@interface EPMigrationAutoTrigger
+ (id)newService:(id)service;
+ (unint64_t)failureTypeWithError:(id)error;
- (BOOL)_hasMigrationConsent:(id)consent;
- (BOOL)hasMessageTimeIntervalExpired:(double)expired forCloudIdentifier:(id)identifier;
- (BOOL)isDate:(id)date agedMoreThan:(double)than;
- (BOOL)isUIUnlocked;
- (BOOL)shortTermFailureLockoutContainsBluetoothIdentifier:(id)identifier;
- (BOOL)springBoardHasFinishedStartup;
- (EPKeymaster)keymaster;
- (EPMigrationAutoTrigger)initWithServiceRegistry:(id)registry;
- (EPPhoneMigrator)migrator;
- (NRRegistry)registry;
- (id)_cloudIdentifierForDevice:(id)device;
- (id)cloud;
- (id)shortTermFailureLockoutFilterBluetoothIdentifiers:(id)identifiers;
- (void)addBluetoothIdentifierToShortTermFailureLockout:(id)lockout;
- (void)assertionFactoryDidBecomeIdle:(id)idle;
- (void)calculateNextMessageSendIntervalWithCompletion:(id)completion;
- (void)cancelMigrationSoftErrorAlertDelayTimerWithDeviceID:(id)d;
- (void)cancelTimer;
- (void)checkAssertionFactoryForAssertion;
- (void)dealloc;
- (void)discoveredMigrationCandidateWithNetworkRelayIdentifier:(id)identifier;
- (void)discoverer:(id)discoverer deviceDidBecomeDisplayable:(id)displayable;
- (void)initialSyncStateObserver:(id)observer initialSyncDidCompleteForPairingIdentifier:(id)identifier;
- (void)initialSyncStateObserver:(id)observer syncDidResetForPairingIdentifier:(id)identifier;
- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)requests;
- (void)isDevice:(id)device readyToMigrate:(id)migrate;
- (void)nanoRegistryAdvertisingRequestTimeout;
- (void)queryDeviceSyncStatusIfNeeded;
- (void)registerForNotifications;
- (void)resetAllMessageSendTimersWithCompletion:(id)completion;
- (void)sendMessageToAvailableWatchesWithInterval:(double)interval completion:(id)completion;
- (void)sendMessageToWatchWithRawCloudIdentifiers:(id)identifiers;
- (void)setLastMessageSendDate:(id)date forRawCloudIdentifiers:(id)identifiers;
- (void)setMigrationSoftErrorAlertDelayTimer:(double)timer deviceID:(id)d withBlock:(id)block;
- (void)setShouldClearAdvertisingIntervalTimeouts:(BOOL)timeouts;
- (void)setTimerDuration:(double)duration withBlock:(id)block;
- (void)startMigrationAfterTimeout:(double)timeout;
- (void)startMigrationOnMRUIfWatchWasFoundWithCompletion:(id)completion;
- (void)startNetworkRelayWatchScanWithCompletion:(id)completion;
- (void)startWatchScanWithCompletion:(id)completion;
- (void)stopNetworkRelayWatchScan;
- (void)unregisterForNotifications;
- (void)update;
@end

@implementation EPMigrationAutoTrigger

- (void)update
{
  isUIUnlocked = [(EPMigrationAutoTrigger *)self isUIUnlocked];
  v4 = isUIUnlocked;
  v5 = isUIUnlocked && !self->_wasUIUnlocked;
  self->_wasUIUnlocked = isUIUnlocked;
  v41 = @"ExtendedDeviceLockState";
  v42 = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v6 = MKBGetDeviceLockState();
  if (v6 > 7 || ((1 << v6) & 0xC1) == 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v8 = !self->_wasUnlocked;
    v9 = 1;
    v10 = 1;
  }

  v25 = v9;
  self->_wasUnlocked = v9;
  springBoardHasFinishedStartup = [(EPMigrationAutoTrigger *)self springBoardHasFinishedStartup];
  v12 = nr_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v36 = v10;
      v37 = 1024;
      v38 = v8;
      v39 = 1024;
      v40 = springBoardHasFinishedStartup;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: unlocked=%{BOOL}d, becameUnlocked=%{BOOL}d, springBoardHasFinishedStartup=%{BOOL}d", buf, 0x14u);
    }
  }

  v15 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  hasAccounts = [v15 hasAccounts];
  v17 = hasAccounts;
  if (hasAccounts)
  {
    v18 = !self->_hadAccounts;
  }

  else
  {
    v18 = 0;
  }

  if (MKBDeviceUnlockedSinceBoot() && self->_shouldClearAdvertisingIntervalTimeouts)
  {
    v24 = v5;
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: clearing advertising interval timeouts", buf, 2u);
      }
    }

    self->_shouldClearAdvertisingIntervalTimeouts = 0;
    [(EPMigrationAutoTrigger *)self resetAllMessageSendTimersWithCompletion:0];
    v5 = v24;
  }

  v22 = v6 == 3;
  migrator = [(EPMigrationAutoTrigger *)self migrator];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100079C60;
  v26[3] = &unk_100178250;
  v26[4] = self;
  v27 = v25;
  v28 = v22;
  v29 = v4;
  v30 = v17;
  v31 = springBoardHasFinishedStartup;
  v32 = v18;
  v33 = v5;
  v34 = v8;
  [migrator getNonAltAccountMigratableDeviceIDsWithBlock:v26];
}

- (BOOL)isUIUnlocked
{
  state64 = 0;
  uiUnlockNotifyToken = self->_uiUnlockNotifyToken;
  if (uiUnlockNotifyToken != -1)
  {
    if (notify_get_state(uiUnlockNotifyToken, &state64))
    {
      v3 = nr_daemon_log();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (v4)
      {
        v5 = nr_daemon_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_100101238();
        }
      }
    }
  }

  return state64 == 0;
}

+ (id)newService:(id)service
{
  serviceCopy = service;
  v5 = [[self alloc] initWithServiceRegistry:serviceCopy];

  return v5;
}

- (EPPhoneMigrator)migrator
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (NRRegistry)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)cloud
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (EPKeymaster)keymaster
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (EPMigrationAutoTrigger)initWithServiceRegistry:(id)registry
{
  registryCopy = registry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  v6 = [(EPMigrationAutoTrigger *)self init];
  if (v6)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Init", buf, 2u);
      }
    }

    v10 = [[NRPreferences alloc] initWithDomain:@"com.apple.nanoregistryd"];
    prefs = v6->_prefs;
    v6->_prefs = v10;

    *&v6->_uiUnlockNotifyToken = -1;
    v6->_springBoardNotifyToken = -1;
    v12 = +[NSMutableSet set];
    bluetoothIdentifierShortTermFailureLockout = v6->_bluetoothIdentifierShortTermFailureLockout;
    v6->_bluetoothIdentifierShortTermFailureLockout = v12;

    objc_initWeak(buf, v6);
    registry = [(EPMigrationAutoTrigger *)v6 registry];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100078094;
    v23[3] = &unk_100178168;
    objc_copyWeak(&v25, buf);
    v15 = v6;
    v24 = v15;
    v16 = [registry addDiffObserverWithWriteBlock:v23];

    v17 = [[PSYInitialSyncStateObserver alloc] initWithDelegate:v15];
    syncObserver = v15->_syncObserver;
    v15->_syncObserver = v17;

    [(EPMigrationAutoTrigger *)v15 queryDeviceSyncStatusIfNeeded];
    v19 = +[NRQueue registryDaemonQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100078584;
    v21[3] = &unk_100175660;
    v22 = v15;
    [v19 dispatchAsync:v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  return v6;
}

- (void)checkAssertionFactoryForAssertion
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[EPMigrationAutoTrigger checkAssertionFactoryForAssertion]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: %s", &v8, 0xCu);
    }
  }

  v6 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  assertions = [v6 assertions];
  self->_hasSwitchAssertion = [assertions count] != 0;
}

- (void)assertionFactoryDidBecomeIdle:(id)idle
{
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[EPMigrationAutoTrigger assertionFactoryDidBecomeIdle:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: %s", &v7, 0xCu);
    }
  }

  self->_hasSwitchAssertion = 0;
  [(EPMigrationAutoTrigger *)self update];
}

- (void)queryDeviceSyncStatusIfNeeded
{
  registry = [(EPMigrationAutoTrigger *)self registry];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100078844;
  v4[3] = &unk_100175948;
  v4[4] = self;
  [registry grabRegistryWithReadBlock:v4];
}

- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)requests
{
  v4 = +[NRQueue registryDaemonQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100078DEC;
  v5[3] = &unk_100175660;
  v5[4] = self;
  [v4 dispatchAsync:v5];
}

- (void)initialSyncStateObserver:(id)observer syncDidResetForPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[NRQueue registryDaemonQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100078F40;
  v8[3] = &unk_100175598;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  [v6 dispatchAsync:v8];
}

- (void)initialSyncStateObserver:(id)observer initialSyncDidCompleteForPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[NRQueue registryDaemonQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000790B0;
  v8[3] = &unk_100175598;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  [v6 dispatchAsync:v8];
}

- (void)addBluetoothIdentifierToShortTermFailureLockout:(id)lockout
{
  lockoutCopy = lockout;
  v7 = lockoutCopy;
  if (!self->_shortTermFailureLockoutCreationDate)
  {
    v5 = +[NSDate date];
    shortTermFailureLockoutCreationDate = self->_shortTermFailureLockoutCreationDate;
    self->_shortTermFailureLockoutCreationDate = v5;

    lockoutCopy = v7;
  }

  [(NSMutableSet *)self->_bluetoothIdentifierShortTermFailureLockout addObject:lockoutCopy];
}

- (BOOL)shortTermFailureLockoutContainsBluetoothIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(NSDate *)self->_shortTermFailureLockoutCreationDate timeIntervalSinceNow];
  if (v5 > 300.0 || ([(NSDate *)self->_shortTermFailureLockoutCreationDate timeIntervalSinceNow], v6 < -300.0))
  {
    shortTermFailureLockoutCreationDate = self->_shortTermFailureLockoutCreationDate;
    self->_shortTermFailureLockoutCreationDate = 0;

    [(NSMutableSet *)self->_bluetoothIdentifierShortTermFailureLockout removeAllObjects];
  }

  v8 = [(NSMutableSet *)self->_bluetoothIdentifierShortTermFailureLockout containsObject:identifierCopy];

  return v8;
}

- (id)shortTermFailureLockoutFilterBluetoothIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(NSDate *)self->_shortTermFailureLockoutCreationDate timeIntervalSinceNow];
  if (v5 > 300.0 || ([(NSDate *)self->_shortTermFailureLockoutCreationDate timeIntervalSinceNow], v6 < -300.0))
  {
    shortTermFailureLockoutCreationDate = self->_shortTermFailureLockoutCreationDate;
    self->_shortTermFailureLockoutCreationDate = 0;

    [(NSMutableSet *)self->_bluetoothIdentifierShortTermFailureLockout removeAllObjects];
  }

  v8 = [identifiersCopy mutableCopy];
  [v8 minusSet:self->_bluetoothIdentifierShortTermFailureLockout];

  return v8;
}

- (BOOL)_hasMigrationConsent:(id)consent
{
  consentCopy = consent;
  registry = [(EPMigrationAutoTrigger *)self registry];
  collection = [registry collection];
  v7 = [collection objectForKeyedSubscript:consentCopy];

  v8 = [v7 objectForKeyedSubscript:NRDevicePropertyMigrationConsent];
  value = [v8 value];

  v10 = [v7 objectForKeyedSubscript:NRDevicePropertyMigrationConsentDate];
  value2 = [v10 value];

  if ([value BOOLValue])
  {
    v12 = value2 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    [value2 timeIntervalSinceNow];
    v13 = v14 >= -86400.0 && v14 <= 0.0;
  }

  return v13;
}

- (void)registerForNotifications
{
  p_uiUnlockNotifyToken = &self->_uiUnlockNotifyToken;
  if (self->_uiUnlockNotifyToken == -1)
  {
    v4 = +[NRQueue registryDaemonQueue];
    queue = [v4 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100079738;
    handler[3] = &unk_1001759E8;
    handler[4] = self;
    v6 = notify_register_dispatch("com.apple.springboard.lockstate", p_uiUnlockNotifyToken, queue, handler);

    if (v6)
    {
      v7 = nr_daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (v8)
      {
        v9 = nr_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1001010CC();
        }
      }
    }
  }

  if (self->_keybagNotifyToken == -1)
  {
    v10 = kMobileKeyBagLockStatusNotifyToken;
    v11 = +[NRQueue registryDaemonQueue];
    queue2 = [v11 queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000797D4;
    v24[3] = &unk_1001759E8;
    v24[4] = self;
    v13 = notify_register_dispatch(v10, &self->_keybagNotifyToken, queue2, v24);

    if (v13)
    {
      v14 = nr_daemon_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        v16 = nr_daemon_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10010113C();
        }
      }
    }
  }

  if (self->_springBoardNotifyToken == -1)
  {
    v17 = +[NRQueue registryDaemonQueue];
    queue3 = [v17 queue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100079870;
    v23[3] = &unk_1001759E8;
    v23[4] = self;
    v19 = notify_register_dispatch("com.apple.springboard.finishedstartup", &self->_springBoardNotifyToken, queue3, v23);

    if (v19)
    {
      v20 = nr_daemon_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (v21)
      {
        v22 = nr_daemon_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1001011AC();
        }
      }
    }
  }
}

- (void)unregisterForNotifications
{
  uiUnlockNotifyToken = self->_uiUnlockNotifyToken;
  if (uiUnlockNotifyToken != -1)
  {
    notify_cancel(uiUnlockNotifyToken);
    self->_uiUnlockNotifyToken = -1;
  }

  keybagNotifyToken = self->_keybagNotifyToken;
  if (keybagNotifyToken != -1)
  {
    notify_cancel(keybagNotifyToken);
    self->_keybagNotifyToken = -1;
  }

  springBoardNotifyToken = self->_springBoardNotifyToken;
  if (springBoardNotifyToken != -1)
  {
    notify_cancel(springBoardNotifyToken);
    self->_springBoardNotifyToken = -1;
  }
}

- (BOOL)springBoardHasFinishedStartup
{
  out_token = -1;
  notify_register_check("com.apple.springboard.finishedstartup", &out_token);
  if (out_token == -1)
  {
    return 0;
  }

  v3 = 0;
  notify_get_state(out_token, &v3);
  notify_cancel(out_token);
  return v3 != 0;
}

- (void)dealloc
{
  [(EPMigrationAutoTrigger *)self unregisterForNotifications];
  dispatch_sync(&_dispatch_main_q, &stru_1001781B0);
  v3.receiver = self;
  v3.super_class = EPMigrationAutoTrigger;
  [(EPMigrationAutoTrigger *)&v3 dealloc];
}

- (BOOL)isDate:(id)date agedMoreThan:(double)than
{
  dateCopy = date;
  v6 = dateCopy;
  if (dateCopy && ([dateCopy timeIntervalSinceNow], -v7 <= than))
  {
    [v6 timeIntervalSinceNow];
    v8 = v9 > 0.0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)nanoRegistryAdvertisingRequestTimeout
{
  v3 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079B74;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setShouldClearAdvertisingIntervalTimeouts:(BOOL)timeouts
{
  timeoutsCopy = timeouts;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      if (timeoutsCopy)
      {
        v8 = "YES";
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: setShouldClearAdvertisingIntervalTimeouts:%s", &v9, 0xCu);
    }
  }

  self->_shouldClearAdvertisingIntervalTimeouts = timeoutsCopy;
  [(EPMigrationAutoTrigger *)self update];
}

- (void)setTimerDuration:(double)duration withBlock:(id)block
{
  blockCopy = block;
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v8 = self->_currentTimer;
    self->_currentTimer = 0;
  }

  if (blockCopy)
  {
    v9 = +[EPFactory queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

    v11 = dispatch_time(0, (duration * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007ADD4;
    v14[3] = &unk_100175FA0;
    v14[4] = self;
    v15 = blockCopy;
    dispatch_source_set_event_handler(v10, v14);
    dispatch_resume(v10);
    v12 = self->_currentTimer;
    self->_currentTimer = v10;
    v13 = v10;
  }
}

- (void)cancelTimer
{
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v4 = self->_currentTimer;
    self->_currentTimer = 0;
  }
}

- (void)cancelMigrationSoftErrorAlertDelayTimerWithDeviceID:(id)d
{
  dCopy = d;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      v15 = 138412290;
      v16 = uUIDString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: cancelMigrationSoftErrorAlertDelayTimerWithDeviceID for %@", &v15, 0xCu);
    }
  }

  if (!dCopy || [dCopy isEqual:self->_migrationSoftErrorDeviceID])
  {
    migrationSoftErrorAlertDelayTimer = self->_migrationSoftErrorAlertDelayTimer;
    if (migrationSoftErrorAlertDelayTimer)
    {
      dispatch_source_cancel(migrationSoftErrorAlertDelayTimer);
      migrationSoftErrorDeviceID = self->_migrationSoftErrorDeviceID;
      self->_migrationSoftErrorDeviceID = 0;
    }

    v11 = +[NRRepeatingAlertEngine sharedInstance];
    [v11 resetStateForAlertWithName:@"MigrationFailed"];

    v12 = +[NRRepeatingAlertEngine sharedInstance];
    [v12 setEnabled:0 withName:@"MigrationFailed"];

    if (!dCopy)
    {
      v13 = +[NRRepeatingAlertEngine sharedInstance];
      [v13 resetStateForAlertWithName:@"MigrationFailedPermanentlyForThisWatch"];

      v14 = +[NRRepeatingAlertEngine sharedInstance];
      [v14 setEnabled:0 withName:@"MigrationFailedPermanentlyForThisWatch"];
    }
  }
}

- (void)setMigrationSoftErrorAlertDelayTimer:(double)timer deviceID:(id)d withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  [(EPMigrationAutoTrigger *)self cancelMigrationSoftErrorAlertDelayTimerWithDeviceID:0];
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [dCopy UUIDString];
      *buf = 134218242;
      timerCopy = timer;
      v31 = 2112;
      v32 = uUIDString;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Setting migration soft error alert delay timer timeout to %1.1f for device %@", buf, 0x16u);
    }
  }

  if (blockCopy)
  {
    v15 = +[NRQueue registryDaemonQueue];
    queue = [v15 queue];
    v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

    v18 = dispatch_time(0, (timer * 1000000000.0));
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10007B2D4;
    handler[3] = &unk_1001768B0;
    handler[4] = self;
    v19 = dCopy;
    v27 = v19;
    v20 = blockCopy;
    v28 = v20;
    dispatch_source_set_event_handler(v17, handler);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10007B3D8;
    v23[3] = &unk_1001768B0;
    v23[4] = self;
    v24 = v19;
    v25 = v20;
    dispatch_source_set_cancel_handler(v17, v23);
    migrationSoftErrorAlertDelayTimer = self->_migrationSoftErrorAlertDelayTimer;
    self->_migrationSoftErrorAlertDelayTimer = v17;
    v22 = v17;

    objc_storeStrong(&self->_migrationSoftErrorDeviceID, d);
    dispatch_resume(v22);
  }
}

- (void)startWatchScanWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_discoverer)
  {
    v5 = +[NRQueue registryDaemonQueue];
    [v5 dispatchAsync:completionCopy];
  }

  else
  {
    v6 = +[NSMutableArray array];
    migrator = [(EPMigrationAutoTrigger *)self migrator];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007B5E0;
    v8[3] = &unk_100178278;
    v8[4] = self;
    v9 = v6;
    v10 = completionCopy;
    v5 = v6;
    [migrator getNonAltAccountMigratableDeviceIDsWithBlock:v8];
  }
}

- (void)startNetworkRelayWatchScanWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_networkRelayAgent)
  {
    v5 = +[NRQueue registryDaemonQueue];
    [v5 dispatchAsync:completionCopy];
  }

  else
  {
    v6 = +[NetworkRelayAgent sharedInstance];
    networkRelayAgent = self->_networkRelayAgent;
    self->_networkRelayAgent = v6;

    [(NetworkRelayAgent *)self->_networkRelayAgent addDelegate:self];
    v8 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NetworkRelayPairing is enabled, start scanning for migratable Watches using NetworkRelay", buf, 2u);
    }

    v9 = objc_alloc_init(NSMutableSet);
    migrator = [(EPMigrationAutoTrigger *)self migrator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007BC0C;
    v11[3] = &unk_100178278;
    v11[4] = self;
    v12 = v9;
    v13 = completionCopy;
    v5 = v9;
    [migrator getNonAltAccountMigratableDeviceIDsWithBlock:v11];
  }
}

- (void)stopNetworkRelayWatchScan
{
  networkRelayAgent = self->_networkRelayAgent;
  if (networkRelayAgent)
  {
    [(NetworkRelayAgent *)networkRelayAgent stopScanningForMigrationCandidates];
    [(NetworkRelayAgent *)self->_networkRelayAgent removeDelegate:self];
    v4 = self->_networkRelayAgent;
    self->_networkRelayAgent = 0;
  }
}

- (void)sendMessageToAvailableWatchesWithInterval:(double)interval completion:(id)completion
{
  completionCopy = completion;
  migrator = [(EPMigrationAutoTrigger *)self migrator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007C1C0;
  v9[3] = &unk_1001782C8;
  intervalCopy = interval;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [migrator getNonAltAccountMigratableDeviceIDsWithBlock:v9];
}

- (id)_cloudIdentifierForDevice:(id)device
{
  v4 = _NRDevicePropertyMigrationIDSCloudIdentifier;
  deviceCopy = device;
  v6 = [deviceCopy objectForKeyedSubscript:v4];
  value = [v6 value];

  registry = [(EPMigrationAutoTrigger *)self registry];
  secureProperties = [registry secureProperties];
  v10 = [secureProperties objectForKeyedSubscript:value];

  v11 = [deviceCopy objectForKeyedSubscript:NRDevicePropertyPairingID];
  value2 = [v11 value];

  v13 = [deviceCopy objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];

  value3 = [v13 value];

  v15 = sub_1000034AC();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = sub_1000034AC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [value2 UUIDString];
      uUIDString2 = [value3 UUIDString];
      v21 = 138412802;
      v22 = uUIDString;
      v23 = 2112;
      v24 = uUIDString2;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "cloudIdentifierForDevice(pairingID=%@) btID=%@ IDSID=%@", &v21, 0x20u);
    }
  }

  return v10;
}

- (void)setLastMessageSendDate:(id)date forRawCloudIdentifiers:(id)identifiers
{
  dateCopy = date;
  identifiersCopy = identifiers;
  v8 = sub_1000034AC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = sub_1000034AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = dateCopy;
      v25 = 2112;
      v26 = identifiersCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setLastMessageSendDate: %@ for %@", buf, 0x16u);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = identifiersCopy;
  v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [NSString stringWithFormat:@"%@.%@", @"lastAdvertisingNotificationDate", *(*(&v18 + 1) + 8 * v14)];
        if (dateCopy)
        {
          [dateCopy timeIntervalSinceReferenceDate];
          v16 = [NSNumber numberWithDouble:?];
          [(NRPreferences *)self->_prefs setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          [(NRPreferences *)self->_prefs setObject:0 forKeyedSubscript:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [(NRPreferences *)self->_prefs synchronize];
}

- (void)resetAllMessageSendTimersWithCompletion:(id)completion
{
  completionCopy = completion;
  migrator = [(EPMigrationAutoTrigger *)self migrator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007CB08;
  v7[3] = &unk_1001782F0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [migrator getNonAltAccountMigratableDeviceIDsWithBlock:v7];
}

- (void)calculateNextMessageSendIntervalWithCompletion:(id)completion
{
  completionCopy = completion;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0xBFF0000000000000;
  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  migrator = [(EPMigrationAutoTrigger *)self migrator];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007CEEC;
  v10[3] = &unk_100178340;
  v13 = v7;
  v10[4] = self;
  v12 = v14;
  v9 = completionCopy;
  v11 = v9;
  [migrator getNonAltAccountMigratableDeviceIDsWithBlock:v10];

  _Block_object_dispose(v14, 8);
}

- (BOOL)hasMessageTimeIntervalExpired:(double)expired forCloudIdentifier:(id)identifier
{
  identifier = [NSString stringWithFormat:@"%@.%@", expired, @"lastAdvertisingNotificationDate", identifier];
  v6 = [(NRPreferences *)self->_prefs objectForKeyedSubscript:identifier];
  v7 = +[NSDate date];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v12 = 1;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v11 = v9 - v10;
      if (v11 < 86400.0 && v11 > 0.0)
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

- (void)sendMessageToWatchWithRawCloudIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[NSMutableSet set];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  cloud = [(EPMigrationAutoTrigger *)self cloud];
  deviceUniqueIdentifiers = [cloud deviceUniqueIdentifiers];

  v8 = [deviceUniqueIdentifiers countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(deviceUniqueIdentifiers);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([identifiersCopy containsObject:v11])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [deviceUniqueIdentifiers countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending migration advertising request to devices: %@", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    cloud2 = [(EPMigrationAutoTrigger *)self cloud];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10007D77C;
    v28[3] = &unk_100175A10;
    v28[4] = self;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10007D794;
    v25[3] = &unk_100178368;
    objc_copyWeak(&v27, buf);
    v25[4] = self;
    v26 = v5;
    [cloud2 sendMigrationRequestToDestinations:v26 shouldCancel:0 withSentBlock:v28 withResponseBlock:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else if ([identifiersCopy count])
  {
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001012A8();
      }
    }

    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1001012E4(self, v21);
      }
    }

    v22 = nr_daemon_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      v24 = nr_daemon_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100101398();
      }
    }
  }
}

+ (unint64_t)failureTypeWithError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing"])
    {
      code = [v4 code];

      if (code == 9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    domain2 = [v4 domain];
    if ([domain2 isEqualToString:@"com.apple.nanoregistry.saga.EPSagaTransactionPairing"])
    {
      code2 = [v4 code];

      if (code2 == 10)
      {
LABEL_9:
        v7 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    domain3 = [v4 domain];
    if ([domain3 isEqualToString:CBATTErrorDomain])
    {
      code3 = [v4 code];

      if (code3 != 3)
      {
        v7 = 2;
        goto LABEL_20;
      }
    }

    else
    {
    }

    domain4 = [v4 domain];
    v13 = [domain4 isEqualToString:@"com.apple.nanoregistry.saga.EPSagaTransactionPairIDSDevice"];

    if (v13)
    {
      v7 = 3;
    }

    else
    {
      domain5 = [v4 domain];
      v15 = [domain5 isEqualToString:@"com.apple.nanoregistry.EPMigrationAutoTrigger"];

      if (v15)
      {
        v7 = 4;
      }

      else
      {
        v7 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_20:

  return v7;
}

- (void)startMigrationOnMRUIfWatchWasFoundWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  displayableDevices = [(EPDiscoverer *)self->_discoverer displayableDevices];
  v8 = [displayableDevices countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(displayableDevices);
        }

        uuid = [*(*(&v32 + 1) + 8 * v11) uuid];
        [v5 addObject:uuid];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [displayableDevices countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = +[NetworkRelayAgent sharedInstance];
  migrationCandidates = [v13 migrationCandidates];

  v15 = [migrationCandidates countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(migrationCandidates);
        }

        [v6 addObject:*(*(&v28 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [migrationCandidates countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  migrator = [(EPMigrationAutoTrigger *)self migrator];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10007DC44;
  v23[3] = &unk_100178408;
  v24 = v5;
  v25 = v6;
  selfCopy = self;
  v27 = completionCopy;
  v20 = completionCopy;
  v21 = v6;
  v22 = v5;
  [migrator getNonAltAccountMigratableDeviceIDsWithBlock:v23];
}

- (void)startMigrationAfterTimeout:(double)timeout
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007EC14;
  v5[3] = &unk_100175520;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [(EPMigrationAutoTrigger *)self setTimerDuration:v5 withBlock:timeout];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)discoverer:(id)discoverer deviceDidBecomeDisplayable:(id)displayable
{
  if (!self->_aWatchWasDiscovered)
  {
    self->_aWatchWasDiscovered = 1;
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: A watch was discovered", v9, 2u);
      }
    }

    [(EPMigrationAutoTrigger *)self startMigrationOnMRUIfWatchWasFoundWithCompletion:0];
    discoverer = self->_discoverer;
    self->_discoverer = 0;
  }
}

- (void)isDevice:(id)device readyToMigrate:(id)migrate
{
  deviceCopy = device;
  migrateCopy = migrate;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [deviceCopy UUIDString];
      *buf = 136315394;
      v38 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]";
      v39 = 2114;
      v40 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %{public}@", buf, 0x16u);
    }
  }

  v12 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  idle = [v12 idle];
  currentTransactionPairingId = [v12 currentTransactionPairingId];
  v15 = nr_daemon_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = nr_daemon_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"NO";
      v38 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]";
      *buf = 136315650;
      if (idle)
      {
        v18 = @"YES";
      }

      v39 = 2114;
      v40 = v18;
      v41 = 2112;
      v42 = currentTransactionPairingId;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Is coordinator idle (%{public}@); Current Transaction Pairing Id (%@)", buf, 0x20u);
    }
  }

  if (currentTransactionPairingId)
  {
    v19 = idle;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && [v12 isCurrentRunningTransactionOfType:@"migration"] && objc_msgSend(deviceCopy, "isEqual:", currentTransactionPairingId))
  {
    v20 = nr_daemon_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = nr_daemon_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString2 = [deviceCopy UUIDString];
        *buf = 136315394;
        v38 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]";
        v39 = 2114;
        v40 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ NO- NanoRegistry has queued or running transactions for migrating this device. Not starting a new one.", buf, 0x16u);
      }
    }

    migrateCopy[2](migrateCopy, 5);
    goto LABEL_36;
  }

  if (idle)
  {
LABEL_23:
    registry = [(EPMigrationAutoTrigger *)self registry];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10007F2C4;
    v33[3] = &unk_1001773E8;
    v34 = deviceCopy;
    selfCopy = self;
    v36 = migrateCopy;
    [registry grabRegistryWithReadBlock:v33];

    goto LABEL_36;
  }

  if ([v12 isCurrentRunningTransactionOfType:@"reunionSync"])
  {
    if ([v12 isCurrentRunningTransactionOfType:@"reunionSync"])
    {
      v25 = nr_daemon_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v26)
      {
        v27 = nr_daemon_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          uUIDString3 = [deviceCopy UUIDString];
          *buf = 136315650;
          v38 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]";
          v39 = 2114;
          v40 = uUIDString3;
          v41 = 2114;
          v42 = currentTransactionPairingId;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ Current running transaction is of type reunion sync for %{public}@. Canceling it.", buf, 0x20u);
        }
      }

      [v12 cancelWithOperationType:@"reunionSync" error:0];
    }

    goto LABEL_23;
  }

  v29 = nr_daemon_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v31 = nr_daemon_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString4 = [deviceCopy UUIDString];
      *buf = 136315394;
      v38 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]";
      v39 = 2114;
      v40 = uUIDString4;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ NO- NanoRegistry has queued or running transactions.", buf, 0x16u);
    }
  }

  migrateCopy[2](migrateCopy, 3);
LABEL_36:
}

- (void)discoveredMigrationCandidateWithNetworkRelayIdentifier:(id)identifier
{
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: A NetworkRelay migration candidate was discovered", buf, 2u);
  }

  if (!self->_aWatchWasDiscovered)
  {
    self->_aWatchWasDiscovered = 1;
    v5 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: A NetworkRelay migration candidate was discovered", v6, 2u);
    }

    [(EPMigrationAutoTrigger *)self startMigrationOnMRUIfWatchWasFoundWithCompletion:0];
  }
}

@end