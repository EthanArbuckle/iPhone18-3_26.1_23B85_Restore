@interface FMDAccessoryRegistryDelegateAdaptor
- (FMDAccessoryRegistryDelegateAdaptor)initWithAccessoryRegistry:(id)registry;
- (void)beaconsChanged;
- (void)bluetoothManagerDidConnectDevice:(id)device;
- (void)bluetoothManagerDidDisconnectDevice:(id)device;
- (void)bluetoothManagerDidUnpairDevice:(id)device;
- (void)bluetoothManagerDidUpdateDevice:(id)device;
- (void)companionRegistryDidUpdateAccessories:(id)accessories;
@end

@implementation FMDAccessoryRegistryDelegateAdaptor

- (FMDAccessoryRegistryDelegateAdaptor)initWithAccessoryRegistry:(id)registry
{
  registryCopy = registry;
  v8.receiver = self;
  v8.super_class = FMDAccessoryRegistryDelegateAdaptor;
  v5 = [(FMDAccessoryRegistryDelegateAdaptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDAccessoryRegistryDelegateAdaptor *)v5 setRegistry:registryCopy];
  }

  return v6;
}

- (void)companionRegistryDidUpdateAccessories:(id)accessories
{
  registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
  [registry reloadData];
}

- (void)bluetoothManagerDidConnectDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidConnectDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      accessoryIdentifier = [(FMDBluetoothAccessory *)v5 accessoryIdentifier];
      v9 = 138412290;
      v10 = accessoryIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidConnectDevice %@", &v9, 0xCu);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry updateAccessory:v5];
  }
}

- (void)bluetoothManagerDidDisconnectDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidDisconnectDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      accessoryIdentifier = [(FMDBluetoothAccessory *)v5 accessoryIdentifier];
      v9 = 138412290;
      v10 = accessoryIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidDisconnectDevice %@", &v9, 0xCu);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry updateAccessory:v5];
  }
}

- (void)bluetoothManagerDidUnpairDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidUnpairDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      accessoryIdentifier = [(FMDBluetoothAccessory *)v5 accessoryIdentifier];
      v9 = 138412290;
      v10 = accessoryIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidUnpairDevice %@", &v9, 0xCu);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry removeAccessory:v5];
  }
}

- (void)bluetoothManagerDidUpdateDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isTemporaryPaired])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v5->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidUpdateDevice Ignoring shared device %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = [(FMDBluetoothAccessory *)v5 name];
      v9 = 138412802;
      v10 = name;
      v11 = 1024;
      vendorID = [(FMDBluetoothAccessory *)v5 vendorID];
      v13 = 1024;
      productID = [(FMDBluetoothAccessory *)v5 productID];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistryDelegateAdaptor bluetoothManagerDidUpdateDevice device (name: %@, vendorID: %d, productID: %d)", &v9, 0x18u);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry updateAccessory:v5];
  }
}

- (void)beaconsChanged
{
  registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
  [registry reloadData];
}

@end