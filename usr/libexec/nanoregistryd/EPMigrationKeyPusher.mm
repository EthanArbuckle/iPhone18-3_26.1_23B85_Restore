@interface EPMigrationKeyPusher
+ (id)newService:(id)a3;
+ (id)prefsKeyForPairingID:(id)a3;
- (BOOL)isUIUnlocked;
- (BOOL)shouldConfirmKeyForWatch:(id)a3;
- (EPKeymaster)keymaster;
- (EPMigrationKeyPusher)initWithServiceRegistry:(id)a3;
- (NRKeychainSyncStatusManager)keychainSyncStatusManager;
- (NRRegistry)registry;
- (NRRemoteObjectClassA)keyChannel;
- (NRSecureDevicePropertyStore)secureProperties;
- (void)dealloc;
- (void)didConfirmKeyForWatch:(id)a3;
- (void)forceSecureBackup;
- (void)registerForNotifications;
- (void)sendMessageToWatch:(id)a3 withCompletion:(id)a4;
- (void)tagInBluetoothWatches:(id)a3 withCompletion:(id)a4;
- (void)unregisterForNotifications;
- (void)update;
@end

@implementation EPMigrationKeyPusher

+ (id)newService:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithServiceRegistry:v4];

  return v5;
}

- (NRRegistry)registry
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

- (NRKeychainSyncStatusManager)keychainSyncStatusManager
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (NRRemoteObjectClassA)keyChannel
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry optionalServiceFromClass:v3];
}

- (NRSecureDevicePropertyStore)secureProperties
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (EPMigrationKeyPusher)initWithServiceRegistry:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_serviceRegistry, a3);
  v6 = [(EPMigrationKeyPusher *)self init];
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
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Init", buf, 2u);
      }
    }

    v10 = [(EPMigrationKeyPusher *)v6 keychainSyncStatusManager];
    [v10 addObserver:v6];

    *&v6->_uiUnlockedNotifyToken = -1;
    v11 = [[NRPreferences alloc] initWithDomain:@"com.apple.nanoregistryd"];
    prefs = v6->_prefs;
    v6->_prefs = v11;

    objc_initWeak(buf, v6);
    lastActiveDeviceID = v6->_lastActiveDeviceID;
    v6->_lastActiveDeviceID = 0;

    v14 = [(EPMigrationKeyPusher *)v6 registry];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000159A4;
    v20[3] = &unk_100175D30;
    objc_copyWeak(&v21, buf);
    v15 = [v14 addDiffObserverWithWriteBlock:v20];

    v16 = +[NRQueue registryDaemonQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100015F44;
    v18[3] = &unk_100175660;
    v19 = v6;
    [v16 dispatchAsync:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  return v6;
}

- (void)registerForNotifications
{
  p_uiUnlockedNotifyToken = &self->_uiUnlockedNotifyToken;
  if (self->_uiUnlockedNotifyToken == -1)
  {
    v4 = +[NRQueue registryDaemonQueue];
    v5 = [v4 queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001616C;
    handler[3] = &unk_1001759E8;
    handler[4] = self;
    v6 = notify_register_dispatch("com.apple.springboard.lockstate", p_uiUnlockedNotifyToken, v5, handler);

    if (v6)
    {
      v7 = nr_daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (v8)
      {
        v9 = nr_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD5D8();
        }
      }
    }
  }

  if (self->_keybagNotifyToken == -1)
  {
    v10 = kMobileKeyBagLockStatusNotifyToken;
    v11 = +[NRQueue registryDaemonQueue];
    v12 = [v11 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100016208;
    v17[3] = &unk_1001759E8;
    v17[4] = self;
    v13 = notify_register_dispatch(v10, &self->_keybagNotifyToken, v12, v17);

    if (v13)
    {
      v14 = nr_daemon_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        v16 = nr_daemon_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD640();
        }
      }
    }
  }
}

- (void)unregisterForNotifications
{
  uiUnlockedNotifyToken = self->_uiUnlockedNotifyToken;
  if (uiUnlockedNotifyToken != -1)
  {
    notify_cancel(uiUnlockedNotifyToken);
    self->_uiUnlockedNotifyToken = -1;
  }

  keybagNotifyToken = self->_keybagNotifyToken;
  if (keybagNotifyToken != -1)
  {
    notify_cancel(keybagNotifyToken);
    self->_keybagNotifyToken = -1;
  }
}

- (BOOL)isUIUnlocked
{
  state64 = 0;
  uiUnlockedNotifyToken = self->_uiUnlockedNotifyToken;
  if (uiUnlockedNotifyToken != -1)
  {
    if (notify_get_state(uiUnlockedNotifyToken, &state64))
    {
      v3 = nr_daemon_log();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (v4)
      {
        v5 = nr_daemon_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD6A8();
        }
      }
    }
  }

  return state64 == 0;
}

- (void)dealloc
{
  [(EPMigrationKeyPusher *)self unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = EPMigrationKeyPusher;
  [(EPMigrationKeyPusher *)&v3 dealloc];
}

- (void)sendMessageToWatch:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPKey *)self->_key key];
  v9 = sub_1000FDEB0(v8);

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(EPMigrationKeyPusher *)self keyChannel];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [(EPMigrationKeyPusher *)self keyChannel];
  v13 = [v12 defaultPairedDevice];
  v14 = [v13 isConnected];

  if (v14)
  {
    v15 = sub_1000034AC();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = sub_1000034AC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v9 SHA256Data];
        v19 = [v18 base64EncodedStringWithOptions:0];
        v20 = [v19 substringToIndex:6];
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: sendKeyWithRemoteObject sending key data digest %@", buf, 0xCu);
      }
    }

    v21 = [(EPMigrationKeyPusher *)self keyChannel];
    v22 = [(EPKey *)self->_key key];
    v23 = sub_1000FDEC4(v22);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000166A8;
    v27[3] = &unk_100175D80;
    v27[4] = self;
    v28 = v6;
    v29 = v7;
    [v21 sendMigrationSetKeyRequestToBTUUID:v28 withKey:v9 withRevision:v23 withResponseBlock:v27];
  }

  else
  {
LABEL_9:
    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      v26 = nr_daemon_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD710(v9 == 0, self, v26);
      }
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

+ (id)prefsKeyForPairingID:(id)a3
{
  v3 = [a3 UUIDString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"none";
  }

  v6 = [@"migrationKeyCheckDate." stringByAppendingString:v5];

  return v6;
}

- (BOOL)shouldConfirmKeyForWatch:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [EPMigrationKeyPusher prefsKeyForPairingID:?];
  v5 = [(NRPreferences *)self->_prefs objectForKeyedSubscript:v4];
  if (!v5)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  [v5 doubleValue];
  v7 = v6;
  v8 = +[NSDate date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = v7 - v10 + 86400.0;
  if (v11 < -86400.0)
  {
    goto LABEL_7;
  }

  if (v11 < 86400.0)
  {
    v12 = 0;
  }

  else
  {
LABEL_7:
    v12 = 1;
  }

  return v12;
}

- (void)didConfirmKeyForWatch:(id)a3
{
  v6 = [EPMigrationKeyPusher prefsKeyForPairingID:a3];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  [(NRPreferences *)self->_prefs setObject:v5 forKeyedSubscript:v6];

  [(NRPreferences *)self->_prefs synchronize];
}

- (void)update
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Update called!", buf, 2u);
    }
  }

  v6 = [(EPMigrationKeyPusher *)self isUIUnlocked];
  v7 = v6 && !self->_wasUIUnlocked;
  self->_wasUIUnlocked = v6;
  v35 = @"ExtendedDeviceLockState";
  v36 = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v8 = MKBGetDeviceLockState();
  v9 = 0;
  v10 = v8 == 3;
  if (v8 > 7)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    if (((1 << v8) & 0xC1) != 0)
    {
      v11 = !self->_wasUnlocked;
      v9 = 1;
    }
  }

  self->_wasUnlocked = v9;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = sub_100016D94;
  v25 = sub_100016DA4;
  v26 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100016D94;
  v19[4] = sub_100016DA4;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100016D94;
  v17[4] = sub_100016DA4;
  v18 = [NROSTransaction transactionWithName:@"migrationKeyPusher"];
  v12 = [(EPMigrationKeyPusher *)self registry];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100016DAC;
  v13[3] = &unk_100175DF8;
  v13[6] = buf;
  v13[7] = v31;
  v13[4] = self;
  v13[5] = v33;
  v13[8] = v27;
  v13[9] = v29;
  v14 = v10;
  v15 = v7;
  v16 = v11;
  v13[10] = v19;
  v13[11] = v17;
  [v12 grabRegistryWithReadBlock:v13];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

- (void)tagInBluetoothWatches:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    objc_initWeak(&location, self);
    if (!self->_transactionForBackup)
    {
      v8 = [NROSTransaction transactionWithName:@"secureBackupTransaction"];
      transactionForBackup = self->_transactionForBackup;
      self->_transactionForBackup = v8;
    }

    v10 = [EPPeripheralProcessor alloc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100017910;
    v11[3] = &unk_100175E60;
    objc_copyWeak(&v13, &location);
    v12 = v7;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

- (void)forceSecureBackup
{
  secureBackupManager = self->_secureBackupManager;
  v4 = nr_daemon_log();
  v5 = v4;
  if (secureBackupManager)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD82C(v7);
      }
    }
  }

  else
  {
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Forcing secure backup", buf, 2u);
      }
    }

    v10 = objc_opt_new();
    v11 = self->_secureBackupManager;
    self->_secureBackupManager = v10;

    v12 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017B48;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(v12, block);
  }
}

@end