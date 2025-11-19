@interface SDDeviceAssetMonitor
+ (SDDeviceAssetMonitor)sharedAssetMonitor;
- (NSString)state;
- (SDDeviceAssetMonitor)init;
- (id)queryForBluetoothDevice:(id)a3;
- (os_state_data_s)stateDump;
- (void)activateIfReady;
- (void)addObservers;
- (void)bluetoothDevicePaired:(id)a3;
- (void)bluetoothDeviceUnpaired:(id)a3;
- (void)downloadAssetsForQuery:(id)a3;
- (void)setUpBluetoothDeviceMonitor;
- (void)triggerAssetCleanupWithBluetoothDeviceRemoved:(id)a3;
@end

@implementation SDDeviceAssetMonitor

- (os_state_data_s)stateDump
{
  v3 = asset_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dumping state", buf, 2u);
  }

  NSAppendPrintF();
  v4 = 0;
  v5 = [(SDDeviceAssetMonitor *)self state];
  if (v5)
  {
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  if (v4)
  {
    v7 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:0];
    v8 = [v7 length];
    v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    v10 = v9;
    if (v9)
    {
      v9->var0 = 1;
      v9->var1.var1 = v8;
      __strlcpy_chk();
      memcpy(v10->var4, [v7 bytes], v8);
    }
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

  return v10;
}

- (NSString)state
{
  v28 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF();
  v5 = 0;

  v27 = v5;
  v18 = objc_opt_new();
  NSAppendPrintF();
  v6 = v5;

  v7 = [(SFDeviceAssetManager *)self->_deviceAssetManager networkStatus];

  if (v7)
  {
    v26 = v6;
    v19 = [(SFDeviceAssetManager *)self->_deviceAssetManager networkStatus];
    NSAppendPrintF();
    v8 = v6;

    v6 = v8;
  }

  v25 = v6;
  NSAppendPrintF();
  v9 = v6;

  if ([(NSMutableSet *)self->_tasks count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = self->_tasks;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        v15 = v9;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v20 = *(*(&v21 + 1) + 8 * v14);
          NSAppendPrintF();
          v9 = v15;

          v14 = v14 + 1;
          v15 = v9;
        }

        while (v12 != v14);
        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v29 count:16, v20];
      }

      while (v12);
    }
  }

  else
  {
    NSAppendPrintF();
    v10 = v9;
    v9 = v9;
  }

  NSAppendPrintF();
  v16 = v9;

  return &v9->super.super.isa;
}

+ (SDDeviceAssetMonitor)sharedAssetMonitor
{
  if (qword_100989A60 != -1)
  {
    sub_10008D378();
  }

  v3 = qword_100989A58;

  return v3;
}

- (SDDeviceAssetMonitor)init
{
  v12.receiver = self;
  v12.super_class = SDDeviceAssetMonitor;
  v2 = [(SDDeviceAssetMonitor *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tasks = v2->_tasks;
    v2->_tasks = v3;

    v5 = objc_opt_new();
    bluetoothDevices = v2->_bluetoothDevices;
    v2->_bluetoothDevices = v5;

    v7 = objc_opt_new();
    deviceAssetManager = v2->_deviceAssetManager;
    v2->_deviceAssetManager = v7;

    v9 = objc_opt_new();
    systemMonitor = v2->_systemMonitor;
    v2->_systemMonitor = v9;

    [(SDDeviceAssetMonitor *)v2 addObservers];
  }

  return v2;
}

- (void)activateIfReady
{
  v3 = asset_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SDDeviceAssetMonitor activateIfReady]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  if (!self->_activated)
  {
    if ([(CUSystemMonitor *)self->_systemMonitor firstUnlocked])
    {
      self->_activated = 1;
      [(SFDeviceAssetManager *)self->_deviceAssetManager activate];
      [(SDDeviceAssetMonitor *)self setUpBluetoothDeviceMonitor];
      [(CUSystemMonitor *)self->_systemMonitor invalidate];
      systemMonitor = self->_systemMonitor;
      self->_systemMonitor = 0;
    }
  }
}

- (void)addObservers
{
  location[1] = _NSConcreteStackBlock;
  location[2] = 3221225472;
  location[3] = sub_10001B044;
  location[4] = &unk_1008CE488;
  location[5] = self;
  self->_stateHandle = os_state_add_handler();
  objc_initWeak(location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008C564;
  v6[3] = &unk_1008CDD98;
  objc_copyWeak(&v7, location);
  [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v6];
  systemMonitor = self->_systemMonitor;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008C5A4;
  v4[3] = &unk_1008CDD98;
  objc_copyWeak(&v5, location);
  [(CUSystemMonitor *)systemMonitor activateWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(location);
}

- (void)setUpBluetoothDeviceMonitor
{
  v3 = objc_opt_new();
  bluetoothClient = self->_bluetoothClient;
  self->_bluetoothClient = v3;

  [(CUBluetoothClient *)self->_bluetoothClient setFlags:1];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008C744;
  v7[3] = &unk_1008CE4B0;
  objc_copyWeak(&v8, &location);
  [(CUBluetoothClient *)self->_bluetoothClient setDevicePairedHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008C7A0;
  v5[3] = &unk_1008CE4B0;
  objc_copyWeak(&v6, &location);
  [(CUBluetoothClient *)self->_bluetoothClient setDeviceUnpairedHandler:v5];
  [(CUBluetoothClient *)self->_bluetoothClient activate];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)queryForBluetoothDevice:(id)a3
{
  v3 = a3;
  v4 = [SFDeviceAssetQuery alloc];
  v5 = [v3 productIdentifier];
  v6 = [v3 colorCode];

  v7 = [v4 initWithBluetoothProductIdentifier:v5 color:v6];

  return v7;
}

- (void)bluetoothDevicePaired:(id)a3
{
  v4 = a3;
  v5 = asset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SDDeviceAssetMonitor bluetoothDevicePaired:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  if ([v4 supportsAACPService])
  {
    [(NSMutableSet *)self->_bluetoothDevices addObject:v4];
    v6 = [(SDDeviceAssetMonitor *)self queryForBluetoothDevice:v4];
    [(SDDeviceAssetMonitor *)self downloadAssetsForQuery:v6];
  }

  else
  {
    v6 = asset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[SDDeviceAssetMonitor bluetoothDevicePaired:]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ignoring %@", &v7, 0x16u);
    }
  }
}

- (void)bluetoothDeviceUnpaired:(id)a3
{
  v4 = a3;
  v5 = asset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SDDeviceAssetMonitor bluetoothDeviceUnpaired:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  if ([(NSMutableSet *)self->_bluetoothDevices containsObject:v4])
  {
    [(NSMutableSet *)self->_bluetoothDevices removeObject:v4];
    [(SDDeviceAssetMonitor *)self triggerAssetCleanupWithBluetoothDeviceRemoved:v4];
  }

  else
  {
    v6 = asset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[SDDeviceAssetMonitor bluetoothDeviceUnpaired:]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ignoring %@", &v7, 0x16u);
    }
  }
}

- (void)triggerAssetCleanupWithBluetoothDeviceRemoved:(id)a3
{
  v4 = a3;
  v5 = [(SDDeviceAssetMonitor *)self queryForBluetoothDevice:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_bluetoothDevices;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(SDDeviceAssetMonitor *)self queryForBluetoothDevice:v11, v15];
        if ([v12 isEqual:v5])
        {
          v14 = asset_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v20 = v4;
            v21 = 2112;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "assets for removed device %@ is still needed by %@", buf, 0x16u);
          }

          goto LABEL_15;
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = asset_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "cleaning up assets for removed device %@", buf, 0xCu);
  }

  [(SFDeviceAssetManager *)self->_deviceAssetManager purgeAssetsMatchingQuery:v5];
LABEL_15:
}

- (void)downloadAssetsForQuery:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  [v5 setDate:v6];

  [v5 setQuery:v4];
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableSet *)v7->_tasks addObject:v5];
  objc_sync_exit(v7);

  v8 = [SFDeviceAssetRequestConfiguration alloc];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10008CEA4;
  v15 = &unk_1008CE4D8;
  v16 = v4;
  v17 = v5;
  v9 = v5;
  v10 = v4;
  v11 = [v8 initWithQueryResultHandler:&v12];
  [v11 setTimeout:{9999.0, v12, v13, v14, v15}];
  [(SFDeviceAssetManager *)v7->_deviceAssetManager getAssetBundleForDeviceQuery:v10 withRequestConfiguration:v11];
}

@end