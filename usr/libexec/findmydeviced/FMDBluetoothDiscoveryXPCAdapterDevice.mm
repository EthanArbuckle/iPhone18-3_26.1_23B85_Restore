@interface FMDBluetoothDiscoveryXPCAdapterDevice
- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithBluetoothDevice:(id)device;
- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithCoder:(id)coder;
- (id)_xpcSafeAdvertisementKeys:(id)keys;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDBluetoothDiscoveryXPCAdapterDevice

- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithBluetoothDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = FMDBluetoothDiscoveryXPCAdapterDevice;
  v5 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)&v13 init];
  if (v5)
  {
    identifier = [deviceCopy identifier];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setIdentifier:identifier];

    advertisementFields = [deviceCopy advertisementFields];
    v8 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 _xpcSafeAdvertisementKeys:advertisementFields];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setAdvertisementFields:v8];

    name = [deviceCopy name];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setName:name];

    -[FMDBluetoothDiscoveryXPCAdapterDevice setRssi:](v5, "setRssi:", [deviceCopy rssi]);
    bluetoothAddress = [deviceCopy bluetoothAddress];
    v11 = [bluetoothAddress copy];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setBluetoothAddress:v11];
  }

  return v5;
}

- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FMDBluetoothDiscoveryXPCAdapterDevice;
  v5 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setIdentifier:v6];

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v7, v8, v9, v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"advertisementFields"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setAdvertisementFields:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setName:v13];

    -[FMDBluetoothDiscoveryXPCAdapterDevice setRssi:](v5, "setRssi:", [coderCopy decodeIntegerForKey:@"rssi"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothAddress"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setBluetoothAddress:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  advertisementFields = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self advertisementFields];
  [coderCopy encodeObject:advertisementFields forKey:@"advertisementFields"];

  name = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInteger:-[FMDBluetoothDiscoveryXPCAdapterDevice rssi](self forKey:{"rssi"), @"rssi"}];
  bluetoothAddress = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self bluetoothAddress];
  [coderCopy encodeObject:bluetoothAddress forKey:@"bluetoothAddress"];
}

- (id)_xpcSafeAdvertisementKeys:(id)keys
{
  keysCopy = keys;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [keysCopy objectForKeyedSubscript:@"hsStatus"];
  [v4 fm_safelySetObject:v5 forKey:@"hsStatus"];

  v6 = [keysCopy objectForKeyedSubscript:@"cc"];
  [v4 fm_safelySetObject:v6 forKey:@"cc"];

  v7 = [keysCopy objectForKeyedSubscript:@"hbT"];
  [v4 fm_safelySetObject:v7 forKey:@"hbT"];

  v8 = [keysCopy objectForKeyedSubscript:@"cc"];
  [v4 fm_safelySetObject:v8 forKey:@"cc"];

  v9 = [keysCopy objectForKeyedSubscript:@"ccR"];
  [v4 fm_safelySetObject:v9 forKey:@"ccR"];

  v10 = [keysCopy objectForKeyedSubscript:@"ccC"];
  [v4 fm_safelySetObject:v10 forKey:@"ccC"];

  v11 = [keysCopy objectForKeyedSubscript:@"lc"];
  [v4 fm_safelySetObject:v11 forKey:@"lc"];

  v12 = [keysCopy objectForKeyedSubscript:@"aState"];

  [v4 fm_safelySetObject:v12 forKey:@"aState"];
  v13 = [v4 copy];

  return v13;
}

@end