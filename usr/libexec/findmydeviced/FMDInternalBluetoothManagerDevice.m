@interface FMDInternalBluetoothManagerDevice
+ (id)externalAccessoryForMacAddress:(id)a3;
- (BOOL)bluetoothConnected;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTemporaryPaired;
- (FMDAccessoryStyleDescriptor)styleDescriptor;
- (FMDIdentifiable)accessoryIdentifier;
- (FMDInternalBluetoothManagerDevice)init;
- (NSArray)audioChannelInfo;
- (NSArray)beacons;
- (NSDate)rssiUpdateDate;
- (NSNumber)accessoryRSSI;
- (NSNumber)bluetoothColorCode;
- (NSString)address;
- (NSString)firmwareRevision;
- (NSString)hardwareRevision;
- (NSString)name;
- (NSString)scoUID;
- (id)primaryBeacon;
- (id)serialNumber;
- (unint64_t)hash;
- (unsigned)productID;
- (unsigned)vendorID;
- (void)addAudioChannelStatus:(id)a3;
- (void)addBLEBeacon:(id)a3;
@end

@implementation FMDInternalBluetoothManagerDevice

- (FMDInternalBluetoothManagerDevice)init
{
  v6.receiver = self;
  v6.super_class = FMDInternalBluetoothManagerDevice;
  v2 = [(FMDInternalBluetoothManagerDevice *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FMDInternalBluetoothManagerDevice *)v2 setBeaconsByIdentifier:v3];

    v4 = +[NSMutableDictionary dictionary];
    [(FMDInternalBluetoothManagerDevice *)v2 setAudioChannelsByName:v4];
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(FMDInternalBluetoothManagerDevice *)v5 address];
      v7 = [(FMDInternalBluetoothManagerDevice *)self address];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(FMDInternalBluetoothManagerDevice *)self audioChannelInfo];
        v9 = [(FMDInternalBluetoothManagerDevice *)v5 audioChannelInfo];
        v10 = [v8 isEqualToArray:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v12.receiver = self;
      v12.super_class = FMDInternalBluetoothManagerDevice;
      v10 = [(FMDInternalBluetoothManagerDevice *)&v12 isEqual:v4];
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self address];
  v3 = [v2 hash];

  return v3;
}

- (FMDIdentifiable)accessoryIdentifier
{
  v3 = [FMDAccessoryIdentifier alloc];
  v4 = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 initWithAddress:v4];

  return v5;
}

- (unsigned)vendorID
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = [v2 vendorID];

  return v3;
}

- (unsigned)productID
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = [v2 productID];

  return v3;
}

- (NSString)address
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = [v2 btAddressData];
  v4 = [v3 fm_MACAddressString];

  return v4;
}

- (NSString)scoUID
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self address];
  v3 = [NSString stringWithFormat:@"%@-tsco", v2];

  return v3;
}

- (BOOL)bluetoothConnected
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = ([v2 discoveryFlags] >> 21) & 1;

  return v3;
}

- (NSString)name
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = [v2 name];

  return v3;
}

- (BOOL)isTemporaryPaired
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = ([v2 deviceFlags] >> 25) & 1;

  return v3;
}

- (void)addBLEBeacon:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isValid];

  if (v6)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      v11 = objc_opt_class();
      v12 = 2050;
      v13 = self;
      v14 = 2050;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p> addBLEBeacon: <%{public}p>", &v10, 0x20u);
    }

    v8 = [(FMDInternalBluetoothManagerDevice *)self beaconsByIdentifier];
    v9 = [v4 identifier];
    [v8 setObject:v4 forKeyedSubscript:v9];
  }
}

- (void)addAudioChannelStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 channelName];

  if (v5)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138544130;
      v10 = objc_opt_class();
      v11 = 2050;
      v12 = self;
      v13 = 2050;
      v14 = v4;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p> addAudioChannelStatus: <%{public}p> %@", &v9, 0x2Au);
    }

    v7 = [(FMDInternalBluetoothManagerDevice *)self audioChannelsByName];
    v8 = [v4 channelName];
    [v7 setObject:v4 forKeyedSubscript:v8];
  }
}

- (NSNumber)accessoryRSSI
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  v3 = [v2 rssi];

  return v3;
}

- (NSDate)rssiUpdateDate
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  v3 = [v2 updateDate];

  return v3;
}

- (NSArray)audioChannelInfo
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self audioChannelsByName];
  v3 = [v2 allValues];

  return v3;
}

- (NSNumber)bluetoothColorCode
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  v3 = [v2 colorCode];

  return v3;
}

- (FMDAccessoryStyleDescriptor)styleDescriptor
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  v3 = [v2 styleDescriptor];

  return v3;
}

- (id)primaryBeacon
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self beacons];
  v3 = [FMDBLEAudioAdvertisementParser primaryBeaconForBeacons:v2];

  return v3;
}

- (NSArray)beacons
{
  v2 = [(FMDInternalBluetoothManagerDevice *)self beaconsByIdentifier];
  v3 = [v2 allValues];

  return v3;
}

- (id)serialNumber
{
  v3 = objc_opt_class();
  v4 = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 externalAccessoryForMacAddress:v4];

  v6 = [v5 serialNumber];

  return v6;
}

- (NSString)firmwareRevision
{
  v3 = objc_opt_class();
  v4 = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 externalAccessoryForMacAddress:v4];

  v6 = [v5 firmwareRevision];

  return v6;
}

- (NSString)hardwareRevision
{
  v3 = objc_opt_class();
  v4 = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 externalAccessoryForMacAddress:v4];

  v6 = [v5 hardwareRevision];

  return v6;
}

+ (id)externalAccessoryForMacAddress:(id)a3
{
  v3 = a3;
  v4 = +[EAAccessoryManager sharedAccessoryManager];
  v5 = [v4 connectedAccessories];

  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1002267BC(v5, v6);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000A9A4;
  v17 = sub_100002A9C;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013A7E0;
  v10[3] = &unk_1002CD9E0;
  v7 = v3;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

@end