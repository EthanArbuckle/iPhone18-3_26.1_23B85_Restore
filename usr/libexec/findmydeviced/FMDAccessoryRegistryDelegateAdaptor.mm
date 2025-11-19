@interface FMDAccessoryRegistryDelegateAdaptor
- (FMDAccessoryRegistryDelegateAdaptor)initWithAccessoryRegistry:(id)a3;
- (void)beaconsChanged;
- (void)bluetoothManagerDidConnectDevice:(id)a3;
- (void)bluetoothManagerDidDisconnectDevice:(id)a3;
- (void)bluetoothManagerDidUnpairDevice:(id)a3;
- (void)bluetoothManagerDidUpdateDevice:(id)a3;
- (void)companionRegistryDidUpdateAccessories:(id)a3;
@end

@implementation FMDAccessoryRegistryDelegateAdaptor

- (FMDAccessoryRegistryDelegateAdaptor)initWithAccessoryRegistry:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMDAccessoryRegistryDelegateAdaptor;
  v5 = [(FMDAccessoryRegistryDelegateAdaptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDAccessoryRegistryDelegateAdaptor *)v5 setRegistry:v4];
  }

  return v6;
}

- (void)companionRegistryDidUpdateAccessories:(id)a3
{
  v3 = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
  [v3 reloadData];
}

- (void)bluetoothManagerDidConnectDevice:(id)a3
{
  v4 = a3;
  if ([v4 isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidConnectDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:v4];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FMDBluetoothAccessory *)v5 accessoryIdentifier];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidConnectDevice %@", &v9, 0xCu);
    }

    v8 = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [v8 updateAccessory:v5];
  }
}

- (void)bluetoothManagerDidDisconnectDevice:(id)a3
{
  v4 = a3;
  if ([v4 isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidDisconnectDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:v4];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FMDBluetoothAccessory *)v5 accessoryIdentifier];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidDisconnectDevice %@", &v9, 0xCu);
    }

    v8 = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [v8 updateAccessory:v5];
  }
}

- (void)bluetoothManagerDidUnpairDevice:(id)a3
{
  v4 = a3;
  if ([v4 isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidUnpairDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:v4];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FMDBluetoothAccessory *)v5 accessoryIdentifier];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidUnpairDevice %@", &v9, 0xCu);
    }

    v8 = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [v8 removeAccessory:v5];
  }
}

- (void)bluetoothManagerDidUpdateDevice:(id)a3
{
  v4 = a3;
  if ([v4 isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidUpdateDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:v4];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FMDBluetoothAccessory *)v5 name];
      v9 = 138412802;
      v10 = v7;
      v11 = 1024;
      v12 = [(FMDBluetoothAccessory *)v5 vendorID];
      v13 = 1024;
      v14 = [(FMDBluetoothAccessory *)v5 productID];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistryDelegateAdaptor bluetoothManagerDidUpdateDevice device (name: %@, vendorID: %d, productID: %d)", &v9, 0x18u);
    }

    v8 = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [v8 updateAccessory:v5];
  }
}

- (void)beaconsChanged
{
  v2 = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
  [v2 reloadData];
}

@end