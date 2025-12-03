@interface FMDBluetoothManager
- (BOOL)_cbPoweredOff;
- (BOOL)isDiscoveryActive;
- (FMDBluetoothManager)initWithMockBluetoothManager:(id)manager;
- (FMDBluetoothManagerDelegate)delegate;
- (id)_bluetoothManagerDeviceForBluetoothDevice:(id)device;
- (id)bluetoothDeviceForBLEDevice:(id)device;
- (id)bluetoothManagerDeviceForBluetoothDevice:(id)device;
- (id)newDiscovery;
- (void)connectToDeviceAddress:(id)address;
- (void)dealloc;
- (void)getAccessoriesWithCompletion:(id)completion;
- (void)setAllAudioChannelsActive:(BOOL)active;
- (void)setInternalDeviceAudioChannels:(id)channels profile:(int64_t)profile active:(BOOL)active;
- (void)setupDiscovery;
- (void)startMonitoringDevices;
- (void)updateBeaconsWithDevice:(id)device active:(BOOL)active;
@end

@implementation FMDBluetoothManager

- (FMDBluetoothManager)initWithMockBluetoothManager:(id)manager
{
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = FMDBluetoothManager;
  v5 = [(FMDBluetoothManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    [(FMDBluetoothManager *)v5 setMockBluetoothManager:managerCopy];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.icloud.findmydeviced.bluetoothdiscoveryqueue", v7);
    [(FMDBluetoothManager *)v6 setBluetoothDiscoveryQueue:v8];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.icloud.findmydeviced.bluetoothManagerQueue", v9);
    [(FMDBluetoothManager *)v6 setBluetoothManagerQueue:v10];

    v11 = [FMQueueSynchronizer alloc];
    bluetoothManagerQueue = [(FMDBluetoothManager *)v6 bluetoothManagerQueue];
    v13 = [v11 initWithQueue:bluetoothManagerQueue];
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
  btDiscovery = [(FMDBluetoothManager *)self btDiscovery];
  [btDiscovery invalidate];

  v4.receiver = self;
  v4.super_class = FMDBluetoothManager;
  [(FMDBluetoothManager *)&v4 dealloc];
}

- (void)connectToDeviceAddress:(id)address
{
  addressCopy = address;
  bluetoothManagerQueue = [(FMDBluetoothManager *)self bluetoothManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001846F4;
  block[3] = &unk_1002CD4C8;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(bluetoothManagerQueue, block);
}

- (id)newDiscovery
{
  discoveryCoordinator = [(FMDBluetoothManager *)self discoveryCoordinator];
  newDiscovery = [discoveryCoordinator newDiscovery];

  return newDiscovery;
}

- (BOOL)isDiscoveryActive
{
  discoveryCoordinator = [(FMDBluetoothManager *)self discoveryCoordinator];
  isDiscoveryActive = [discoveryCoordinator isDiscoveryActive];

  return isDiscoveryActive;
}

- (void)getAccessoriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_10000AA64;
  v10[4] = sub_100002AFC;
  v11 = 0;
  bluetoothManagerQueue = [(FMDBluetoothManager *)self bluetoothManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100184BE4;
  block[3] = &unk_1002CFCA0;
  block[4] = self;
  v8 = completionCopy;
  v9 = v10;
  v6 = completionCopy;
  dispatch_async(bluetoothManagerQueue, block);

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
  btController = [(FMDBluetoothManager *)self btController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001856D0;
  v10[3] = &unk_1002CFCC8;
  v12 = &v13;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  [btController getControllerInfoWithCompletion:v10];

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

  btDiscovery = [(FMDBluetoothManager *)self btDiscovery];
  [btDiscovery setLabel:@"FMDBluetoothManager"];

  btDiscovery2 = [(FMDBluetoothManager *)self btDiscovery];
  [btDiscovery2 setDiscoveryFlags:0x80000200000];

  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018599C;
  v12[3] = &unk_1002CFCF0;
  objc_copyWeak(&v13, buf);
  btDiscovery3 = [(FMDBluetoothManager *)self btDiscovery];
  [btDiscovery3 setDeviceFoundHandler:v12];

  objc_copyWeak(&v11, buf);
  v8 = [(FMDBluetoothManager *)self btDiscovery:_NSConcreteStackBlock];
  [v8 setDeviceLostHandler:&v10];

  btDiscovery4 = [(FMDBluetoothManager *)self btDiscovery];
  [btDiscovery4 activateWithCompletion:&stru_1002CFD10];

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
  discoveryCoordinator = [(FMDBluetoothManager *)self discoveryCoordinator];
  [discoveryCoordinator setDidDiscoverDevice:v15];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001867B0;
  v13[3] = &unk_1002CFD38;
  objc_copyWeak(&v14, &location);
  discoveryCoordinator2 = [(FMDBluetoothManager *)self discoveryCoordinator];
  [discoveryCoordinator2 setDidLoseDevice:v13];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100186920;
  v11[3] = &unk_1002CFD60;
  objc_copyWeak(&v12, &location);
  discoveryCoordinator3 = [(FMDBluetoothManager *)self discoveryCoordinator];
  [discoveryCoordinator3 setDidEndDiscovery:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100186A34;
  v9[3] = &unk_1002CD518;
  objc_copyWeak(&v10, &location);
  discoveryCoordinator4 = [(FMDBluetoothManager *)self discoveryCoordinator];
  [discoveryCoordinator4 setDidStartDiscovery:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)setAllAudioChannelsActive:(BOOL)active
{
  bluetoothDiscoveryQueue = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(bluetoothDiscoveryQueue);

  bluetoothManagerDevicesByAddress = [(FMDBluetoothManager *)self bluetoothManagerDevicesByAddress];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100186BF8;
  v7[3] = &unk_1002CFD88;
  v7[4] = self;
  activeCopy = active;
  [bluetoothManagerDevicesByAddress enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)setInternalDeviceAudioChannels:(id)channels profile:(int64_t)profile active:(BOOL)active
{
  channelsCopy = channels;
  bluetoothDiscoveryQueue = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(bluetoothDiscoveryQueue);

  supportedAccessoryRegistry = [(FMDBluetoothManager *)self supportedAccessoryRegistry];
  v11 = [supportedAccessoryRegistry channelNamesForProfile:profile];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100186E48;
  v19 = &unk_1002CFDB0;
  activeCopy = active;
  v12 = channelsCopy;
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

- (void)updateBeaconsWithDevice:(id)device active:(BOOL)active
{
  deviceCopy = device;
  bluetoothDiscoveryQueue = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(bluetoothDiscoveryQueue);

  v8 = [(FMDBluetoothManager *)self bluetoothDeviceForBLEDevice:deviceCopy];
  v9 = [(FMDBluetoothManager *)self _bluetoothManagerDeviceForBluetoothDevice:v8];
  bluetoothDevice = [v9 bluetoothDevice];
  vendorID = [bluetoothDevice vendorID];
  bluetoothDevice2 = [v9 bluetoothDevice];
  v13 = -[FMDBluetoothManager profileWithVendorID:productID:](self, "profileWithVendorID:productID:", vendorID, [bluetoothDevice2 productID]);

  v14 = [FMDBLEAudioAdvertisementParser configurationDictWithBleDevice:deviceCopy supportedAccessoryProfile:v13];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100187054;
  v20 = &unk_1002CFDD8;
  activeCopy = active;
  v21 = v9;
  v15 = v9;
  [v14 enumerateKeysAndObjectsUsingBlock:&v17];
  v16 = [(FMDBluetoothManager *)self delegate:v17];
  [v16 bluetoothManagerDidUpdateDevice:v15];
}

- (id)bluetoothDeviceForBLEDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AA64;
  v16 = sub_100002AFC;
  v17 = 0;
  bluetoothManagerQueueSynchronizer = [(FMDBluetoothManager *)self bluetoothManagerQueueSynchronizer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100187248;
  v9[3] = &unk_1002CE5F0;
  v6 = deviceCopy;
  v10 = v6;
  v11 = &v12;
  [bluetoothManagerQueueSynchronizer conditionalSync:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)bluetoothManagerDeviceForBluetoothDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000AA64;
  v16 = sub_100002AFC;
  v17 = 0;
  bluetoothDiscoveryQueue = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100187570;
  block[3] = &unk_1002CDA70;
  v10 = deviceCopy;
  v11 = &v12;
  block[4] = self;
  v6 = deviceCopy;
  dispatch_sync(bluetoothDiscoveryQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_bluetoothManagerDeviceForBluetoothDevice:(id)device
{
  deviceCopy = device;
  bluetoothDiscoveryQueue = [(FMDBluetoothManager *)self bluetoothDiscoveryQueue];
  dispatch_assert_queue_V2(bluetoothDiscoveryQueue);

  v6 = -[FMDBluetoothManager profileWithVendorID:productID:](self, "profileWithVendorID:productID:", [deviceCopy vendorID], objc_msgSend(deviceCopy, "productID"));
  btAddressData = [deviceCopy btAddressData];
  fm_MACAddressString = [btAddressData fm_MACAddressString];

  if (!fm_MACAddressString || (-[FMDBluetoothManager bluetoothManagerDevicesByAddress](self, "bluetoothManagerDevicesByAddress"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKeyedSubscript:fm_MACAddressString], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = objc_alloc_init(FMDInternalBluetoothManagerDevice);
    [(FMDBluetoothManager *)self setInternalDeviceAudioChannels:v10 profile:v6 active:0];
    if (fm_MACAddressString)
    {
      bluetoothManagerDevicesByAddress = [(FMDBluetoothManager *)self bluetoothManagerDevicesByAddress];
      [bluetoothManagerDevicesByAddress setObject:v10 forKey:fm_MACAddressString];
    }
  }

  [(FMDInternalBluetoothManagerDevice *)v10 setBluetoothDevice:deviceCopy];
  supportedAccessoryRegistry = [(FMDBluetoothManager *)self supportedAccessoryRegistry];
  v13 = [supportedAccessoryRegistry advertisementStatusKeyForProfile:v6];
  [(FMDInternalBluetoothManagerDevice *)v10 setAdvertisementStatusKey:v13];

  return v10;
}

- (FMDBluetoothManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end