@interface FMDMockAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)isEqual:(id)a3;
- (BOOL)playingSound;
- (BOOL)updatePlaybackChannels:(id)a3;
- (FMDMockAccessory)init;
- (FMDMockAccessory)initWithBluetoothManagerDevice:(id)a3;
- (FMDMockAccessory)initWithCoder:(id)a3;
- (NSDictionary)deviceInfoForHostRegister;
- (NSDictionary)lastKnownLocationDeviceInfo;
- (NSURL)audioURL;
- (id)connectionStateAsString;
- (id)otherDeviceInfo;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateAudioChannelPlayingState:(id)a3;
- (void)updateAudioChannelsWithArray:(id)a3;
- (void)updateBeaconsWithArray:(id)a3;
- (void)updateWithAccessory:(id)a3;
@end

@implementation FMDMockAccessory

- (FMDMockAccessory)init
{
  v6.receiver = self;
  v6.super_class = FMDMockAccessory;
  v2 = [(FMDMockAccessory *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    [(FMDMockAccessory *)v2 setPersistedValue:v3];

    v4 = dispatch_queue_create("com.apple.icloud.findmydeviced.mockaccessory", 0);
    [(FMDMockAccessory *)v2 setAccessoryQueue:v4];
  }

  return v2;
}

- (FMDMockAccessory)initWithBluetoothManagerDevice:(id)a3
{
  v4 = a3;
  v5 = [(FMDMockAccessory *)self init];
  v6 = v5;
  if (v5)
  {
    [(FMDMockAccessory *)v5 setBluetoothManagerDevice:v4];
    if ([v4 bluetoothConnected])
    {
      v7 = +[NSDate date];
      [(FMDMockAccessory *)v6 setLastActiveTime:v7];
    }

    v8 = [v4 name];
    [(FMDMockAccessory *)v6 setName:v8];

    v9 = [v4 scoUID];
    [(FMDMockAccessory *)v6 setScoUID:v9];

    v10 = [v4 address];
    [(FMDMockAccessory *)v6 setAddress:v10];

    v11 = [v4 bluetoothDevice];
    v12 = [v11 serialNumber];
    [(FMDMockAccessory *)v6 setSerialNumber:v12];

    v13 = [v4 firmwareRevision];
    [(FMDMockAccessory *)v6 setFirmwareRevision:v13];

    v14 = [v4 hardwareRevision];
    [(FMDMockAccessory *)v6 setHardwareRevision:v14];

    v15 = [v4 beacons];
    [(FMDMockAccessory *)v6 updateBeaconsWithArray:v15];

    v16 = [v4 audioChannelInfo];
    [(FMDMockAccessory *)v6 updateAudioChannelsWithArray:v16];

    v17 = [v4 bluetoothColorCode];
    [(FMDMockAccessory *)v6 setBluetoothColorCode:v17];

    v18 = [v4 batteryInfo];
    [(FMDMockAccessory *)v6 setBatteryInfo:v18];

    v6->_vendorID = [v4 vendorID];
    v6->_productID = [v4 productID];
    v19 = [v4 accessoryRSSI];
    [(FMDMockAccessory *)v6 setAccessoryRSSI:v19];

    v20 = [v4 rssiUpdateDate];
    [(FMDMockAccessory *)v6 setRssiUpdateDate:v20];

    v21 = [(FMDMockAccessory *)v6 address];
    [(FMDMockAccessory *)v6 setAudioRoutingIdentifier:v21];

    v22 = [FMDAccessoryIdentifier alloc];
    v23 = [(FMDMockAccessory *)v6 address];
    v24 = [v22 initWithAddress:v23];
    [(FMDMockAccessory *)v6 setAccessoryIdentifier:v24];
  }

  return v6;
}

- (BOOL)updatePlaybackChannels:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(FMDMockAccessory *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DEC14;
  block[3] = &unk_1002CD450;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v4;
}

- (void)updateAudioChannelPlayingState:(id)a3
{
  v4 = a3;
  v5 = [(FMDMockAccessory *)self audioChannelInfo];
  v6 = [v5 allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DEDB8;
  v8[3] = &unk_1002CFE00;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDMockAccessory *)self persistedValue];
  v6 = [v5 UUIDString];
  v7 = NSStringFromSelector("persistedValue");
  [v4 encodeObject:v6 forKey:v7];

  v9 = [(FMDMockAccessory *)self accessoryIdentifier];
  v8 = NSStringFromSelector("accessoryIdentifier");
  [v4 encodeObject:v9 forKey:v8];
}

- (FMDMockAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FMDMockAccessory;
  v5 = [(FMDMockAccessory *)&v15 init];
  if (v5)
  {
    v6 = [NSUUID alloc];
    v7 = objc_opt_class();
    v8 = NSStringFromSelector("persistedValue");
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    v10 = [v6 initWithUUIDString:v9];
    [(FMDMockAccessory *)v5 setPersistedValue:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("accessoryIdentifier");
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    [(FMDMockAccessory *)v5 setAccessoryIdentifier:v13];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FMDMockAccessory *)v4 persistedValue];
      v6 = [v5 UUIDString];
      v7 = [(FMDMockAccessory *)self persistedValue];
      v8 = [v7 UUIDString];
      if ([v6 isEqualToString:v8])
      {
        v9 = [(FMDMockAccessory *)self accessoryIdentifier];
        v10 = [(FMDMockAccessory *)v4 accessoryIdentifier];
        if ([v9 isEqual:v10])
        {
          v11 = [(FMDMockAccessory *)self name];
          v12 = [(FMDMockAccessory *)v4 name];
          v13 = [v11 isEqualToString:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(FMDMockAccessory *)self persistedValue];
  v3 = [v2 hash];

  return v3;
}

- (void)updateAudioChannelsWithArray:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(FMDMockAccessory *)self audioChannelInfo];
  [v5 addEntriesFromDictionary:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DF2F0;
  v8[3] = &unk_1002CFE00;
  v9 = v5;
  v7 = v5;
  [v4 enumerateObjectsUsingBlock:v8];

  [(FMDMockAccessory *)self setAudioChannelInfo:v7];
}

- (void)updateBeaconsWithArray:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(FMDMockAccessory *)self beacons];
  [v5 addEntriesFromDictionary:v6];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001DF43C;
  v11 = &unk_1002D02F8;
  v12 = self;
  v13 = v5;
  v7 = v5;
  [v4 enumerateObjectsUsingBlock:&v8];

  [(FMDMockAccessory *)self setBeacons:v7, v8, v9, v10, v11, v12];
}

- (BOOL)playingSound
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(FMDMockAccessory *)self audioChannelInfo];
  v3 = [v2 allValues];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DF600;
  v5[3] = &unk_1002D0348;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (NSURL)audioURL
{
  v2 = [(FMDMockAccessory *)self audioAsset];
  v3 = [v2 fileURL];

  return v3;
}

- (void)updateWithAccessory:(id)a3
{
  v25 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v25;
  if (isKindOfClass)
  {
    v6 = [v25 persistedValue];
    [(FMDMockAccessory *)self setPersistedValue:v6];

    v7 = v25;
    v8 = [v7 lastActiveTime];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;
    v11 = [(FMDMockAccessory *)self lastActiveTime];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v10 > v13)
    {
      objc_storeStrong(&self->_lastActiveTime, v8);
    }

    v14 = [v7 rssiUpdateDate];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = [(FMDMockAccessory *)self rssiUpdateDate];
    [v17 timeIntervalSinceReferenceDate];
    v19 = v18;

    if (v16 > v19)
    {
      [(FMDMockAccessory *)self setRssiUpdateDate:v14];
    }

    v20 = [v7 beacons];
    v21 = [v20 allValues];
    [(FMDMockAccessory *)self updateBeaconsWithArray:v21];

    v22 = [v7 bluetoothColorCode];
    v23 = [(FMDMockAccessory *)self bluetoothColorCode];

    if (!v23)
    {
      [(FMDMockAccessory *)self setBluetoothColorCode:v22];
    }

    v24 = [v7 playbackChannels];
    [(FMDMockAccessory *)self updatePlaybackChannels:v24];

    v5 = v25;
  }

  _objc_release_x1(isKindOfClass, v5);
}

+ (id)volatileKeysToExcludeFromRegisterDigest
{
  v4[0] = @"connectionStatus";
  v4[1] = @"lastActiveTime";
  v4[2] = @"batteryInfo";
  v4[3] = @"accessoryRSSI";
  v4[4] = @"accessoryRSSITimestamp";
  v4[5] = @"beacons";
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (NSDictionary)lastKnownLocationDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDMockAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDMockAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDMockAccessory *)self lastActiveTime];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C78 forKey:@"lastActiveTime"];
  }

  v10 = [(FMDMockAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:v10 forKey:@"accessoryRSSI"];

  v11 = [(FMDMockAccessory *)self rssiUpdateDate];
  if (v11)
  {
    v12 = [(FMDMockAccessory *)self rssiUpdateDate];
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 fm_epoch]);
    [v3 fm_safeSetObject:v13 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7C78 forKey:@"accessoryRSSITimestamp"];
  }

  v14 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [(FMDMockAccessory *)self batteryInfo];
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v42 + 1) + 8 * i) dictionaryValue];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v17);
  }

  [v3 setValue:v14 forKey:@"batteryInfo"];
  v21 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = [(FMDMockAccessory *)self beacons];
  v23 = [v22 allValues];

  v24 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v38 + 1) + 8 * j) dictionaryValue];
        [v21 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v25);
  }

  [v3 setValue:v21 forKey:@"beacons"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  v29 = [(FMDMockAccessory *)self firmwareRevision];
  [v3 fm_safeSetObject:v29 forKey:@"firmwareVersion"];

  v30 = +[FMDSystemConfig sharedInstance];
  v31 = [v30 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v31];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v32 = [NSString stringWithFormat:@"%i_%i", [(FMDMockAccessory *)self vendorID], [(FMDMockAccessory *)self productID]];
  [v3 setObject:v32 forKeyedSubscript:@"productType"];

  v33 = +[FMDSystemConfig sharedInstance];
  v34 = [v33 platform];
  v35 = [NSString stringWithFormat:@"%@_proxy", v34];

  [v3 fm_safelyMapKey:@"platform" toObject:v35];
  v36 = [(FMDMockAccessory *)self bluetoothColorCode];
  [v3 fm_safeSetObject:v36 forKey:@"colorCode"];

  return v3;
}

- (id)connectionStateAsString
{
  v2 = [(FMDMockAccessory *)self connectionState];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1002D1308 + v2);
  }
}

- (NSDictionary)deviceInfoForHostRegister
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(FMDMockAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDMockAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [NSString stringWithFormat:@"%i_%i", [(FMDMockAccessory *)self vendorID], [(FMDMockAccessory *)self productID]];
  [v3 setObject:v7 forKeyedSubscript:@"productType"];

  v8 = [(FMDMockAccessory *)self connectionStateAsString];
  [v3 setValue:v8 forKey:@"connectionStatus"];

  v9 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [(FMDMockAccessory *)self beacons];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v28 + 1) + 8 * i) dictionaryValue];
        [v9 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [v3 setValue:v9 forKey:@"beacons"];
  v17 = [(FMDMockAccessory *)self lastActiveTime];
  v18 = v17;
  if (v17)
  {
    v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 fm_epoch]);
    [v3 setValue:v19 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C78 forKey:@"lastActiveTime"];
  }

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v20 = +[FMDSystemConfig sharedInstance];
  v21 = [v20 platform];
  v22 = [NSString stringWithFormat:@"%@_proxy", v21];

  [v3 fm_safelyMapKey:@"platform" toObject:v22];
  v23 = [(FMDMockAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:v23 forKey:@"accessoryRSSI"];

  v24 = [(FMDMockAccessory *)self rssiUpdateDate];
  if (v24)
  {
    v25 = [(FMDMockAccessory *)self rssiUpdateDate];
    v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 fm_epoch]);
    [v3 fm_safeSetObject:v26 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7C78 forKey:@"accessoryRSSITimestamp"];
  }

  return v3;
}

- (id)otherDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[FMDSystemConfig sharedInstance];
  v5 = [v4 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:v5];

  v6 = [(FMDMockAccessory *)self lastActiveTime];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 fm_epoch]);
    [v3 setValue:v8 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C78 forKey:@"lastActiveTime"];
  }

  v9 = +[FMDSystemConfig sharedInstance];
  v10 = [v9 deviceClassString];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:v10];

  v11 = +[FMDSystemConfig sharedInstance];
  v12 = [v11 platform];
  [v3 fm_safelyMapKey:@"platform" toObject:v12];

  v13 = +[FMDSystemConfig sharedInstance];
  v14 = [v13 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 productType];
  [v3 fm_safelyMapKey:@"productType" toObject:v16];

  v19 = v3;
  v17 = [NSArray arrayWithObjects:&v19 count:1];

  return v17;
}

@end