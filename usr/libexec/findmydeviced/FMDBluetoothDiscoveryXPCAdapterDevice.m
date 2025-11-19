@interface FMDBluetoothDiscoveryXPCAdapterDevice
- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithBluetoothDevice:(id)a3;
- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithCoder:(id)a3;
- (id)_xpcSafeAdvertisementKeys:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDBluetoothDiscoveryXPCAdapterDevice

- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithBluetoothDevice:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FMDBluetoothDiscoveryXPCAdapterDevice;
  v5 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)&v13 init];
  if (v5)
  {
    v6 = [v4 identifier];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setIdentifier:v6];

    v7 = [v4 advertisementFields];
    v8 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 _xpcSafeAdvertisementKeys:v7];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setAdvertisementFields:v8];

    v9 = [v4 name];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setName:v9];

    -[FMDBluetoothDiscoveryXPCAdapterDevice setRssi:](v5, "setRssi:", [v4 rssi]);
    v10 = [v4 bluetoothAddress];
    v11 = [v10 copy];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setBluetoothAddress:v11];
  }

  return v5;
}

- (FMDBluetoothDiscoveryXPCAdapterDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FMDBluetoothDiscoveryXPCAdapterDevice;
  v5 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setIdentifier:v6];

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v7, v8, v9, v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"advertisementFields"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setAdvertisementFields:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setName:v13];

    -[FMDBluetoothDiscoveryXPCAdapterDevice setRssi:](v5, "setRssi:", [v4 decodeIntegerForKey:@"rssi"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothAddress"];
    [(FMDBluetoothDiscoveryXPCAdapterDevice *)v5 setBluetoothAddress:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self advertisementFields];
  [v4 encodeObject:v6 forKey:@"advertisementFields"];

  v7 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self name];
  [v4 encodeObject:v7 forKey:@"name"];

  [v4 encodeInteger:-[FMDBluetoothDiscoveryXPCAdapterDevice rssi](self forKey:{"rssi"), @"rssi"}];
  v8 = [(FMDBluetoothDiscoveryXPCAdapterDevice *)self bluetoothAddress];
  [v4 encodeObject:v8 forKey:@"bluetoothAddress"];
}

- (id)_xpcSafeAdvertisementKeys:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 objectForKeyedSubscript:@"hsStatus"];
  [v4 fm_safelySetObject:v5 forKey:@"hsStatus"];

  v6 = [v3 objectForKeyedSubscript:@"cc"];
  [v4 fm_safelySetObject:v6 forKey:@"cc"];

  v7 = [v3 objectForKeyedSubscript:@"hbT"];
  [v4 fm_safelySetObject:v7 forKey:@"hbT"];

  v8 = [v3 objectForKeyedSubscript:@"cc"];
  [v4 fm_safelySetObject:v8 forKey:@"cc"];

  v9 = [v3 objectForKeyedSubscript:@"ccR"];
  [v4 fm_safelySetObject:v9 forKey:@"ccR"];

  v10 = [v3 objectForKeyedSubscript:@"ccC"];
  [v4 fm_safelySetObject:v10 forKey:@"ccC"];

  v11 = [v3 objectForKeyedSubscript:@"lc"];
  [v4 fm_safelySetObject:v11 forKey:@"lc"];

  v12 = [v3 objectForKeyedSubscript:@"aState"];

  [v4 fm_safelySetObject:v12 forKey:@"aState"];
  v13 = [v4 copy];

  return v13;
}

@end