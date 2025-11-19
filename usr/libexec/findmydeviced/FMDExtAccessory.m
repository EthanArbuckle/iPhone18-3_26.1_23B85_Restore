@interface FMDExtAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)accessoryInfoChanged:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)nearby;
- (BOOL)updateComponnentsAvailability:(id)a3;
- (BOOL)updatePlaybackChannels:(id)a3;
- (FMDExtAccessory)initWithCoder:(id)a3;
- (FMDExtAccessory)initWithExtAccessoryInfo:(id)a3;
- (NSString)description;
- (id)connectionStateAsString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deviceInfo;
- (id)deviceInfoForHostRegister;
- (id)lastKnownLocationDeviceInfo;
- (id)otherDeviceInfo;
- (int64_t)connectionState;
- (unint64_t)hash;
- (void)_updateAudioChannelPlayingState:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithAccessory:(id)a3;
@end

@implementation FMDExtAccessory

- (FMDExtAccessory)initWithExtAccessoryInfo:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = FMDExtAccessory;
  v5 = [(FMDExtAccessory *)&v28 init];
  if (v5)
  {
    v6 = sub_10000BE38();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDExtAccessory initWithExtAccessoryInfo %@", buf, 0xCu);
    }

    v7 = [v4 deviceDiscoveryId];
    address = v5->_address;
    v5->_address = v7;

    v9 = [FMDAccessoryIdentifier alloc];
    v10 = [v4 accessoryIdentifier];
    v11 = [v9 initWithString:v10];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v11;

    v13 = [v4 accessoryType];
    accessoryType = v5->_accessoryType;
    v5->_accessoryType = v13;

    v15 = [v4 name];
    name = v5->_name;
    v5->_name = v15;

    v17 = [v4 serialNumbers];
    serialNumbers = v5->_serialNumbers;
    v5->_serialNumbers = v17;

    v19 = [v4 firmwareVersion];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v19;

    v21 = [v4 additionalInfo];
    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v21;

    v23 = [[FMDCommandContext alloc] initWithAccessory:v5];
    commandContext = v5->_commandContext;
    v5->_commandContext = v23;

    style = v5->_style;
    v5->_style = @"-1";

    batteryInfo = v5->_batteryInfo;
    v5->_batteryInfo = &off_1002E8DE0;
  }

  return v5;
}

- (void)updateWithAccessory:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = self;
    v7 = [(FMDExtAccessory *)v6 accessoryIdentifier];
    v8 = [v5 accessoryIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(FMDExtAccessory *)v6 accessoryType];
      v10 = [v5 accessoryType];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        v12 = [v5 lastActiveTime];
        [v12 timeIntervalSinceReferenceDate];
        v14 = v13;
        v15 = [(FMDExtAccessory *)v6 lastActiveTime];
        [v15 timeIntervalSinceReferenceDate];
        v17 = v16;

        if (v14 > v17)
        {
          [(FMDExtAccessory *)v6 setLastActiveTime:v12];
        }

        v18 = [v5 lastStatusUpdateTime];
        [v18 timeIntervalSinceReferenceDate];
        v20 = v19;
        v21 = [(FMDExtAccessory *)v6 lastStatusUpdateTime];
        [v21 timeIntervalSinceReferenceDate];
        v23 = v22;

        if (v20 > v23)
        {
          [(FMDExtAccessory *)v6 setLastStatusUpdateTime:v18];
        }

        v24 = [(FMDExtAccessory *)v6 style];

        if (!v24)
        {
          v25 = [v5 style];
          [(FMDExtAccessory *)v6 setStyle:v25];
        }

        v26 = [(FMDExtAccessory *)v6 name];

        if (!v26)
        {
          v27 = [v5 name];
          [(FMDExtAccessory *)v6 setName:v27];
        }

        v28 = [(FMDExtAccessory *)v6 firmwareVersion];

        if (!v28)
        {
          v29 = [v5 firmwareVersion];
          [(FMDExtAccessory *)v6 setFirmwareVersion:v29];
        }

        v30 = [(FMDExtAccessory *)v6 serialNumbers];

        if (!v30)
        {
          v31 = [v5 serialNumbers];
          [(FMDExtAccessory *)v6 setSerialNumbers:v31];
        }

        v32 = [v5 baUUID];
        v33 = sub_100002880();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          [v32 UUIDString];
          v34 = v40 = v18;
          v35 = [(FMDExtAccessory *)v6 baUUID];
          v36 = [v5 name];
          v37 = [v5 address];
          *buf = 138413058;
          v42 = v34;
          v43 = 2112;
          v44 = v35;
          v45 = 2112;
          v46 = v36;
          v47 = 2112;
          v48 = v37;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "FMDExtAccessory existing baUUID: %@, new baUUID %@ for %@, %@", buf, 0x2Au);

          v18 = v40;
        }

        v38 = [(FMDExtAccessory *)v6 baUUID];

        if (!v38)
        {
          [(FMDExtAccessory *)v6 setBaUUID:v32];
        }

        v39 = [v5 playbackChannels];
        [(FMDExtAccessory *)v6 updatePlaybackChannels:v39];

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
    }

    v12 = sub_10000BE38();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "got invalid accessory %@", buf, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)updatePlaybackChannels:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithArray:v4];
  v6 = [(FMDExtAccessory *)self playbackChannels];
  v7 = [NSSet setWithArray:v6];

  v8 = [v5 isEqualToSet:v7];
  [(FMDExtAccessory *)self setPlaybackChannels:v4];
  [(FMDExtAccessory *)self _updateAudioChannelPlayingState:v4];

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022B7BC(self, v9);
  }

  return v8 ^ 1;
}

- (BOOL)updateComponnentsAvailability:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(FMDExtAccessory *)self audioChannelInfo];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 channelName];
        v14 = [v4 containsObject:v13];

        if ([v12 availability] != v14)
        {
          [v12 setAvailability:v14];
          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)_updateAudioChannelPlayingState:(id)a3
{
  v4 = a3;
  v5 = [(FMDExtAccessory *)self audioChannelInfo];
  v6 = [v5 allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018826C;
  v8[3] = &unk_1002CFE00;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (unint64_t)hash
{
  v2 = [(FMDExtAccessory *)self accessoryIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)connectionState
{
  v3 = +[FMDExtConfigurationRegistry sharedInstance];
  v4 = [(FMDExtAccessory *)self accessoryType];
  v5 = [v3 configForAccessoryType:v4];

  v6 = [v5 flavorForFeature:@"connection"];
  if (v6)
  {
    v7 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"connection" flavor:v6];
    if (!v7)
    {
      v18 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_10000AA74;
    v38 = sub_100002B04;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = sub_10000BE38();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "start for connection status", buf, 2u);
    }

    v10 = [(FMDExtAccessory *)self accessoryIdentifier];
    v11 = [v10 stringValue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001887A8;
    v26[3] = &unk_1002CFE28;
    v28 = &v34;
    v29 = &v30;
    v12 = v8;
    v27 = v12;
    [v7 connectionStatusForAccessory:v11 withCompletion:v26];

    [v5 timeoutForFeature:@"connection"];
    v14 = dispatch_time(0, (v13 * 1000000000.0));
    v15 = dispatch_group_wait(v12, v14);
    if (v15 || v35[5])
    {
      p_super = sub_10000BE38();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v24 = [(FMDExtAccessory *)self name];
        v25 = v35[5];
        *buf = 138412802;
        v41 = v24;
        v42 = 2048;
        v43 = v15;
        v44 = 2112;
        v45 = v25;
        _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%@ connection status failed timeout %ld error %@", buf, 0x20u);
      }

      v17 = 1;
    }

    else
    {
      v20 = sub_10000BE38();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(FMDExtAccessory *)self name];
        v22 = *(v31 + 24);
        *buf = 138412546;
        v41 = v21;
        v42 = 1024;
        LODWORD(v43) = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ connection status success %d", buf, 0x12u);
      }

      if (*(v31 + 24) != 1)
      {
        v17 = 0;
        v18 = 0;
LABEL_11:

        _Block_object_dispose(&v30, 8);
        _Block_object_dispose(&v34, 8);

        if (v17)
        {
          v18 = 0;
        }

        goto LABEL_16;
      }

      v23 = +[NSDate date];
      v17 = 0;
      p_super = &self->_lastActiveTime->super;
      self->_lastActiveTime = v23;
    }

    v18 = 1;
    goto LABEL_11;
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (BOOL)nearby
{
  v3 = sub_10000BE38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10022B854(v3);
  }

  return [(FMDExtAccessory *)self connectionState]== 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FMDExtAccessory allocWithZone:?]];
  v5 = [(FMDExtAccessory *)self accessoryIdentifier];
  [(FMDExtAccessory *)v4 setAccessoryIdentifier:v5];

  v6 = [(FMDExtAccessory *)self accessoryType];
  [(FMDExtAccessory *)v4 setAccessoryType:v6];

  v7 = [(FMDExtAccessory *)self name];
  [(FMDExtAccessory *)v4 setName:v7];

  v8 = [(FMDExtAccessory *)self firmwareVersion];
  [(FMDExtAccessory *)v4 setFirmwareVersion:v8];

  v9 = [(FMDExtAccessory *)self address];
  [(FMDExtAccessory *)v4 setAddress:v9];

  v10 = [(FMDExtAccessory *)self extensionId];
  [(FMDExtAccessory *)v4 setExtensionId:v10];

  v11 = [(FMDExtAccessory *)self serialNumbers];
  [(FMDExtAccessory *)v4 setSerialNumbers:v11];

  v12 = [(FMDExtAccessory *)self additionalInfo];
  [(FMDExtAccessory *)v4 setAdditionalInfo:v12];

  v13 = [(FMDExtAccessory *)self additionalInfo];
  [(FMDExtAccessory *)v4 setBatteryInfo:v13];

  v14 = [(FMDExtAccessory *)self lastActiveTime];
  [(FMDExtAccessory *)v4 setLastActiveTime:v14];

  v15 = [(FMDExtAccessory *)self lastStatusUpdateTime];
  [(FMDExtAccessory *)v4 setLastStatusUpdateTime:v15];

  v16 = [(FMDExtAccessory *)self lastDiscoveryDate];
  [(FMDExtAccessory *)v4 setLastDiscoveryDate:v16];

  v17 = [(FMDExtAccessory *)self style];
  [(FMDExtAccessory *)v4 setStyle:v17];

  v18 = [(FMDExtAccessory *)self baUUID];
  [(FMDExtAccessory *)v4 setBaUUID:v18];

  v19 = [(FMDExtAccessory *)self commandContext];
  [(FMDExtAccessory *)v4 setCommandContext:v19];

  v20 = [(FMDExtAccessory *)self playbackChannels];
  [(FMDExtAccessory *)v4 setPlaybackChannels:v20];

  v21 = [(FMDExtAccessory *)self audioChannelInfo];
  [(FMDExtAccessory *)v4 setAudioChannelInfo:v21];

  return v4;
}

- (id)connectionStateAsString
{
  v2 = [(FMDExtAccessory *)self connectionState];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1002CFE48[v2];
  }
}

- (FMDExtAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDExtAccessory *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("accessoryIdentifier");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];

    v9 = [[FMDAccessoryIdentifier alloc] initWithString:v8];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("accessoryType");
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    accessoryType = v5->_accessoryType;
    v5->_accessoryType = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("name");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    name = v5->_name;
    v5->_name = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector("firmwareVersion");
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromSelector("address");
    v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
    address = v5->_address;
    v5->_address = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("extensionId");
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    extensionId = v5->_extensionId;
    v5->_extensionId = v29;

    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v31, v32, objc_opt_class(), 0];
    v34 = NSStringFromSelector("serialNumber");
    v35 = [v4 decodeObjectOfClasses:v33 forKey:v34];
    serialNumbers = v5->_serialNumbers;
    v5->_serialNumbers = v35;

    v37 = NSStringFromSelector("additionalInfo");
    v38 = [v4 decodeObjectOfClasses:v33 forKey:v37];
    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v38;

    v40 = NSStringFromSelector("batteryInfo");
    v41 = [v4 decodeObjectOfClasses:v33 forKey:v40];
    batteryInfo = v5->_batteryInfo;
    v5->_batteryInfo = v41;

    v43 = objc_opt_class();
    v44 = NSStringFromSelector("style");
    v45 = [v4 decodeObjectOfClass:v43 forKey:v44];
    style = v5->_style;
    v5->_style = v45;

    v47 = objc_opt_class();
    v48 = NSStringFromSelector("lastActiveTime");
    v49 = [v4 decodeObjectOfClass:v47 forKey:v48];
    lastActiveTime = v5->_lastActiveTime;
    v5->_lastActiveTime = v49;

    v51 = objc_opt_class();
    v52 = NSStringFromSelector("lastStatusUpdateTime");
    v53 = [v4 decodeObjectOfClass:v51 forKey:v52];
    lastStatusUpdateTime = v5->_lastStatusUpdateTime;
    v5->_lastStatusUpdateTime = v53;

    v55 = objc_opt_class();
    v56 = NSStringFromSelector("lastDiscoveryDate");
    v57 = [v4 decodeObjectOfClass:v55 forKey:v56];
    lastDiscoveryDate = v5->_lastDiscoveryDate;
    v5->_lastDiscoveryDate = v57;

    v59 = objc_opt_class();
    v60 = NSStringFromSelector("baUUID");
    v61 = [v4 decodeObjectOfClass:v59 forKey:v60];
    baUUID = v5->_baUUID;
    v5->_baUUID = v61;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDExtAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  v7 = NSStringFromSelector("accessoryIdentifier");
  [v4 encodeObject:v6 forKey:v7];

  v8 = [(FMDExtAccessory *)self accessoryType];
  v9 = NSStringFromSelector("accessoryType");
  [v4 encodeObject:v8 forKey:v9];

  v10 = [(FMDExtAccessory *)self name];
  v11 = NSStringFromSelector("name");
  [v4 encodeObject:v10 forKey:v11];

  v12 = [(FMDExtAccessory *)self firmwareVersion];
  v13 = NSStringFromSelector("firmwareVersion");
  [v4 encodeObject:v12 forKey:v13];

  v14 = [(FMDExtAccessory *)self address];
  v15 = NSStringFromSelector("address");
  [v4 encodeObject:v14 forKey:v15];

  v16 = [(FMDExtAccessory *)self extensionId];
  v17 = NSStringFromSelector("extensionId");
  [v4 encodeObject:v16 forKey:v17];

  v18 = [(FMDExtAccessory *)self serialNumbers];
  v19 = NSStringFromSelector("serialNumbers");
  [v4 encodeObject:v18 forKey:v19];

  v20 = [(FMDExtAccessory *)self additionalInfo];
  v21 = NSStringFromSelector("additionalInfo");
  [v4 encodeObject:v20 forKey:v21];

  v22 = [(FMDExtAccessory *)self batteryInfo];
  v23 = NSStringFromSelector("batteryInfo");
  [v4 encodeObject:v22 forKey:v23];

  v24 = [(FMDExtAccessory *)self lastActiveTime];
  v25 = NSStringFromSelector("lastActiveTime");
  [v4 encodeObject:v24 forKey:v25];

  v26 = [(FMDExtAccessory *)self lastStatusUpdateTime];
  v27 = NSStringFromSelector("lastStatusUpdateTime");
  [v4 encodeObject:v26 forKey:v27];

  v28 = [(FMDExtAccessory *)self lastDiscoveryDate];
  v29 = NSStringFromSelector("lastDiscoveryDate");
  [v4 encodeObject:v28 forKey:v29];

  v30 = [(FMDExtAccessory *)self style];
  v31 = NSStringFromSelector("style");
  [v4 encodeObject:v30 forKey:v31];

  v33 = [(FMDExtAccessory *)self baUUID];
  v32 = NSStringFromSelector("baUUID");
  [v4 encodeObject:v33 forKey:v32];
}

- (NSString)description
{
  v3 = [(FMDExtAccessory *)self name];
  v4 = [(FMDExtAccessory *)self address];
  v5 = [(FMDExtAccessory *)self accessoryType];
  v6 = [(FMDExtAccessory *)self baUUID];
  v7 = [v6 UUIDString];
  v8 = [(FMDExtAccessory *)self accessoryIdentifier];
  v9 = [v8 stringValue];
  v10 = [NSString stringWithFormat:@"FMDAccessory(0x%lx) name - %@, MAC - %@, accessoryType - %@, baUUID - %@, accessoryIdentifier - %@", self, v3, v4, v5, v7, v9];

  return v10;
}

- (id)deviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDExtAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDExtAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDExtAccessory *)self address];
  [v3 setValue:v7 forKey:@"deviceDiscoveryId"];

  v8 = [(FMDExtAccessory *)self connectionStateAsString];
  [v3 setValue:v8 forKey:@"connectionStatus"];

  v9 = [(FMDExtAccessory *)self additionalInfo];
  if (v9)
  {
    v10 = v9;
    v11 = [(FMDExtAccessory *)self additionalInfo];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(FMDExtAccessory *)self additionalInfo];
      [v3 addEntriesFromDictionary:v13];
    }
  }

  v14 = [(FMDExtAccessory *)self lastActiveTime];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 fm_epoch]);
    [v3 setValue:v16 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
  }

  v17 = [(FMDExtAccessory *)self lastStatusUpdateTime];
  if (v17)
  {
    v18 = [(FMDExtAccessory *)self lastStatusUpdateTime];
    v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v18 fm_epoch]);
    [v3 fm_safeSetObject:v19 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7BB8 forKey:@"accessoryRSSITimestamp"];
  }

  v20 = [(FMDExtAccessory *)self batteryInfo];
  [v3 setValue:v20 forKey:@"batteryInfo"];

  v21 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = [(FMDExtAccessory *)self audioChannelInfo];
  v23 = [v22 allValues];

  v24 = [v23 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v49;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v48 + 1) + 8 * i) dictionaryValue];
        [v21 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v25);
  }

  [v3 setValue:v21 forKey:@"audioChannels"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  v29 = [(FMDExtAccessory *)self firmwareVersion];
  [v3 fm_safeSetObject:v29 forKey:@"firmwareVersion"];

  v30 = +[FMDSystemConfig sharedInstance];
  v31 = [v30 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v31];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v32 = [(FMDExtAccessory *)self accessoryType];
  v33 = [NSString stringWithFormat:@"%@", v32];
  [v3 setObject:v33 forKeyedSubscript:@"productType"];

  v34 = +[FMDExtConfigurationRegistry sharedInstance];
  v35 = [(FMDExtAccessory *)self accessoryType];
  v36 = [v34 configForAccessoryType:v35];

  v37 = [v36 version];
  [v3 setObject:v37 forKeyedSubscript:@"cachedConfigVersion"];

  v38 = +[FMDSystemConfig sharedInstance];
  v39 = [v38 platform];
  v40 = [NSString stringWithFormat:@"%@_proxy", v39];

  [v3 fm_safelyMapKey:@"platform" toObject:v40];
  v41 = [(FMDExtAccessory *)self otherDeviceInfo];
  [v3 fm_safeSetObject:v41 forKey:@"otherDevices"];

  v42 = [(FMDExtAccessory *)self serialNumbers];
  [v3 fm_safeSetObject:v42 forKey:@"serialNumbers"];

  v43 = [(FMDExtAccessory *)self style];
  [v3 fm_safeSetObject:v43 forKey:@"deviceColor"];

  v44 = [(FMDExtAccessory *)self baUUID];
  v45 = [v44 UUIDString];
  [v3 fm_safelyMapKey:@"baUUID" toObject:v45];

  v46 = sub_10000BE38();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v3;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "device Info = %@", buf, 0xCu);
  }

  return v3;
}

+ (id)volatileKeysToExcludeFromRegisterDigest
{
  v4[0] = @"connectionStatus";
  v4[1] = @"lastActiveTime";
  v4[2] = @"batteryInfo";
  v4[3] = @"accessoryRSSI";
  v4[4] = @"accessoryRSSITimestamp";
  v4[5] = @"firmwareVersion";
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (id)lastKnownLocationDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDExtAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDExtAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDExtAccessory *)self lastActiveTime];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
  }

  v10 = [(FMDExtAccessory *)self lastStatusUpdateTime];
  if (v10)
  {
    v11 = [(FMDExtAccessory *)self lastStatusUpdateTime];
    v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 fm_epoch]);
    [v3 fm_safeSetObject:v12 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7BB8 forKey:@"accessoryRSSITimestamp"];
  }

  v13 = [(FMDExtAccessory *)self batteryInfo];
  [v3 setValue:v13 forKey:@"batteryInfo"];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  v14 = [(FMDExtAccessory *)self firmwareVersion];
  [v3 fm_safeSetObject:v14 forKey:@"firmwareVersion"];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v16];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v17 = [(FMDExtAccessory *)self accessoryType];
  v18 = [NSString stringWithFormat:@"%@", v17];
  [v3 setObject:v18 forKeyedSubscript:@"productType"];

  v19 = +[FMDSystemConfig sharedInstance];
  v20 = [v19 platform];
  v21 = [NSString stringWithFormat:@"%@_proxy", v20];

  [v3 fm_safelyMapKey:@"platform" toObject:v21];
  v22 = [(FMDExtAccessory *)self serialNumbers];
  [v3 fm_safeSetObject:v22 forKey:@"serialNumbers"];

  v23 = [(FMDExtAccessory *)self style];
  [v3 fm_safeSetObject:v23 forKey:@"deviceColor"];

  return v3;
}

- (id)deviceInfoForHostRegister
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(FMDExtAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDExtAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDExtAccessory *)self accessoryType];
  v8 = [NSString stringWithFormat:@"%@", v7];
  [v3 setObject:v8 forKeyedSubscript:@"productType"];

  v9 = [(FMDExtAccessory *)self connectionStateAsString];
  [v3 setValue:v9 forKey:@"connectionStatus"];

  v10 = [(FMDExtAccessory *)self lastActiveTime];
  v11 = v10;
  if (v10)
  {
    v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 fm_epoch]);
    [v3 setValue:v12 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
  }

  v13 = [(FMDExtAccessory *)self lastStatusUpdateTime];
  if (v13)
  {
    v14 = [(FMDExtAccessory *)self lastStatusUpdateTime];
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 fm_epoch]);
    [v3 fm_safeSetObject:v15 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7BB8 forKey:@"accessoryRSSITimestamp"];
  }

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v16 = +[FMDSystemConfig sharedInstance];
  v17 = [v16 platform];
  v18 = [NSString stringWithFormat:@"%@_proxy", v17];

  [v3 fm_safelyMapKey:@"platform" toObject:v18];

  return v3;
}

- (id)otherDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[FMDSystemConfig sharedInstance];
  v5 = [v4 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:v5];

  v6 = [(FMDExtAccessory *)self lastActiveTime];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 fm_epoch]);
    [v3 setValue:v8 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
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

- (BOOL)accessoryInfoChanged:(id)a3
{
  v4 = a3;
  v5 = [(FMDExtAccessory *)self accessoryIdentifier];
  v6 = [v4 accessoryIdentifier];
  if (([v5 isEqual:v6] & 1) == 0)
  {

    goto LABEL_12;
  }

  v7 = [(FMDExtAccessory *)self accessoryType];
  v8 = [v4 accessoryType];
  v9 = [v7 isEqualToString:v8];

  if (!v9)
  {
LABEL_12:
    v19 = sub_10000BE38();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10022B898(v19);
    }

    goto LABEL_18;
  }

  v10 = [(FMDExtAccessory *)self name];
  v11 = [v4 name];
  if (([v10 isEqualToString:v11] & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v12 = [(FMDExtAccessory *)self firmwareVersion];
  v13 = [v4 firmwareVersion];
  if (![v12 isEqualToString:v13])
  {
LABEL_16:

    goto LABEL_17;
  }

  v14 = [(FMDExtAccessory *)self serialNumbers];
  v15 = [v4 serialNumbers];
  if (![v14 isEqualToDictionary:v15])
  {

    goto LABEL_16;
  }

  v16 = [(FMDExtAccessory *)self address];
  v17 = [v4 address];
  v31 = [v16 isEqualToString:v17];

  if (!v31)
  {
    goto LABEL_18;
  }

  v10 = [(FMDExtAccessory *)self baUUID];
  if (!v10)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v11 = [v4 baUUID];
  if (!v11)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v12 = [(FMDExtAccessory *)self baUUID];
  v13 = [v4 baUUID];
  if (([v12 isEqual:v13] & 1) == 0)
  {
    goto LABEL_16;
  }

  v18 = 1;
LABEL_22:
  v22 = [(FMDExtAccessory *)self baUUID];
  if (!v22)
  {
    v25 = [v4 baUUID];
    if (v25)
    {
      v24 = 1;
      goto LABEL_31;
    }
  }

  v23 = [v4 baUUID];
  if (v23)
  {

    v24 = 0;
    if (v22)
    {
      goto LABEL_25;
    }

LABEL_30:
    v25 = 0;
LABEL_31:

    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v26 = [(FMDExtAccessory *)self baUUID];
  v24 = v26 != 0;

  if (!v22)
  {
    goto LABEL_30;
  }

LABEL_25:

  if (v18)
  {
LABEL_32:
  }

LABEL_33:
  if (v10)
  {
  }

  if (!v24)
  {
    v27 = [(FMDExtAccessory *)self additionalInfo];
    if (v27 || ([v4 additionalInfo], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = [(FMDExtAccessory *)self additionalInfo];
      v29 = [v4 additionalInfo];
      v30 = [v28 isEqualToDictionary:v29];

      if (v27)
      {
LABEL_42:

        v20 = v30 ^ 1;
        goto LABEL_19;
      }
    }

    else
    {
      v30 = 1;
    }

    goto LABEL_42;
  }

LABEL_18:
  v20 = 1;
LABEL_19:

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v4;
  if ([(FMDExtAccessory *)self accessoryInfoChanged:v5]|| ([(FMDExtAccessory *)self style], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_8;
  }

  v7 = v6;
  v8 = [(FMDExtAccessory *)self style];
  v9 = [(FMDExtAccessory *)v5 style];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v11 = 1;
LABEL_9:

  return v11;
}

@end