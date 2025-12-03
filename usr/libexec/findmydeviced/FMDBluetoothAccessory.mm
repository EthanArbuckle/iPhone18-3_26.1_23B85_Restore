@interface FMDBluetoothAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)nearby;
- (BOOL)playingSound;
- (BOOL)shouldStopSoundNow;
- (BOOL)updatePlaybackChannels:(id)channels;
- (FMDAudioAccessoryInfo)audioAccessoryInfo;
- (FMDBluetoothAccessory)init;
- (FMDBluetoothAccessory)initWithBluetoothManagerDevice:(id)device;
- (FMDBluetoothAccessory)initWithCoder:(id)coder;
- (NSString)description;
- (NSURL)audioURL;
- (id)connectionStateAsString;
- (id)currentLastActiveTime;
- (id)deviceInfo;
- (id)deviceInfoForHostRegister;
- (id)dictionaryValue;
- (id)lastDiscoveryDate;
- (id)lastKnownLocationDeviceInfo;
- (id)otherDeviceInfo;
- (int64_t)connectionState;
- (unint64_t)audioSafetyStatus;
- (unint64_t)audioSafetyStatusForAirPods:(id)pods knownStatus:(unint64_t)status;
- (unint64_t)audioSafetyStatusForStereoPair:(id)pair;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateAudioChannelPlayingState:(id)state;
- (void)updateAudioChannelsWithArray:(id)array;
- (void)updateBeaconsWithArray:(id)array;
- (void)updateWithAccessory:(id)accessory;
@end

@implementation FMDBluetoothAccessory

- (FMDBluetoothAccessory)init
{
  v5.receiver = self;
  v5.super_class = FMDBluetoothAccessory;
  v2 = [(FMDBluetoothAccessory *)&v5 init];
  if (v2)
  {
    v3 = [[FMDCommandContext alloc] initWithAccessory:v2];
    [(FMDBluetoothAccessory *)v2 setCommandContext:v3];
  }

  return v2;
}

- (FMDBluetoothAccessory)initWithBluetoothManagerDevice:(id)device
{
  deviceCopy = device;
  v5 = [(FMDBluetoothAccessory *)self init];
  v6 = v5;
  if (v5)
  {
    [(FMDBluetoothAccessory *)v5 setBluetoothManagerDevice:deviceCopy];
    if ([deviceCopy bluetoothConnected])
    {
      v7 = +[NSDate date];
      [(FMDBluetoothAccessory *)v6 setLastActiveTime:v7];
    }

    name = [deviceCopy name];
    [(FMDBluetoothAccessory *)v6 setName:name];

    scoUID = [deviceCopy scoUID];
    [(FMDBluetoothAccessory *)v6 setScoUID:scoUID];

    address = [deviceCopy address];
    [(FMDBluetoothAccessory *)v6 setAddress:address];

    bluetoothDevice = [deviceCopy bluetoothDevice];
    serialNumber = [bluetoothDevice serialNumber];
    [(FMDBluetoothAccessory *)v6 setSerialNumber:serialNumber];

    firmwareRevision = [deviceCopy firmwareRevision];
    [(FMDBluetoothAccessory *)v6 setFirmwareRevision:firmwareRevision];

    hardwareRevision = [deviceCopy hardwareRevision];
    [(FMDBluetoothAccessory *)v6 setHardwareRevision:hardwareRevision];

    beacons = [deviceCopy beacons];
    [(FMDBluetoothAccessory *)v6 updateBeaconsWithArray:beacons];

    audioChannelInfo = [deviceCopy audioChannelInfo];
    [(FMDBluetoothAccessory *)v6 updateAudioChannelsWithArray:audioChannelInfo];

    v17 = [[FMDAccessorySerialNumbers alloc] initWithDevice:deviceCopy];
    [(FMDBluetoothAccessory *)v6 setSerialNumbers:v17];

    bluetoothColorCode = [deviceCopy bluetoothColorCode];
    [(FMDBluetoothAccessory *)v6 setBluetoothColorCode:bluetoothColorCode];

    styleDescriptor = [deviceCopy styleDescriptor];
    [(FMDBluetoothAccessory *)v6 setStyleDescriptor:styleDescriptor];

    batteryInfo = [deviceCopy batteryInfo];
    [(FMDBluetoothAccessory *)v6 setBatteryInfo:batteryInfo];

    v6->_vendorID = [deviceCopy vendorID];
    v6->_productID = [deviceCopy productID];
    accessoryRSSI = [deviceCopy accessoryRSSI];
    [(FMDBluetoothAccessory *)v6 setAccessoryRSSI:accessoryRSSI];

    rssiUpdateDate = [deviceCopy rssiUpdateDate];
    [(FMDBluetoothAccessory *)v6 setRssiUpdateDate:rssiUpdateDate];

    address2 = [(FMDBluetoothAccessory *)v6 address];
    [(FMDBluetoothAccessory *)v6 setAudioRoutingIdentifier:address2];

    v24 = [FMDAccessoryIdentifier alloc];
    address3 = [(FMDBluetoothAccessory *)v6 address];
    v26 = [v24 initWithAddress:address3];
    [(FMDBluetoothAccessory *)v6 setAccessoryIdentifier:v26];
  }

  return v6;
}

- (void)updateWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_self();
      *buf = 134218240;
      selfCopy = self;
      v44 = 2048;
      v45 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) updateWithAccessory: FMDInternalAccessory(0x%lX)", buf, 0x16u);
    }

    v7 = accessoryCopy;
    lastActiveTime = [v7 lastActiveTime];
    [lastActiveTime timeIntervalSinceReferenceDate];
    v10 = v9;
    lastActiveTime2 = [(FMDBluetoothAccessory *)self lastActiveTime];
    [lastActiveTime2 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v10 > v13)
    {
      [(FMDBluetoothAccessory *)self setLastActiveTime:lastActiveTime];
    }

    rssiUpdateDate = [v7 rssiUpdateDate];
    [rssiUpdateDate timeIntervalSinceReferenceDate];
    v16 = v15;
    rssiUpdateDate2 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    [rssiUpdateDate2 timeIntervalSinceReferenceDate];
    v19 = v18;

    if (v16 > v19)
    {
      [(FMDBluetoothAccessory *)self setRssiUpdateDate:rssiUpdateDate];
    }

    beacons = [v7 beacons];
    allValues = [beacons allValues];
    [(FMDBluetoothAccessory *)self updateBeaconsWithArray:allValues];

    serialNumbers = [v7 serialNumbers];
    serialNumbers2 = [(FMDBluetoothAccessory *)self serialNumbers];

    if (!serialNumbers2)
    {
      [(FMDBluetoothAccessory *)self setSerialNumbers:serialNumbers];
    }

    bluetoothColorCode = [v7 bluetoothColorCode];
    bluetoothColorCode2 = [(FMDBluetoothAccessory *)self bluetoothColorCode];

    if (!bluetoothColorCode2)
    {
      [(FMDBluetoothAccessory *)self setBluetoothColorCode:bluetoothColorCode];
    }

    styleDescriptor = [v7 styleDescriptor];
    styleDescriptor2 = [(FMDBluetoothAccessory *)self styleDescriptor];

    if (!styleDescriptor2)
    {
      [(FMDBluetoothAccessory *)self setStyleDescriptor:styleDescriptor];
    }

    v40 = styleDescriptor;
    v41 = lastActiveTime;
    audioAsset = [v7 audioAsset];
    [(FMDBluetoothAccessory *)self setAudioAsset:audioAsset];

    playbackChannels = [v7 playbackChannels];
    [(FMDBluetoothAccessory *)self updatePlaybackChannels:playbackChannels];

    baUUID = [v7 baUUID];
    v31 = sub_100002880();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [baUUID UUIDString];
      baUUID2 = [(FMDBluetoothAccessory *)self baUUID];
      [v7 name];
      v34 = v39 = serialNumbers;
      [v7 address];
      v38 = bluetoothColorCode;
      v36 = v35 = rssiUpdateDate;
      *buf = 138413058;
      selfCopy = uUIDString;
      v44 = 2112;
      v45 = baUUID2;
      v46 = 2112;
      v47 = v34;
      v48 = 2112;
      v49 = v36;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory existing baUUID: %@, new baUUID %@ for %@, %@", buf, 0x2Au);

      rssiUpdateDate = v35;
      bluetoothColorCode = v38;

      serialNumbers = v39;
    }

    baUUID3 = [(FMDBluetoothAccessory *)self baUUID];

    if (!baUUID3)
    {
      [(FMDBluetoothAccessory *)self setBaUUID:baUUID];
    }
  }
}

- (void)updateBeaconsWithArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSMutableDictionary dictionary];
  beacons = [(FMDBluetoothAccessory *)self beacons];
  [v5 addEntriesFromDictionary:beacons];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100195C6C;
  v11 = &unk_1002D02F8;
  selfCopy = self;
  v13 = v5;
  v7 = v5;
  [arrayCopy enumerateObjectsUsingBlock:&v8];

  [(FMDBluetoothAccessory *)self setBeacons:v7, v8, v9, v10, v11, selfCopy];
}

- (void)updateAudioChannelsWithArray:(id)array
{
  arrayCopy = array;
  v5 = +[NSMutableDictionary dictionary];
  audioChannelInfo = [(FMDBluetoothAccessory *)self audioChannelInfo];
  [v5 addEntriesFromDictionary:audioChannelInfo];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100195ED4;
  v10[3] = &unk_1002CFE00;
  v7 = v5;
  v11 = v7;
  [arrayCopy enumerateObjectsUsingBlock:v10];

  [(FMDBluetoothAccessory *)self setAudioChannelInfo:v7];
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    audioChannelInfo2 = [(FMDBluetoothAccessory *)self audioChannelInfo];
    *buf = 134218242;
    selfCopy = self;
    v14 = 2112;
    v15 = audioChannelInfo2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) updateWithAccessory audio channels: %@", buf, 0x16u);
  }
}

- (unint64_t)hash
{
  accessoryIdentifier = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  v3 = [accessoryIdentifier hash];

  return v3;
}

- (int64_t)connectionState
{
  bluetoothManagerDevice = [(FMDBluetoothAccessory *)self bluetoothManagerDevice];
  bluetoothConnected = [bluetoothManagerDevice bluetoothConnected];

  return bluetoothConnected;
}

- (id)currentLastActiveTime
{
  bluetoothManagerDevice = [(FMDBluetoothAccessory *)self bluetoothManagerDevice];
  bluetoothConnected = [bluetoothManagerDevice bluetoothConnected];

  if (bluetoothConnected)
  {
    lastActiveTime = +[NSDate date];
    [(FMDBluetoothAccessory *)self setLastActiveTime:lastActiveTime];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) updated lastActiveTime", &v9, 0xCu);
    }
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) fetching cached lastActiveTime", &v9, 0xCu);
    }

    lastActiveTime = [(FMDBluetoothAccessory *)self lastActiveTime];
  }

  return lastActiveTime;
}

- (id)lastDiscoveryDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AAB4;
  v11 = sub_100002B24;
  v12 = 0;
  beacons = [(FMDBluetoothAccessory *)self beacons];
  allValues = [beacons allValues];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019622C;
  v6[3] = &unk_1002D0320;
  v6[4] = &v7;
  [allValues enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)shouldStopSoundNow
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  audioChannelInfo = [(FMDBluetoothAccessory *)self audioChannelInfo];
  v4 = [audioChannelInfo count] == 2;

  v12 = v4;
  audioChannelInfo2 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo2 allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001963B0;
  v8[3] = &unk_1002D0348;
  v8[4] = &v9;
  [allValues enumerateObjectsUsingBlock:v8];

  LOBYTE(audioChannelInfo2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return audioChannelInfo2;
}

- (BOOL)playingSound
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  audioChannelInfo = [(FMDBluetoothAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001965A4;
  v5[3] = &unk_1002D0348;
  v5[4] = &v6;
  [allValues enumerateObjectsUsingBlock:v5];

  LOBYTE(audioChannelInfo) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return audioChannelInfo;
}

- (unint64_t)audioSafetyStatusForAirPods:(id)pods knownStatus:(unint64_t)status
{
  inEar = [pods inEar];
  v6 = 1;
  if (status != 2)
  {
    v6 = 2;
  }

  if (inEar == 500)
  {
    statusCopy = 0;
  }

  else
  {
    statusCopy = status;
  }

  if (inEar != 2)
  {
    v6 = statusCopy;
  }

  statusCopy2 = 3;
  if (inEar != 1)
  {
    statusCopy2 = status;
  }

  if (!inEar)
  {
    statusCopy2 = 0;
  }

  if (inEar <= 1)
  {
    return statusCopy2;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)audioSafetyStatusForStereoPair:(id)pair
{
  onHeadStatus = [pair onHeadStatus];
  if ((onHeadStatus - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_100258728[(onHeadStatus - 1)];
  }
}

- (unint64_t)audioSafetyStatus
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  audioChannelInfo = [(FMDBluetoothAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];
  v5 = [allValues copy];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100196898;
  v10[3] = &unk_1002D0370;
  v10[4] = self;
  v10[5] = &v11;
  [v5 enumerateObjectsUsingBlock:v10];
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v12[3];
    *buf = 134218240;
    selfCopy = self;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) audioSafetyStatus: %lu ", buf, 0x16u);
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (BOOL)nearby
{
  bluetoothManagerDevice = [(FMDBluetoothAccessory *)self bluetoothManagerDevice];
  beacons = [bluetoothManagerDevice beacons];
  if ([beacons count])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(FMDBluetoothAccessory *)self connectionState]== 1;
  }

  return v5;
}

- (id)dictionaryValue
{
  v3 = +[NSMutableDictionary dictionary];
  bluetoothColorCode = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  [v3 setValue:bluetoothColorCode forKey:@"colorCode"];

  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  batteryInfo = [(FMDBluetoothAccessory *)self batteryInfo];
  v7 = [batteryInfo countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(batteryInfo);
        }

        dictionaryValue = [*(*(&v13 + 1) + 8 * i) dictionaryValue];
        [v5 addObject:dictionaryValue];
      }

      v8 = [batteryInfo countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v3 setValue:v5 forKey:@"batteryInfo"];

  return v3;
}

- (NSURL)audioURL
{
  audioAsset = [(FMDBluetoothAccessory *)self audioAsset];
  fileURL = [audioAsset fileURL];

  return fileURL;
}

- (BOOL)updatePlaybackChannels:(id)channels
{
  channelsCopy = channels;
  v5 = [NSSet setWithArray:channelsCopy];
  playbackChannels = [(FMDBluetoothAccessory *)self playbackChannels];
  v7 = [NSSet setWithArray:playbackChannels];

  v8 = [v5 isEqualToSet:v7];
  [(FMDBluetoothAccessory *)self setPlaybackChannels:channelsCopy];
  [(FMDBluetoothAccessory *)self updateAudioChannelPlayingState:channelsCopy];

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    audioChannelInfo = [(FMDBluetoothAccessory *)self audioChannelInfo];
    v12 = 134218242;
    selfCopy = self;
    v14 = 2112;
    v15 = audioChannelInfo;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) setting channels %@", &v12, 0x16u);
  }

  return v8 ^ 1;
}

- (void)updateAudioChannelPlayingState:(id)state
{
  stateCopy = state;
  audioChannelInfo = [(FMDBluetoothAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100196DB4;
  v8[3] = &unk_1002CFE00;
  v9 = stateCopy;
  v7 = stateCopy;
  [allValues enumerateObjectsUsingBlock:v8];
}

- (FMDAudioAccessoryInfo)audioAccessoryInfo
{
  v3 = [FMDAudioAccessoryInfo alloc];
  serialNumbers = [(FMDBluetoothAccessory *)self serialNumbers];
  systemSerialNumber = [serialNumbers systemSerialNumber];
  serialNumbers2 = [(FMDBluetoothAccessory *)self serialNumbers];
  leftBudSerialNumber = [serialNumbers2 leftBudSerialNumber];
  serialNumbers3 = [(FMDBluetoothAccessory *)self serialNumbers];
  rightBudSerialNumber = [serialNumbers3 rightBudSerialNumber];
  v10 = [v3 initWithSystemSerialNumber:systemSerialNumber leftSerialNumber:leftBudSerialNumber rightSerialNumber:rightBudSerialNumber];

  return v10;
}

- (FMDBluetoothAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FMDBluetoothAccessory *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("name");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDBluetoothAccessory *)v5 setName:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("address");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDBluetoothAccessory *)v5 setAddress:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("scoUID");
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDBluetoothAccessory *)v5 setScoUID:v14];

    -[FMDBluetoothAccessory setVendorID:](v5, "setVendorID:", [coderCopy decodeIntForKey:@"vendorId"]);
    -[FMDBluetoothAccessory setProductID:](v5, "setProductID:", [coderCopy decodeIntForKey:@"productId"]);
    v15 = objc_opt_class();
    v16 = NSStringFromSelector("serialNumber");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(FMDBluetoothAccessory *)v5 setSerialNumber:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("firmwareRevision");
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(FMDBluetoothAccessory *)v5 setFirmwareRevision:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("hardwareRevision");
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    [(FMDBluetoothAccessory *)v5 setHardwareRevision:v23];

    v24 = [FMDAccessoryIdentifier alloc];
    address = [(FMDBluetoothAccessory *)v5 address];
    v26 = [v24 initWithAddress:address];
    [(FMDBluetoothAccessory *)v5 setAccessoryIdentifier:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumbers"];
    [(FMDBluetoothAccessory *)v5 setSerialNumbers:v27];

    v28 = objc_opt_class();
    v29 = NSStringFromSelector("bluetoothColorCode");
    v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];
    [(FMDBluetoothAccessory *)v5 setBluetoothColorCode:v30];

    v31 = objc_opt_class();
    v32 = NSStringFromSelector("styleDescriptor");
    v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];
    [(FMDBluetoothAccessory *)v5 setStyleDescriptor:v33];

    v34 = objc_opt_class();
    v35 = NSStringFromSelector("lastActiveTime");
    v36 = [coderCopy decodeObjectOfClass:v34 forKey:v35];
    [(FMDBluetoothAccessory *)v5 setLastActiveTime:v36];

    v37 = objc_opt_class();
    v38 = NSStringFromSelector("audioRoutingIdentifier");
    v39 = [coderCopy decodeObjectOfClass:v37 forKey:v38];
    [(FMDBluetoothAccessory *)v5 setAudioRoutingIdentifier:v39];

    v40 = objc_opt_class();
    v41 = NSStringFromSelector("audioAsset");
    v42 = [coderCopy decodeObjectOfClass:v40 forKey:v41];
    [(FMDBluetoothAccessory *)v5 setAudioAsset:v42];

    v43 = objc_opt_class();
    v44 = NSStringFromSelector("rssiUpdateDate");
    v45 = [coderCopy decodeObjectOfClass:v43 forKey:v44];
    [(FMDBluetoothAccessory *)v5 setRssiUpdateDate:v45];

    v46 = objc_opt_class();
    v47 = NSStringFromSelector("accessoryRSSI");
    v48 = [coderCopy decodeObjectOfClass:v46 forKey:v47];
    [(FMDBluetoothAccessory *)v5 setAccessoryRSSI:v48];

    v60[0] = objc_opt_class();
    v60[1] = objc_opt_class();
    v60[2] = objc_opt_class();
    v60[3] = objc_opt_class();
    v49 = [NSArray arrayWithObjects:v60 count:4];
    v50 = [NSSet setWithArray:v49];
    v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"beaconsV2"];
    [(FMDBluetoothAccessory *)v5 setBeacons:v51];

    v52 = objc_opt_class();
    v53 = [NSSet setWithObjects:v52, objc_opt_class(), 0];
    v54 = NSStringFromSelector("batteryInfo");
    v55 = [coderCopy decodeObjectOfClasses:v53 forKey:v54];
    [(FMDBluetoothAccessory *)v5 setBatteryInfo:v55];

    v56 = objc_opt_class();
    v57 = NSStringFromSelector("baUUID");
    v58 = [coderCopy decodeObjectOfClass:v56 forKey:v57];
    [(FMDBluetoothAccessory *)v5 setBaUUID:v58];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(FMDBluetoothAccessory *)self name];
  v6 = NSStringFromSelector("name");
  [coderCopy encodeObject:name forKey:v6];

  address = [(FMDBluetoothAccessory *)self address];
  v8 = NSStringFromSelector("address");
  [coderCopy encodeObject:address forKey:v8];

  scoUID = [(FMDBluetoothAccessory *)self scoUID];
  v10 = NSStringFromSelector("scoUID");
  [coderCopy encodeObject:scoUID forKey:v10];

  [coderCopy encodeInt:-[FMDBluetoothAccessory vendorID](self forKey:{"vendorID"), @"vendorId"}];
  [coderCopy encodeInt:-[FMDBluetoothAccessory productID](self forKey:{"productID"), @"productId"}];
  currentLastActiveTime = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v11 = NSStringFromSelector("lastActiveTime");
  [coderCopy encodeObject:currentLastActiveTime forKey:v11];

  serialNumber = [(FMDBluetoothAccessory *)self serialNumber];
  v13 = NSStringFromSelector("serialNumber");
  [coderCopy encodeObject:serialNumber forKey:v13];

  firmwareRevision = [(FMDBluetoothAccessory *)self firmwareRevision];
  v15 = NSStringFromSelector("firmwareRevision");
  [coderCopy encodeObject:firmwareRevision forKey:v15];

  hardwareRevision = [(FMDBluetoothAccessory *)self hardwareRevision];
  v17 = NSStringFromSelector("hardwareRevision");
  [coderCopy encodeObject:hardwareRevision forKey:v17];

  serialNumbers = [(FMDBluetoothAccessory *)self serialNumbers];
  v19 = NSStringFromSelector("serialNumbers");
  [coderCopy encodeObject:serialNumbers forKey:v19];

  bluetoothColorCode = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  v21 = NSStringFromSelector("bluetoothColorCode");
  [coderCopy encodeObject:bluetoothColorCode forKey:v21];

  styleDescriptor = [(FMDBluetoothAccessory *)self styleDescriptor];
  v23 = NSStringFromSelector("styleDescriptor");
  [coderCopy encodeObject:styleDescriptor forKey:v23];

  batteryInfo = self->_batteryInfo;
  v25 = NSStringFromSelector("batteryInfo");
  [coderCopy encodeObject:batteryInfo forKey:v25];

  audioRoutingIdentifier = [(FMDBluetoothAccessory *)self audioRoutingIdentifier];
  v27 = NSStringFromSelector("audioRoutingIdentifier");
  [coderCopy encodeObject:audioRoutingIdentifier forKey:v27];

  audioAsset = [(FMDBluetoothAccessory *)self audioAsset];
  v29 = NSStringFromSelector("audioAsset");
  [coderCopy encodeObject:audioAsset forKey:v29];

  accessoryRSSI = [(FMDBluetoothAccessory *)self accessoryRSSI];
  v31 = NSStringFromSelector("accessoryRSSI");
  [coderCopy encodeObject:accessoryRSSI forKey:v31];

  rssiUpdateDate = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  v33 = NSStringFromSelector("rssiUpdateDate");
  [coderCopy encodeObject:rssiUpdateDate forKey:v33];

  beacons = [(FMDBluetoothAccessory *)self beacons];
  [coderCopy encodeObject:beacons forKey:@"beaconsV2"];

  baUUID = [(FMDBluetoothAccessory *)self baUUID];
  v36 = NSStringFromSelector("baUUID");
  [coderCopy encodeObject:baUUID forKey:v36];
}

- (NSString)description
{
  name = [(FMDBluetoothAccessory *)self name];
  address = [(FMDBluetoothAccessory *)self address];
  vendorID = [(FMDBluetoothAccessory *)self vendorID];
  productID = [(FMDBluetoothAccessory *)self productID];
  baUUID = [(FMDBluetoothAccessory *)self baUUID];
  uUIDString = [baUUID UUIDString];
  v9 = [NSString stringWithFormat:@"FMDAccessory(0x%lx) name - %@, signature - %@, vendorID - %d, productID - %d, baUUID - %@", self, name, address, vendorID, productID, uUIDString];

  return v9;
}

- (id)deviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(FMDBluetoothAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  address = [(FMDBluetoothAccessory *)self address];
  [v3 setValue:address forKey:@"deviceDiscoveryId"];

  connectionStateAsString = [(FMDBluetoothAccessory *)self connectionStateAsString];
  [v3 setValue:connectionStateAsString forKey:@"connectionStatus"];

  currentLastActiveTime = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v54 = currentLastActiveTime;
  if (currentLastActiveTime)
  {
    v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [currentLastActiveTime fm_epoch]);
    [v3 setValue:v10 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
  }

  accessoryRSSI = [(FMDBluetoothAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:accessoryRSSI forKey:@"accessoryRSSI"];

  rssiUpdateDate = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  if (rssiUpdateDate)
  {
    rssiUpdateDate2 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [rssiUpdateDate2 fm_epoch]);
    [v3 fm_safeSetObject:v14 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7C00 forKey:@"accessoryRSSITimestamp"];
  }

  v15 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  batteryInfo = [(FMDBluetoothAccessory *)self batteryInfo];
  v17 = [batteryInfo countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v64;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(batteryInfo);
        }

        dictionaryValue = [*(*(&v63 + 1) + 8 * i) dictionaryValue];
        [v15 addObject:dictionaryValue];
      }

      v18 = [batteryInfo countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v18);
  }

  [v3 setValue:v15 forKey:@"batteryInfo"];
  v22 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  audioChannelInfo = [(FMDBluetoothAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];

  v25 = [allValues countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v60;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v60 != v27)
        {
          objc_enumerationMutation(allValues);
        }

        dictionaryValue2 = [*(*(&v59 + 1) + 8 * j) dictionaryValue];
        [v22 addObject:dictionaryValue2];
      }

      v26 = [allValues countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v26);
  }

  [v3 setValue:v22 forKey:@"audioChannels"];
  v30 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  beacons = [(FMDBluetoothAccessory *)self beacons];
  allValues2 = [beacons allValues];

  v33 = [allValues2 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v56;
    do
    {
      for (k = 0; k != v34; k = k + 1)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(allValues2);
        }

        dictionaryValue3 = [*(*(&v55 + 1) + 8 * k) dictionaryValue];
        [v30 addObject:dictionaryValue3];
      }

      v34 = [allValues2 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v34);
  }

  [v3 setValue:v30 forKey:@"beacons"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  firmwareRevision = [(FMDBluetoothAccessory *)self firmwareRevision];
  [v3 fm_safeSetObject:firmwareRevision forKey:@"firmwareVersion"];

  v39 = +[FMDSystemConfig sharedInstance];
  productVersion = [v39 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v41 = [NSString stringWithFormat:@"%i_%i", [(FMDBluetoothAccessory *)self vendorID], [(FMDBluetoothAccessory *)self productID]];
  [v3 setObject:v41 forKeyedSubscript:@"productType"];

  v42 = +[FMDSystemConfig sharedInstance];
  platform = [v42 platform];
  v44 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v44];
  otherDeviceInfo = [(FMDBluetoothAccessory *)self otherDeviceInfo];
  [v3 fm_safeSetObject:otherDeviceInfo forKey:@"otherDevices"];

  serialNumbers = [(FMDBluetoothAccessory *)self serialNumbers];
  dictionaryValue4 = [serialNumbers dictionaryValue];
  [v3 fm_safeSetObject:dictionaryValue4 forKey:@"serialNumbers"];

  bluetoothColorCode = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  [v3 fm_safeSetObject:bluetoothColorCode forKey:@"colorCode"];

  styleDescriptor = [(FMDBluetoothAccessory *)self styleDescriptor];
  dictionaryValue5 = [styleDescriptor dictionaryValue];
  [v3 fm_safeSetObject:dictionaryValue5 forKey:@"accessoryStyle"];

  baUUID = [(FMDBluetoothAccessory *)self baUUID];
  uUIDString = [baUUID UUIDString];
  [v3 fm_safelyMapKey:@"baUUID" toObject:uUIDString];

  return v3;
}

+ (id)volatileKeysToExcludeFromRegisterDigest
{
  v4[0] = @"connectionStatus";
  v4[1] = @"lastActiveTime";
  v4[2] = @"batteryInfo";
  v4[3] = @"accessoryRSSI";
  v4[4] = @"accessoryRSSITimestamp";
  v4[5] = @"beacons";
  v4[6] = @"firmwareVersion";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

- (id)lastKnownLocationDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(FMDBluetoothAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  currentLastActiveTime = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v8 = currentLastActiveTime;
  if (currentLastActiveTime)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [currentLastActiveTime fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
  }

  accessoryRSSI = [(FMDBluetoothAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:accessoryRSSI forKey:@"accessoryRSSI"];

  rssiUpdateDate = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  if (rssiUpdateDate)
  {
    rssiUpdateDate2 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [rssiUpdateDate2 fm_epoch]);
    [v3 fm_safeSetObject:v13 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7C00 forKey:@"accessoryRSSITimestamp"];
  }

  v14 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  batteryInfo = [(FMDBluetoothAccessory *)self batteryInfo];
  v16 = [batteryInfo countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(batteryInfo);
        }

        dictionaryValue = [*(*(&v46 + 1) + 8 * i) dictionaryValue];
        [v14 addObject:dictionaryValue];
      }

      v17 = [batteryInfo countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v17);
  }

  [v3 setValue:v14 forKey:@"batteryInfo"];
  v21 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  beacons = [(FMDBluetoothAccessory *)self beacons];
  allValues = [beacons allValues];

  v24 = [allValues countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(allValues);
        }

        dictionaryValue2 = [*(*(&v42 + 1) + 8 * j) dictionaryValue];
        [v21 addObject:dictionaryValue2];
      }

      v25 = [allValues countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v25);
  }

  [v3 setValue:v21 forKey:@"beacons"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  firmwareRevision = [(FMDBluetoothAccessory *)self firmwareRevision];
  [v3 fm_safeSetObject:firmwareRevision forKey:@"firmwareVersion"];

  v30 = +[FMDSystemConfig sharedInstance];
  productVersion = [v30 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v32 = [NSString stringWithFormat:@"%i_%i", [(FMDBluetoothAccessory *)self vendorID], [(FMDBluetoothAccessory *)self productID]];
  [v3 setObject:v32 forKeyedSubscript:@"productType"];

  v33 = +[FMDSystemConfig sharedInstance];
  platform = [v33 platform];
  v35 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v35];
  serialNumbers = [(FMDBluetoothAccessory *)self serialNumbers];
  dictionaryValue3 = [serialNumbers dictionaryValue];
  [v3 fm_safeSetObject:dictionaryValue3 forKey:@"serialNumbers"];

  bluetoothColorCode = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  [v3 fm_safeSetObject:bluetoothColorCode forKey:@"colorCode"];

  styleDescriptor = [(FMDBluetoothAccessory *)self styleDescriptor];
  dictionaryValue4 = [styleDescriptor dictionaryValue];
  [v3 fm_safeSetObject:dictionaryValue4 forKey:@"accessoryStyle"];

  return v3;
}

- (id)deviceInfoForHostRegister
{
  v3 = objc_alloc_init(NSMutableDictionary);
  name = [(FMDBluetoothAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  v7 = [NSString stringWithFormat:@"%i_%i", [(FMDBluetoothAccessory *)self vendorID], [(FMDBluetoothAccessory *)self productID]];
  [v3 setObject:v7 forKeyedSubscript:@"productType"];

  connectionStateAsString = [(FMDBluetoothAccessory *)self connectionStateAsString];
  [v3 setValue:connectionStateAsString forKey:@"connectionStatus"];

  v9 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  beacons = [(FMDBluetoothAccessory *)self beacons];
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
  currentLastActiveTime = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v18 = currentLastActiveTime;
  if (currentLastActiveTime)
  {
    v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [currentLastActiveTime fm_epoch]);
    [v3 setValue:v19 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
  }

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v20 = +[FMDSystemConfig sharedInstance];
  platform = [v20 platform];
  v22 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v22];
  accessoryRSSI = [(FMDBluetoothAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:accessoryRSSI forKey:@"accessoryRSSI"];

  rssiUpdateDate = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  if (rssiUpdateDate)
  {
    rssiUpdateDate2 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [rssiUpdateDate2 fm_epoch]);
    [v3 fm_safeSetObject:v26 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7C00 forKey:@"accessoryRSSITimestamp"];
  }

  return v3;
}

- (id)otherDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[FMDSystemConfig sharedInstance];
  deviceName = [v4 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:deviceName];

  currentLastActiveTime = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v7 = currentLastActiveTime;
  if (currentLastActiveTime)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [currentLastActiveTime fm_epoch]);
    [v3 setValue:v8 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
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

- (id)connectionStateAsString
{
  connectionState = [(FMDBluetoothAccessory *)self connectionState];
  if (connectionState > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1002D0390 + connectionState);
  }
}

@end