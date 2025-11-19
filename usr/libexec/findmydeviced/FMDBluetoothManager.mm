@interface FMDBluetoothManager
- (BOOL)_cbPoweredOff;
- (BOOL)isDiscoveryActive;
- (FMDBluetoothManager)initWithMockBluetoothManager:(id)a3;
- (FMDBluetoothManagerDelegate)delegate;
- (id)_bluetoothManagerDeviceForBluetoothDevice:(id)a3;
- (id)bluetoothDeviceForBLEDevice:(id)a3;
- (id)bluetoothManagerDeviceForBluetoothDevice:(id)a3;
- (id)newDiscovery;
- (void)connectToDeviceAddress:(id)a3;
- (void)dealloc;
- (void)getAccessoriesWithCompletion:(id)a3;
- (void)setAllAudioChannelsActive:(BOOL)a3;
- (void)setInternalDeviceAudioChannels:(id)a3 profile:(int64_t)a4 active:(BOOL)a5;
- (void)setupDiscovery;
- (void)startMonitoringDevices;
- (void)updateBeaconsWithDevice:(id)a3 active:(BOOL)a4;
@end

@implementation FMDBluetoothManager

- (FMDBluetoothManager)initWithMockBluetoothManager:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FMDBluetoothManager;
  v5 = [(FMDBluetoothManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    [(FMDBluetoothManager *)v5 setMockBluetoothManager:v4];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.icloud.findmydeviced.bluetoothdiscoveryqueue", v7);
    [(FMDBluetoothManager *)v6 setBluetoothDiscoveryQueue:v8];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.icloud.findmydeviced.bluetoothManagerQueue", v9);
    [(FMDBluetoothManager *)v6 setBluetoothManagerQueue:v10];

    v11 = [FMQueueSynchronizer alloc];
    v12 = [(FMDBluetoothManager *)v6 bluetoothManagerQueue];
    v13 = [v11 initWithQueue:v12];
    [(FMDBluetoothManager *)v6 setBluetoothManagerQueueSynchronizer:v13];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.icloud.findmydeviced.bluetoothManagerAccessoriesQueue", v14);
    [(FMDBluetoothManager *)v6 setAccessoriesQueue:v15];

    v16 = +[NSMutableDictionary dictionary];
    [(FMDBluetoothManager *)v6 setBluetoothManagerDevicesByAddress:v16];

    v17 = objc_alloc_init(CBController);
    btController = v6->_btController;
    v6->_btController = v17;

    [(FMDBluetoothManager *)v6 setupDiscovery];
    [(FMDBluetoothManager *)v6 startMonitoringDevices];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(FMDBluetoothManager *)self btDiscovery];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = FMDBluetoothManager;
  [(FMDBluetoothManager *)&v4 dealloc];
}

- (void)connectToDeviceAddress:(id)a3
{
  v4 = a3;
  v5 = [(FMDBluetoothManager *)self bluetoothManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001846F4;
  block[3] = &unk_1002CD4C8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (id)newDiscovery
{
  v2 = [(FMDBluetoothManager *)self discoveryCoordinator];
  v3 = [v2 newDiscovery];

  return v3;
}

- (BOOL)isDiscoveryActive
{
  v2 = [(FMDBluetoothManager *)self discoveryCoordinator];
  v3 = [v2 isDiscoveryActive];

  return v3;
}

- (void)getAccessoriesWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_10000AA64;
  v10[4] = sub_100002AFC;
  v11 = 0;
  v5 = [(FMDBluetoothManager *)self bluetoothManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184BE4;
  block[3] = &unk_1002CFCA0;
  block[4] = self;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(v5, block);

  _Block_object_dispose(v10, 8);
}

- (BOOL)_cbPoweredOff
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(FMDBluetoothManager *)self btController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001856D0;
  v10[3] = &unk_1002CFCC8;
  v12 = &v13;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  [v4 getControllerInfoWithCompletion:v10];

  v6 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v5, v6))
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022B684();
    }
  }

  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)startMonitoringDevices
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BluetoothManager startWatchingForDevices", buf, 2u);
  }

  v4 = objc_alloc_init(CBDiscovery);
  [(FMDBluetoothManager *)self setBtDiscovery:v4];

  v5 = [(FMDBluetoothManager *)self btDiscovery];
  [v5 setLabel:@"FMDBluetoothManager"];

  v6 = [(FMDBluetoothManager *)self btDiscovery];
  [v6 setDiscoveryFlags:0x80000200000];

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018599C;
  v12[3] = &unk_1002CFCF0;
  objc_copyWeak(&v13, buf);
  v7 = [(FMDBluetoothManager *)self btDiscovery];
  [v7 setDeviceFoundHandler:v12];

  objc_copyWeak(&v11, buf);
  v8 = [(FMDBluetoothManager *)self btDiscovery:_NSConcreteStackBlock];
  [v8 setDeviceLostHandler:&v10];

  v9 = [(FMDBluetoothManager *)self btDiscovery];
  [v9 activateWithCompletion:&stru_1002CFD10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

- (void)setupDiscovery
{
  v3 = objc_alloc_init(FMDBluetoothDiscoveryXPCProxy);
  v4 = [[FMDBluetoothDiscoveryCoordinator alloc] initWithDiscovery:v3];
  [(FMDBluetoothManager *)self setDiscoveryCoordinator:v4];

  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100186640;
  v15[3] = &unk_1002CFD38;
  objc_copyWeak(&v16, &location);
  v5 = [(FMDBluetoothManager *)self discoveryCoordinator];
  [v5 setDidDiscoverDevice:v15];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001867B0;
  v13[3] = &unk_1002CFD38;
  objc_copyWeak(&v14, &location);
  v6 = [(FMDBluetoothManager *)self discoveryCoordinator];
  [v6 setDidLoseDevice:v13];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100186920;
  v11[3] = &unk_1002CFD60;
  objc_copyWeak(&v12, &location);
  v7 = [(FMDBluetoothManager *)self discoveryCoordinator];
  [v7 setDidEndDiscovery:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100186A34;
  v9[3] = &unk_1002CD518;
  objc_copyWeak(&v10, &location);
  v8 = [(FMDBluetoothManager *)self discoveryCoordinator];
  [v8 setDidStartDiscovery:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)setAllAudioChannelsActive:(BOOL)a3
{
  v5 = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(FMDBluetoothManager *)self bluetoothManagerDevicesByAddress];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100186BF8;
  v7[3] = &unk_1002CFD88;
  v7[4] = self;
  v8 = a3;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)setInternalDeviceAudioChannels:(id)a3 profile:(int64_t)a4 active:(BOOL)a5
{
  v8 = a3;
  v9 = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(FMDBluetoothManager *)self supportedAccessoryRegistry];
  v11 = [v10 channelNamesForProfile:a4];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100186E48;
  v19 = &unk_1002CFDB0;
  v21 = a5;
  v12 = v8;
  v20 = v12;
  [v11 enumerateObjectsUsingBlock:&v16];
  v13 = sub_100002880();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_self();
    *buf = 134217984;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDBluetoothManager setInternalDeviceAudioChannels FMDInternalBluetoothManagerDevice(0x%lX)", buf, 0xCu);
  }

  v15 = [(FMDBluetoothManager *)self delegate:v16];
  [v15 bluetoothManagerDidUpdateDevice:v12];
}

- (void)updateBeaconsWithDevice:(id)a3 active:(BOOL)a4
{
  v6 = a3;
  v7 = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(FMDBluetoothManager *)self bluetoothDeviceForBLEDevice:v6];
  v9 = [(FMDBluetoothManager *)self _bluetoothManagerDeviceForBluetoothDevice:v8];
  v10 = [v9 bluetoothDevice];
  v11 = [v10 vendorID];
  v12 = [v9 bluetoothDevice];
  v13 = -[FMDBluetoothManager profileWithVendorID:productID:](self, "profileWithVendorID:productID:", v11, [v12 productID]);

  v14 = [FMDBLEAudioAdvertisementParser configurationDictWithBleDevice:v6 supportedAccessoryProfile:v13];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100187054;
  v20 = &unk_1002CFDD8;
  v22 = a4;
  v21 = v9;
  v15 = v9;
  [v14 enumerateKeysAndObjectsUsingBlock:&v17];
  v16 = [(FMDBluetoothManager *)self delegate:v17];
  [v16 bluetoothManagerDidUpdateDevice:v15];
}

- (id)bluetoothDeviceForBLEDevice:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AA64;
  v16 = sub_100002AFC;
  v17 = 0;
  v5 = [(FMDBluetoothManager *)self bluetoothManagerQueueSynchronizer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100187248;
  v9[3] = &unk_1002CE5F0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 conditionalSync:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)bluetoothManagerDeviceForBluetoothDevice:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AA64;
  v16 = sub_100002AFC;
  v17 = 0;
  v5 = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100187570;
  block[3] = &unk_1002CDA70;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_bluetoothManagerDeviceForBluetoothDevice:(id)a3
{
  v4 = a3;
  v5 = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = -[FMDBluetoothManager profileWithVendorID:productID:](self, "profileWithVendorID:productID:", [v4 vendorID], objc_msgSend(v4, "productID"));
  v7 = [v4 btAddressData];
  v8 = [v7 fm_MACAddressString];

  if (!v8 || (-[FMDBluetoothManager bluetoothManagerDevicesByAddress](self, "bluetoothManagerDevicesByAddress"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKeyedSubscript:v8], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = objc_alloc_init(FMDInternalBluetoothManagerDevice);
    [(FMDBluetoothManager *)self setInternalDeviceAudioChannels:v10 profile:v6 active:0];
    if (v8)
    {
      v11 = [(FMDBluetoothManager *)self bluetoothManagerDevicesByAddress];
      [v11 setObject:v10 forKey:v8];
    }
  }

  [(FMDInternalBluetoothManagerDevice *)v10 setBluetoothDevice:v4];
  v12 = [(FMDBluetoothManager *)self supportedAccessoryRegistry];
  v13 = [v12 advertisementStatusKeyForProfile:v6];
  [(FMDInternalBluetoothManagerDevice *)v10 setAdvertisementStatusKey:v13];

  return v10;
}

- (FMDBluetoothManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end