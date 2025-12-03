@interface W5BluetoothDeviceInternal
- (BOOL)__isConnected;
- (W5BluetoothDeviceInternal)initWithCBDevice:(id)device;
- (id)__address;
- (id)device;
- (void)dealloc;
@end

@implementation W5BluetoothDeviceInternal

- (W5BluetoothDeviceInternal)initWithCBDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = W5BluetoothDeviceInternal;
  v4 = [(W5BluetoothDeviceInternal *)&v7 init];
  v5 = v4;
  if (device && v4)
  {
    v4->_device = device;
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5BluetoothDeviceInternal;
  [(W5BluetoothDeviceInternal *)&v3 dealloc];
}

- (id)device
{
  v3 = objc_alloc_init(W5BluetoothDevice);
  [v3 setName:{-[W5BluetoothDeviceInternal __name](self, "__name")}];
  [v3 setAddress:{-[W5BluetoothDeviceInternal __address](self, "__address")}];
  [v3 setIsPaired:{-[W5BluetoothDeviceInternal __isPaired](self, "__isPaired")}];
  [v3 setIsConnected:{-[W5BluetoothDeviceInternal __isConnected](self, "__isConnected")}];
  [v3 setIsCloudPaired:{-[W5BluetoothDeviceInternal __isCloudPaired](self, "__isCloudPaired")}];
  [v3 setIsLowEnergy:{-[W5BluetoothDeviceInternal __isLowEnergy](self, "__isLowEnergy")}];
  [v3 setIsAppleDevice:{-[W5BluetoothDeviceInternal __isAppleDevice](self, "__isAppleDevice")}];
  return v3;
}

- (id)__address
{
  btAddressData = [(CBDevice *)self->_device btAddressData];

  return _CWFEthernetAddressStringFromData(btAddressData);
}

- (BOOL)__isConnected
{
  if ([(CBDevice *)self->_device connectedServices])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(CBDevice *)self->_device deviceFlags]>> 18) & 1;
  }

  return v3;
}

@end