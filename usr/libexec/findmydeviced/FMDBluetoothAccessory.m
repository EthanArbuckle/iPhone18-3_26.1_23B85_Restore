@interface FMDBluetoothAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)nearby;
- (BOOL)playingSound;
- (BOOL)shouldStopSoundNow;
- (BOOL)updatePlaybackChannels:(id)a3;
- (FMDAudioAccessoryInfo)audioAccessoryInfo;
- (FMDBluetoothAccessory)init;
- (FMDBluetoothAccessory)initWithBluetoothManagerDevice:(id)a3;
- (FMDBluetoothAccessory)initWithCoder:(id)a3;
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
- (unint64_t)audioSafetyStatusForAirPods:(id)a3 knownStatus:(unint64_t)a4;
- (unint64_t)audioSafetyStatusForStereoPair:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateAudioChannelPlayingState:(id)a3;
- (void)updateAudioChannelsWithArray:(id)a3;
- (void)updateBeaconsWithArray:(id)a3;
- (void)updateWithAccessory:(id)a3;
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

- (FMDBluetoothAccessory)initWithBluetoothManagerDevice:(id)a3
{
  v4 = a3;
  v5 = [(FMDBluetoothAccessory *)self init];
  v6 = v5;
  if (v5)
  {
    [(FMDBluetoothAccessory *)v5 setBluetoothManagerDevice:v4];
    if ([v4 bluetoothConnected])
    {
      v7 = +[NSDate date];
      [(FMDBluetoothAccessory *)v6 setLastActiveTime:v7];
    }

    v8 = [v4 name];
    [(FMDBluetoothAccessory *)v6 setName:v8];

    v9 = [v4 scoUID];
    [(FMDBluetoothAccessory *)v6 setScoUID:v9];

    v10 = [v4 address];
    [(FMDBluetoothAccessory *)v6 setAddress:v10];

    v11 = [v4 bluetoothDevice];
    v12 = [v11 serialNumber];
    [(FMDBluetoothAccessory *)v6 setSerialNumber:v12];

    v13 = [v4 firmwareRevision];
    [(FMDBluetoothAccessory *)v6 setFirmwareRevision:v13];

    v14 = [v4 hardwareRevision];
    [(FMDBluetoothAccessory *)v6 setHardwareRevision:v14];

    v15 = [v4 beacons];
    [(FMDBluetoothAccessory *)v6 updateBeaconsWithArray:v15];

    v16 = [v4 audioChannelInfo];
    [(FMDBluetoothAccessory *)v6 updateAudioChannelsWithArray:v16];

    v17 = [[FMDAccessorySerialNumbers alloc] initWithDevice:v4];
    [(FMDBluetoothAccessory *)v6 setSerialNumbers:v17];

    v18 = [v4 bluetoothColorCode];
    [(FMDBluetoothAccessory *)v6 setBluetoothColorCode:v18];

    v19 = [v4 styleDescriptor];
    [(FMDBluetoothAccessory *)v6 setStyleDescriptor:v19];

    v20 = [v4 batteryInfo];
    [(FMDBluetoothAccessory *)v6 setBatteryInfo:v20];

    v6->_vendorID = [v4 vendorID];
    v6->_productID = [v4 productID];
    v21 = [v4 accessoryRSSI];
    [(FMDBluetoothAccessory *)v6 setAccessoryRSSI:v21];

    v22 = [v4 rssiUpdateDate];
    [(FMDBluetoothAccessory *)v6 setRssiUpdateDate:v22];

    v23 = [(FMDBluetoothAccessory *)v6 address];
    [(FMDBluetoothAccessory *)v6 setAudioRoutingIdentifier:v23];

    v24 = [FMDAccessoryIdentifier alloc];
    v25 = [(FMDBluetoothAccessory *)v6 address];
    v26 = [v24 initWithAddress:v25];
    [(FMDBluetoothAccessory *)v6 setAccessoryIdentifier:v26];
  }

  return v6;
}

- (void)updateWithAccessory:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_self();
      *buf = 134218240;
      v43 = self;
      v44 = 2048;
      v45 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) updateWithAccessory: FMDInternalAccessory(0x%lX)", buf, 0x16u);
    }

    v7 = v4;
    v8 = [v7 lastActiveTime];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;
    v11 = [(FMDBluetoothAccessory *)self lastActiveTime];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v10 > v13)
    {
      [(FMDBluetoothAccessory *)self setLastActiveTime:v8];
    }

    v14 = [v7 rssiUpdateDate];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    [v17 timeIntervalSinceReferenceDate];
    v19 = v18;

    if (v16 > v19)
    {
      [(FMDBluetoothAccessory *)self setRssiUpdateDate:v14];
    }

    v20 = [v7 beacons];
    v21 = [v20 allValues];
    [(FMDBluetoothAccessory *)self updateBeaconsWithArray:v21];

    v22 = [v7 serialNumbers];
    v23 = [(FMDBluetoothAccessory *)self serialNumbers];

    if (!v23)
    {
      [(FMDBluetoothAccessory *)self setSerialNumbers:v22];
    }

    v24 = [v7 bluetoothColorCode];
    v25 = [(FMDBluetoothAccessory *)self bluetoothColorCode];

    if (!v25)
    {
      [(FMDBluetoothAccessory *)self setBluetoothColorCode:v24];
    }

    v26 = [v7 styleDescriptor];
    v27 = [(FMDBluetoothAccessory *)self styleDescriptor];

    if (!v27)
    {
      [(FMDBluetoothAccessory *)self setStyleDescriptor:v26];
    }

    v40 = v26;
    v41 = v8;
    v28 = [v7 audioAsset];
    [(FMDBluetoothAccessory *)self setAudioAsset:v28];

    v29 = [v7 playbackChannels];
    [(FMDBluetoothAccessory *)self updatePlaybackChannels:v29];

    v30 = [v7 baUUID];
    v31 = sub_100002880();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v30 UUIDString];
      v33 = [(FMDBluetoothAccessory *)self baUUID];
      [v7 name];
      v34 = v39 = v22;
      [v7 address];
      v38 = v24;
      v36 = v35 = v14;
      *buf = 138413058;
      v43 = v32;
      v44 = 2112;
      v45 = v33;
      v46 = 2112;
      v47 = v34;
      v48 = 2112;
      v49 = v36;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory existing baUUID: %@, new baUUID %@ for %@, %@", buf, 0x2Au);

      v14 = v35;
      v24 = v38;

      v22 = v39;
    }

    v37 = [(FMDBluetoothAccessory *)self baUUID];

    if (!v37)
    {
      [(FMDBluetoothAccessory *)self setBaUUID:v30];
    }
  }
}

- (void)updateBeaconsWithArray:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(FMDBluetoothAccessory *)self beacons];
  [v5 addEntriesFromDictionary:v6];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100195C6C;
  v11 = &unk_1002D02F8;
  v12 = self;
  v13 = v5;
  v7 = v5;
  [v4 enumerateObjectsUsingBlock:&v8];

  [(FMDBluetoothAccessory *)self setBeacons:v7, v8, v9, v10, v11, v12];
}

- (void)updateAudioChannelsWithArray:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  [v5 addEntriesFromDictionary:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100195ED4;
  v10[3] = &unk_1002CFE00;
  v7 = v5;
  v11 = v7;
  [v4 enumerateObjectsUsingBlock:v10];

  [(FMDBluetoothAccessory *)self setAudioChannelInfo:v7];
  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(FMDBluetoothAccessory *)self audioChannelInfo];
    *buf = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) updateWithAccessory audio channels: %@", buf, 0x16u);
  }
}

- (unint64_t)hash
{
  v2 = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)connectionState
{
  v2 = [(FMDBluetoothAccessory *)self bluetoothManagerDevice];
  v3 = [v2 bluetoothConnected];

  return v3;
}

- (id)currentLastActiveTime
{
  v3 = [(FMDBluetoothAccessory *)self bluetoothManagerDevice];
  v4 = [v3 bluetoothConnected];

  if (v4)
  {
    v5 = +[NSDate date];
    [(FMDBluetoothAccessory *)self setLastActiveTime:v5];
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) updated lastActiveTime", &v9, 0xCu);
    }
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) fetching cached lastActiveTime", &v9, 0xCu);
    }

    v5 = [(FMDBluetoothAccessory *)self lastActiveTime];
  }

  return v5;
}

- (id)lastDiscoveryDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AAB4;
  v11 = sub_100002B24;
  v12 = 0;
  v2 = [(FMDBluetoothAccessory *)self beacons];
  v3 = [v2 allValues];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019622C;
  v6[3] = &unk_1002D0320;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)shouldStopSoundNow
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  v4 = [v3 count] == 2;

  v12 = v4;
  v5 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  v6 = [v5 allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001963B0;
  v8[3] = &unk_1002D0348;
  v8[4] = &v9;
  [v6 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (BOOL)playingSound
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  v3 = [v2 allValues];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001965A4;
  v5[3] = &unk_1002D0348;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (unint64_t)audioSafetyStatusForAirPods:(id)a3 knownStatus:(unint64_t)a4
{
  v5 = [a3 inEar];
  v6 = 1;
  if (a4 != 2)
  {
    v6 = 2;
  }

  if (v5 == 500)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  if (v5 != 2)
  {
    v6 = v7;
  }

  v8 = 3;
  if (v5 != 1)
  {
    v8 = a4;
  }

  if (!v5)
  {
    v8 = 0;
  }

  if (v5 <= 1)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)audioSafetyStatusForStereoPair:(id)a3
{
  v3 = [a3 onHeadStatus];
  if ((v3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_100258728[(v3 - 1)];
  }
}

- (unint64_t)audioSafetyStatus
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  v4 = [v3 allValues];
  v5 = [v4 copy];

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
    v16 = self;
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
  v3 = [(FMDBluetoothAccessory *)self bluetoothManagerDevice];
  v4 = [v3 beacons];
  if ([v4 count])
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
  v4 = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  [v3 setValue:v4 forKey:@"colorCode"];

  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(FMDBluetoothAccessory *)self batteryInfo];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) dictionaryValue];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v3 setValue:v5 forKey:@"batteryInfo"];

  return v3;
}

- (NSURL)audioURL
{
  v2 = [(FMDBluetoothAccessory *)self audioAsset];
  v3 = [v2 fileURL];

  return v3;
}

- (BOOL)updatePlaybackChannels:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithArray:v4];
  v6 = [(FMDBluetoothAccessory *)self playbackChannels];
  v7 = [NSSet setWithArray:v6];

  v8 = [v5 isEqualToSet:v7];
  [(FMDBluetoothAccessory *)self setPlaybackChannels:v4];
  [(FMDBluetoothAccessory *)self updateAudioChannelPlayingState:v4];

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(FMDBluetoothAccessory *)self audioChannelInfo];
    v12 = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDBluetoothAccessory(0x%lX) setting channels %@", &v12, 0x16u);
  }

  return v8 ^ 1;
}

- (void)updateAudioChannelPlayingState:(id)a3
{
  v4 = a3;
  v5 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  v6 = [v5 allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100196DB4;
  v8[3] = &unk_1002CFE00;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (FMDAudioAccessoryInfo)audioAccessoryInfo
{
  v3 = [FMDAudioAccessoryInfo alloc];
  v4 = [(FMDBluetoothAccessory *)self serialNumbers];
  v5 = [v4 systemSerialNumber];
  v6 = [(FMDBluetoothAccessory *)self serialNumbers];
  v7 = [v6 leftBudSerialNumber];
  v8 = [(FMDBluetoothAccessory *)self serialNumbers];
  v9 = [v8 rightBudSerialNumber];
  v10 = [v3 initWithSystemSerialNumber:v5 leftSerialNumber:v7 rightSerialNumber:v9];

  return v10;
}

- (FMDBluetoothAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDBluetoothAccessory *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("name");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDBluetoothAccessory *)v5 setName:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("address");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDBluetoothAccessory *)v5 setAddress:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("scoUID");
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDBluetoothAccessory *)v5 setScoUID:v14];

    -[FMDBluetoothAccessory setVendorID:](v5, "setVendorID:", [v4 decodeIntForKey:@"vendorId"]);
    -[FMDBluetoothAccessory setProductID:](v5, "setProductID:", [v4 decodeIntForKey:@"productId"]);
    v15 = objc_opt_class();
    v16 = NSStringFromSelector("serialNumber");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(FMDBluetoothAccessory *)v5 setSerialNumber:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("firmwareRevision");
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    [(FMDBluetoothAccessory *)v5 setFirmwareRevision:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("hardwareRevision");
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    [(FMDBluetoothAccessory *)v5 setHardwareRevision:v23];

    v24 = [FMDAccessoryIdentifier alloc];
    v25 = [(FMDBluetoothAccessory *)v5 address];
    v26 = [v24 initWithAddress:v25];
    [(FMDBluetoothAccessory *)v5 setAccessoryIdentifier:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumbers"];
    [(FMDBluetoothAccessory *)v5 setSerialNumbers:v27];

    v28 = objc_opt_class();
    v29 = NSStringFromSelector("bluetoothColorCode");
    v30 = [v4 decodeObjectOfClass:v28 forKey:v29];
    [(FMDBluetoothAccessory *)v5 setBluetoothColorCode:v30];

    v31 = objc_opt_class();
    v32 = NSStringFromSelector("styleDescriptor");
    v33 = [v4 decodeObjectOfClass:v31 forKey:v32];
    [(FMDBluetoothAccessory *)v5 setStyleDescriptor:v33];

    v34 = objc_opt_class();
    v35 = NSStringFromSelector("lastActiveTime");
    v36 = [v4 decodeObjectOfClass:v34 forKey:v35];
    [(FMDBluetoothAccessory *)v5 setLastActiveTime:v36];

    v37 = objc_opt_class();
    v38 = NSStringFromSelector("audioRoutingIdentifier");
    v39 = [v4 decodeObjectOfClass:v37 forKey:v38];
    [(FMDBluetoothAccessory *)v5 setAudioRoutingIdentifier:v39];

    v40 = objc_opt_class();
    v41 = NSStringFromSelector("audioAsset");
    v42 = [v4 decodeObjectOfClass:v40 forKey:v41];
    [(FMDBluetoothAccessory *)v5 setAudioAsset:v42];

    v43 = objc_opt_class();
    v44 = NSStringFromSelector("rssiUpdateDate");
    v45 = [v4 decodeObjectOfClass:v43 forKey:v44];
    [(FMDBluetoothAccessory *)v5 setRssiUpdateDate:v45];

    v46 = objc_opt_class();
    v47 = NSStringFromSelector("accessoryRSSI");
    v48 = [v4 decodeObjectOfClass:v46 forKey:v47];
    [(FMDBluetoothAccessory *)v5 setAccessoryRSSI:v48];

    v60[0] = objc_opt_class();
    v60[1] = objc_opt_class();
    v60[2] = objc_opt_class();
    v60[3] = objc_opt_class();
    v49 = [NSArray arrayWithObjects:v60 count:4];
    v50 = [NSSet setWithArray:v49];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"beaconsV2"];
    [(FMDBluetoothAccessory *)v5 setBeacons:v51];

    v52 = objc_opt_class();
    v53 = [NSSet setWithObjects:v52, objc_opt_class(), 0];
    v54 = NSStringFromSelector("batteryInfo");
    v55 = [v4 decodeObjectOfClasses:v53 forKey:v54];
    [(FMDBluetoothAccessory *)v5 setBatteryInfo:v55];

    v56 = objc_opt_class();
    v57 = NSStringFromSelector("baUUID");
    v58 = [v4 decodeObjectOfClass:v56 forKey:v57];
    [(FMDBluetoothAccessory *)v5 setBaUUID:v58];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDBluetoothAccessory *)self name];
  v6 = NSStringFromSelector("name");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDBluetoothAccessory *)self address];
  v8 = NSStringFromSelector("address");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDBluetoothAccessory *)self scoUID];
  v10 = NSStringFromSelector("scoUID");
  [v4 encodeObject:v9 forKey:v10];

  [v4 encodeInt:-[FMDBluetoothAccessory vendorID](self forKey:{"vendorID"), @"vendorId"}];
  [v4 encodeInt:-[FMDBluetoothAccessory productID](self forKey:{"productID"), @"productId"}];
  v37 = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v11 = NSStringFromSelector("lastActiveTime");
  [v4 encodeObject:v37 forKey:v11];

  v12 = [(FMDBluetoothAccessory *)self serialNumber];
  v13 = NSStringFromSelector("serialNumber");
  [v4 encodeObject:v12 forKey:v13];

  v14 = [(FMDBluetoothAccessory *)self firmwareRevision];
  v15 = NSStringFromSelector("firmwareRevision");
  [v4 encodeObject:v14 forKey:v15];

  v16 = [(FMDBluetoothAccessory *)self hardwareRevision];
  v17 = NSStringFromSelector("hardwareRevision");
  [v4 encodeObject:v16 forKey:v17];

  v18 = [(FMDBluetoothAccessory *)self serialNumbers];
  v19 = NSStringFromSelector("serialNumbers");
  [v4 encodeObject:v18 forKey:v19];

  v20 = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  v21 = NSStringFromSelector("bluetoothColorCode");
  [v4 encodeObject:v20 forKey:v21];

  v22 = [(FMDBluetoothAccessory *)self styleDescriptor];
  v23 = NSStringFromSelector("styleDescriptor");
  [v4 encodeObject:v22 forKey:v23];

  batteryInfo = self->_batteryInfo;
  v25 = NSStringFromSelector("batteryInfo");
  [v4 encodeObject:batteryInfo forKey:v25];

  v26 = [(FMDBluetoothAccessory *)self audioRoutingIdentifier];
  v27 = NSStringFromSelector("audioRoutingIdentifier");
  [v4 encodeObject:v26 forKey:v27];

  v28 = [(FMDBluetoothAccessory *)self audioAsset];
  v29 = NSStringFromSelector("audioAsset");
  [v4 encodeObject:v28 forKey:v29];

  v30 = [(FMDBluetoothAccessory *)self accessoryRSSI];
  v31 = NSStringFromSelector("accessoryRSSI");
  [v4 encodeObject:v30 forKey:v31];

  v32 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  v33 = NSStringFromSelector("rssiUpdateDate");
  [v4 encodeObject:v32 forKey:v33];

  v34 = [(FMDBluetoothAccessory *)self beacons];
  [v4 encodeObject:v34 forKey:@"beaconsV2"];

  v35 = [(FMDBluetoothAccessory *)self baUUID];
  v36 = NSStringFromSelector("baUUID");
  [v4 encodeObject:v35 forKey:v36];
}

- (NSString)description
{
  v3 = [(FMDBluetoothAccessory *)self name];
  v4 = [(FMDBluetoothAccessory *)self address];
  v5 = [(FMDBluetoothAccessory *)self vendorID];
  v6 = [(FMDBluetoothAccessory *)self productID];
  v7 = [(FMDBluetoothAccessory *)self baUUID];
  v8 = [v7 UUIDString];
  v9 = [NSString stringWithFormat:@"FMDAccessory(0x%lx) name - %@, signature - %@, vendorID - %d, productID - %d, baUUID - %@", self, v3, v4, v5, v6, v8];

  return v9;
}

- (id)deviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDBluetoothAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDBluetoothAccessory *)self address];
  [v3 setValue:v7 forKey:@"deviceDiscoveryId"];

  v8 = [(FMDBluetoothAccessory *)self connectionStateAsString];
  [v3 setValue:v8 forKey:@"connectionStatus"];

  v9 = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v54 = v9;
  if (v9)
  {
    v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 fm_epoch]);
    [v3 setValue:v10 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
  }

  v11 = [(FMDBluetoothAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:v11 forKey:@"accessoryRSSI"];

  v12 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  if (v12)
  {
    v13 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 fm_epoch]);
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
  v16 = [(FMDBluetoothAccessory *)self batteryInfo];
  v17 = [v16 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v63 + 1) + 8 * i) dictionaryValue];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v18);
  }

  [v3 setValue:v15 forKey:@"batteryInfo"];
  v22 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v23 = [(FMDBluetoothAccessory *)self audioChannelInfo];
  v24 = [v23 allValues];

  v25 = [v24 countByEnumeratingWithState:&v59 objects:v68 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v59 + 1) + 8 * j) dictionaryValue];
        [v22 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v26);
  }

  [v3 setValue:v22 forKey:@"audioChannels"];
  v30 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = [(FMDBluetoothAccessory *)self beacons];
  v32 = [v31 allValues];

  v33 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
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
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v55 + 1) + 8 * k) dictionaryValue];
        [v30 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v34);
  }

  [v3 setValue:v30 forKey:@"beacons"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  v38 = [(FMDBluetoothAccessory *)self firmwareRevision];
  [v3 fm_safeSetObject:v38 forKey:@"firmwareVersion"];

  v39 = +[FMDSystemConfig sharedInstance];
  v40 = [v39 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v40];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v41 = [NSString stringWithFormat:@"%i_%i", [(FMDBluetoothAccessory *)self vendorID], [(FMDBluetoothAccessory *)self productID]];
  [v3 setObject:v41 forKeyedSubscript:@"productType"];

  v42 = +[FMDSystemConfig sharedInstance];
  v43 = [v42 platform];
  v44 = [NSString stringWithFormat:@"%@_proxy", v43];

  [v3 fm_safelyMapKey:@"platform" toObject:v44];
  v45 = [(FMDBluetoothAccessory *)self otherDeviceInfo];
  [v3 fm_safeSetObject:v45 forKey:@"otherDevices"];

  v46 = [(FMDBluetoothAccessory *)self serialNumbers];
  v47 = [v46 dictionaryValue];
  [v3 fm_safeSetObject:v47 forKey:@"serialNumbers"];

  v48 = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  [v3 fm_safeSetObject:v48 forKey:@"colorCode"];

  v49 = [(FMDBluetoothAccessory *)self styleDescriptor];
  v50 = [v49 dictionaryValue];
  [v3 fm_safeSetObject:v50 forKey:@"accessoryStyle"];

  v51 = [(FMDBluetoothAccessory *)self baUUID];
  v52 = [v51 UUIDString];
  [v3 fm_safelyMapKey:@"baUUID" toObject:v52];

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
  v4 = [(FMDBluetoothAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
  }

  v10 = [(FMDBluetoothAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:v10 forKey:@"accessoryRSSI"];

  v11 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  if (v11)
  {
    v12 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 fm_epoch]);
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
  v15 = [(FMDBluetoothAccessory *)self batteryInfo];
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v46 + 1) + 8 * i) dictionaryValue];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v17);
  }

  [v3 setValue:v14 forKey:@"batteryInfo"];
  v21 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = [(FMDBluetoothAccessory *)self beacons];
  v23 = [v22 allValues];

  v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v42 + 1) + 8 * j) dictionaryValue];
        [v21 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v25);
  }

  [v3 setValue:v21 forKey:@"beacons"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  v29 = [(FMDBluetoothAccessory *)self firmwareRevision];
  [v3 fm_safeSetObject:v29 forKey:@"firmwareVersion"];

  v30 = +[FMDSystemConfig sharedInstance];
  v31 = [v30 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v31];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v32 = [NSString stringWithFormat:@"%i_%i", [(FMDBluetoothAccessory *)self vendorID], [(FMDBluetoothAccessory *)self productID]];
  [v3 setObject:v32 forKeyedSubscript:@"productType"];

  v33 = +[FMDSystemConfig sharedInstance];
  v34 = [v33 platform];
  v35 = [NSString stringWithFormat:@"%@_proxy", v34];

  [v3 fm_safelyMapKey:@"platform" toObject:v35];
  v36 = [(FMDBluetoothAccessory *)self serialNumbers];
  v37 = [v36 dictionaryValue];
  [v3 fm_safeSetObject:v37 forKey:@"serialNumbers"];

  v38 = [(FMDBluetoothAccessory *)self bluetoothColorCode];
  [v3 fm_safeSetObject:v38 forKey:@"colorCode"];

  v39 = [(FMDBluetoothAccessory *)self styleDescriptor];
  v40 = [v39 dictionaryValue];
  [v3 fm_safeSetObject:v40 forKey:@"accessoryStyle"];

  return v3;
}

- (id)deviceInfoForHostRegister
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(FMDBluetoothAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDBluetoothAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [NSString stringWithFormat:@"%i_%i", [(FMDBluetoothAccessory *)self vendorID], [(FMDBluetoothAccessory *)self productID]];
  [v3 setObject:v7 forKeyedSubscript:@"productType"];

  v8 = [(FMDBluetoothAccessory *)self connectionStateAsString];
  [v3 setValue:v8 forKey:@"connectionStatus"];

  v9 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [(FMDBluetoothAccessory *)self beacons];
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
  v17 = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v18 = v17;
  if (v17)
  {
    v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 fm_epoch]);
    [v3 setValue:v19 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
  }

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v20 = +[FMDSystemConfig sharedInstance];
  v21 = [v20 platform];
  v22 = [NSString stringWithFormat:@"%@_proxy", v21];

  [v3 fm_safelyMapKey:@"platform" toObject:v22];
  v23 = [(FMDBluetoothAccessory *)self accessoryRSSI];
  [v3 fm_safeSetObject:v23 forKey:@"accessoryRSSI"];

  v24 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
  if (v24)
  {
    v25 = [(FMDBluetoothAccessory *)self rssiUpdateDate];
    v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v25 fm_epoch]);
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
  v5 = [v4 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:v5];

  v6 = [(FMDBluetoothAccessory *)self currentLastActiveTime];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 fm_epoch]);
    [v3 setValue:v8 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7C00 forKey:@"lastActiveTime"];
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

- (id)connectionStateAsString
{
  v2 = [(FMDBluetoothAccessory *)self connectionState];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1002D0390 + v2);
  }
}

@end