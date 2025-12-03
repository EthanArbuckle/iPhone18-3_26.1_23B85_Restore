@interface FMDMockAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)isEqual:(id)equal;
- (BOOL)playingSound;
- (BOOL)updatePlaybackChannels:(id)channels;
- (FMDMockAccessory)init;
- (FMDMockAccessory)initWithBluetoothManagerDevice:(id)device;
- (FMDMockAccessory)initWithCoder:(id)coder;
- (NSDictionary)deviceInfoForHostRegister;
- (NSDictionary)lastKnownLocationDeviceInfo;
- (NSURL)audioURL;
- (id)connectionStateAsString;
- (id)otherDeviceInfo;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateAudioChannelPlayingState:(id)state;
- (void)updateAudioChannelsWithArray:(id)array;
- (void)updateBeaconsWithArray:(id)array;
- (void)updateWithAccessory:(id)accessory;
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

- (FMDMockAccessory)initWithBluetoothManagerDevice:(id)device
{
  deviceCopy = device;
  v5 = [(FMDMockAccessory *)self init];
  v6 = v5;
  if (v5)
  {
    [(FMDMockAccessory *)v5 setBluetoothManagerDevice:deviceCopy];
    if ([deviceCopy bluetoothConnected])
    {
      v7 = +[NSDate date];
      [(FMDMockAccessory *)v6 setLastActiveTime:v7];
    }

    name = [deviceCopy name];
    [(FMDMockAccessory *)v6 setName:name];

    scoUID = [deviceCopy scoUID];
    [(FMDMockAccessory *)v6 setScoUID:scoUID];

    address = [deviceCopy address];
    [(FMDMockAccessory *)v6 setAddress:address];

    bluetoothDevice = [deviceCopy bluetoothDevice];
    serialNumber = [bluetoothDevice serialNumber];
    [(FMDMockAccessory *)v6 setSerialNumber:serialNumber];

    firmwareRevision = [deviceCopy firmwareRevision];
    [(FMDMockAccessory *)v6 setFirmwareRevision:firmwareRevision];

    hardwareRevision = [deviceCopy hardwareRevision];
    [(FMDMockAccessory *)v6 setHardwareRevision:hardwareRevision];

    beacons = [deviceCopy beacons];
    [(FMDMockAccessory *)v6 updateBeaconsWithArray:beacons];

    audioChannelInfo = [deviceCopy audioChannelInfo];
    [(FMDMockAccessory *)v6 updateAudioChannelsWithArray:audioChannelInfo];

    bluetoothColorCode = [deviceCopy bluetoothColorCode];
    [(FMDMockAccessory *)v6 setBluetoothColorCode:bluetoothColorCode];

    batteryInfo = [deviceCopy batteryInfo];
    [(FMDMockAccessory *)v6 setBatteryInfo:batteryInfo];

    v6->_vendorID = [deviceCopy vendorID];
    v6->_productID = [deviceCopy productID];
    accessoryRSSI = [deviceCopy accessoryRSSI];
    [(FMDMockAccessory *)v6 setAccessoryRSSI:accessoryRSSI];

    rssiUpdateDate = [deviceCopy rssiUpdateDate];
    [(FMDMockAccessory *)v6 setRssiUpdateDate:rssiUpdateDate];

    address2 = [(FMDMockAccessory *)v6 address];
    [(FMDMockAccessory *)v6 setAudioRoutingIdentifier:address2];

    v22 = [FMDAccessoryIdentifier alloc];
    address3 = [(FMDMockAccessory *)v6 address];
    v24 = [v22 initWithAddress:address3];
    [(FMDMockAccessory *)v6 setAccessoryIdentifier:v24];
  }

  return v6;
}

- (BOOL)updatePlaybackChannels:(id)channels
{
  channelsCopy = channels;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  accessoryQueue = [(FMDMockAccessory *)self accessoryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DEC14;
  block[3] = &unk_1002CD450;
  v9 = channelsCopy;
  selfCopy = self;
  v11 = &v12;
  v6 = channelsCopy;
  dispatch_sync(accessoryQueue, block);

  LOBYTE(channelsCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return channelsCopy;
}

- (void)updateAudioChannelPlayingState:(id)state
{
  stateCopy = state;
  audioChannelInfo = [(FMDMockAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DEDB8;
  v8[3] = &unk_1002CFE00;
  v9 = stateCopy;
  v7 = stateCopy;
  [allValues enumerateObjectsUsingBlock:v8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  persistedValue = [(FMDMockAccessory *)self persistedValue];
  uUIDString = [persistedValue UUIDString];
  v7 = NSStringFromSelector("persistedValue");
  [coderCopy encodeObject:uUIDString forKey:v7];

  accessoryIdentifier = [(FMDMockAccessory *)self accessoryIdentifier];
  v8 = NSStringFromSelector("accessoryIdentifier");
  [coderCopy encodeObject:accessoryIdentifier forKey:v8];
}

- (FMDMockAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = FMDMockAccessory;
  v5 = [(FMDMockAccessory *)&v15 init];
  if (v5)
  {
    v6 = [NSUUID alloc];
    v7 = objc_opt_class();
    v8 = NSStringFromSelector("persistedValue");
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    v10 = [v6 initWithUUIDString:v9];
    [(FMDMockAccessory *)v5 setPersistedValue:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("accessoryIdentifier");
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    [(FMDMockAccessory *)v5 setAccessoryIdentifier:v13];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      persistedValue = [(FMDMockAccessory *)equalCopy persistedValue];
      uUIDString = [persistedValue UUIDString];
      persistedValue2 = [(FMDMockAccessory *)self persistedValue];
      uUIDString2 = [persistedValue2 UUIDString];
      if ([uUIDString isEqualToString:uUIDString2])
      {
        accessoryIdentifier = [(FMDMockAccessory *)self accessoryIdentifier];
        accessoryIdentifier2 = [(FMDMockAccessory *)equalCopy accessoryIdentifier];
        if ([accessoryIdentifier isEqual:accessoryIdentifier2])
        {
          name = [(FMDMockAccessory *)self name];
          name2 = [(FMDMockAccessory *)equalCopy name];
          v13 = [name isEqualToString:name2];
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
  persistedValue = [(FMDMockAccessory *)self persistedValue];
  v3 = [persistedValue hash];

  return v3;
}

- (void)updateAudioChannelsWithArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSMutableDictionary dictionary];
  audioChannelInfo = [(FMDMockAccessory *)self audioChannelInfo];
  [v5 addEntriesFromDictionary:audioChannelInfo];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DF2F0;
  v8[3] = &unk_1002CFE00;
  v9 = v5;
  v7 = v5;
  [arrayCopy enumerateObjectsUsingBlock:v8];

  [(FMDMockAccessory *)self setAudioChannelInfo:v7];
}

- (void)updateBeaconsWithArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSMutableDictionary dictionary];
  beacons = [(FMDMockAccessory *)self beacons];
  [v5 addEntriesFromDictionary:beacons];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001DF43C;
  v11 = &unk_1002D02F8;
  selfCopy = self;
  v13 = v5;
  v7 = v5;
  [arrayCopy enumerateObjectsUsingBlock:&v8];

  [(FMDMockAccessory *)self setBeacons:v7, v8, v9, v10, v11, selfCopy];
}

- (BOOL)playingSound
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  audioChannelInfo = [(FMDMockAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DF600;
  v5[3] = &unk_1002D0348;
  v5[4] = &v6;
  [allValues enumerateObjectsUsingBlock:v5];

  LOBYTE(audioChannelInfo) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return audioChannelInfo;
}

- (NSURL)audioURL
{
  audioAsset = [(FMDMockAccessory *)self audioAsset];
  fileURL = [audioAsset fileURL];

  return fileURL;
}

- (void)updateWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = accessoryCopy;
  if (isKindOfClass)
  {
    persistedValue = [accessoryCopy persistedValue];
    [(FMDMockAccessory *)self setPersistedValue:persistedValue];

    v7 = accessoryCopy;
    lastActiveTime = [v7 lastActiveTime];
    [lastActiveTime timeIntervalSinceReferenceDate];
    v10 = v9;
    lastActiveTime2 = [(FMDMockAccessory *)self lastActiveTime];
    [lastActiveTime2 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v10 > v13)
    {
      objc_storeStrong(&self->_lastActiveTime, lastActiveTime);
    }

    rssiUpdateDate = [v7 rssiUpdateDate];
    [rssiUpdateDate timeIntervalSinceReferenceDate];
    v16 = v15;
    rssiUpdateDate2 = [(FMDMockAccessory *)self rssiUpdateDate];
    [rssiUpdateDate2 timeIntervalSinceReferenceDate];
    v19 = v18;

    if (v16 > v19)
    {
      [(FMDMockAccessory *)self setRssiUpdateDate:rssiUpdateDate];
    }

    beacons = [v7 beacons];
    allValues = [beacons allValues];
    [(FMDMockAccessory *)self updateBeaconsWithArray:allValues];

    bluetoothColorCode = [v7 bluetoothColorCode];
    bluetoothColorCode2 = [(FMDMockAccessory *)self bluetoothColorCode];

    if (!bluetoothColorCode2)
    {
      [(FMDMockAccessory *)self setBluetoothColorCode:bluetoothColorCode];
    }

    playbackChannels = [v7 playbackChannels];
    [(FMDMockAccessory *)self updatePlaybackChannels:playbackChannels];

    v5 = accessoryCopy;
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
  name = [(FMDMockAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDMockAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  lastActiveTime = [(FMDMockAccessory *)self lastActiveTime];
  v8 = lastActiveTime;
  if (lastActiveTime)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveTime fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C78 forKey:@"lastActiveTime"];
  }

  accessoryRSSI = [(FMDMockAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:accessoryRSSI forKey:@"accessoryRSSI"];

  rssiUpdateDate = [(FMDMockAccessory *)self rssiUpdateDate];
  if (rssiUpdateDate)
  {
    rssiUpdateDate2 = [(FMDMockAccessory *)self rssiUpdateDate];
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [rssiUpdateDate2 fm_epoch]);
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
  batteryInfo = [(FMDMockAccessory *)self batteryInfo];
  v16 = [batteryInfo countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          objc_enumerationMutation(batteryInfo);
        }

        dictionaryValue = [*(*(&v42 + 1) + 8 * i) dictionaryValue];
        [v14 addObject:dictionaryValue];
      }

      v17 = [batteryInfo countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v17);
  }

  [v3 setValue:v14 forKey:@"batteryInfo"];
  v21 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  beacons = [(FMDMockAccessory *)self beacons];
  allValues = [beacons allValues];

  v24 = [allValues countByEnumeratingWithState:&v38 objects:v46 count:16];
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
          objc_enumerationMutation(allValues);
        }

        dictionaryValue2 = [*(*(&v38 + 1) + 8 * j) dictionaryValue];
        [v21 addObject:dictionaryValue2];
      }

      v25 = [allValues countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v25);
  }

  [v3 setValue:v21 forKey:@"beacons"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  firmwareRevision = [(FMDMockAccessory *)self firmwareRevision];
  [v3 fm_safeSetObject:firmwareRevision forKey:@"firmwareVersion"];

  v30 = +[FMDSystemConfig sharedInstance];
  productVersion = [v30 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v32 = [NSString stringWithFormat:@"%i_%i", [(FMDMockAccessory *)self vendorID], [(FMDMockAccessory *)self productID]];
  [v3 setObject:v32 forKeyedSubscript:@"productType"];

  v33 = +[FMDSystemConfig sharedInstance];
  platform = [v33 platform];
  v35 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v35];
  bluetoothColorCode = [(FMDMockAccessory *)self bluetoothColorCode];
  [v3 fm_safeSetObject:bluetoothColorCode forKey:@"colorCode"];

  return v3;
}

- (id)connectionStateAsString
{
  connectionState = [(FMDMockAccessory *)self connectionState];
  if (connectionState > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1002D1308 + connectionState);
  }
}

- (NSDictionary)deviceInfoForHostRegister
{
  v3 = objc_alloc_init(NSMutableDictionary);
  name = [(FMDMockAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDMockAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  v7 = [NSString stringWithFormat:@"%i_%i", [(FMDMockAccessory *)self vendorID], [(FMDMockAccessory *)self productID]];
  [v3 setObject:v7 forKeyedSubscript:@"productType"];

  connectionStateAsString = [(FMDMockAccessory *)self connectionStateAsString];
  [v3 setValue:connectionStateAsString forKey:@"connectionStatus"];

  v9 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  beacons = [(FMDMockAccessory *)self beacons];
  allValues = [beacons allValues];

  v12 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(allValues);
        }

        dictionaryValue = [*(*(&v28 + 1) + 8 * i) dictionaryValue];
        [v9 addObject:dictionaryValue];
      }

      v13 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [v3 setValue:v9 forKey:@"beacons"];
  lastActiveTime = [(FMDMockAccessory *)self lastActiveTime];
  v18 = lastActiveTime;
  if (lastActiveTime)
  {
    v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveTime fm_epoch]);
    [v3 setValue:v19 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C78 forKey:@"lastActiveTime"];
  }

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v20 = +[FMDSystemConfig sharedInstance];
  platform = [v20 platform];
  v22 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v22];
  accessoryRSSI = [(FMDMockAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:accessoryRSSI forKey:@"accessoryRSSI"];

  rssiUpdateDate = [(FMDMockAccessory *)self rssiUpdateDate];
  if (rssiUpdateDate)
  {
    rssiUpdateDate2 = [(FMDMockAccessory *)self rssiUpdateDate];
    v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [rssiUpdateDate2 fm_epoch]);
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
  deviceName = [v4 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:deviceName];

  lastActiveTime = [(FMDMockAccessory *)self lastActiveTime];
  v7 = lastActiveTime;
  if (lastActiveTime)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveTime fm_epoch]);
    [v3 setValue:v8 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C78 forKey:@"lastActiveTime"];
  }

  v9 = +[FMDSystemConfig sharedInstance];
  deviceClassString = [v9 deviceClassString];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:deviceClassString];

  v11 = +[FMDSystemConfig sharedInstance];
  platform = [v11 platform];
  [v3 fm_safelyMapKey:@"platform" toObject:platform];

  v13 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v13 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v15 = +[FMDSystemConfig sharedInstance];
  productType = [v15 productType];
  [v3 fm_safelyMapKey:@"productType" toObject:productType];

  v19 = v3;
  v17 = [NSArray arrayWithObjects:&v19 count:1];

  return v17;
}

@end