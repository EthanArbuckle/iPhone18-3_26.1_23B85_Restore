@interface HAPBLEPeripheralInfo
- (BOOL)isEqual:(id)a3;
- (HAPBLEPeripheralInfo)initWithCoder:(id)a3;
- (HAPBLEPeripheralInfo)initWithPeripheralInfo:(id)a3 advertisedProtocolVersion:(unint64_t)a4 previousProtocolVersion:(int64_t)a5 resumeSessionId:(unint64_t)a6 lastSeen:(double)a7 statusFlags:(id)a8 stateNumber:(id)a9 configNumber:(id)a10 categoryIdentifier:(id)a11 accessoryName:(id)a12;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)resetBroadcastKeyConfig;
- (void)saveBroadcastKey:(id)a3 keyUpdatedStateNumber:(id)a4 updatedTime:(double)a5;
- (void)updateAccessoryName:(id)a3;
- (void)updateBroadcastKey:(id)a3;
- (void)updateProtocolVersion:(unint64_t)a3;
@end

@implementation HAPBLEPeripheralInfo

- (HAPBLEPeripheralInfo)initWithPeripheralInfo:(id)a3 advertisedProtocolVersion:(unint64_t)a4 previousProtocolVersion:(int64_t)a5 resumeSessionId:(unint64_t)a6 lastSeen:(double)a7 statusFlags:(id)a8 stateNumber:(id)a9 configNumber:(id)a10 categoryIdentifier:(id)a11 accessoryName:(id)a12
{
  v28 = a3;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v18 = a11;
  v19 = a12;
  v29.receiver = self;
  v29.super_class = HAPBLEPeripheralInfo;
  v20 = [(HAPBLEPeripheralInfo *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_peripheralUUID, a3);
    v21->_advertisedProtocolVersion = a4;
    v21->_previousProtocolVersion = a5;
    v21->_resumeSessionId = a6;
    v21->_lastSeen = a7;
    objc_storeStrong(&v21->_statusFlags, a8);
    objc_storeStrong(&v21->_stateNumber, a9);
    objc_storeStrong(&v21->_configNumber, a10);
    objc_storeStrong(&v21->_categoryIdentifier, a11);
    objc_storeStrong(&v21->_accessoryName, a12);
  }

  return v21;
}

- (void)updateProtocolVersion:(unint64_t)a3
{
  if ([(HAPBLEPeripheralInfo *)self advertisedProtocolVersion]!= a3)
  {
    [(HAPBLEPeripheralInfo *)self setPreviousProtocolVersion:[(HAPBLEPeripheralInfo *)self advertisedProtocolVersion]];

    [(HAPBLEPeripheralInfo *)self setAdvertisedProtocolVersion:a3];
  }
}

- (void)saveBroadcastKey:(id)a3 keyUpdatedStateNumber:(id)a4 updatedTime:(double)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [(HAPBLEPeripheralInfo *)self broadcastKey];
  v10 = [v11 isEqualToData:v9];

  if ((v10 & 1) == 0)
  {
    [(HAPBLEPeripheralInfo *)self setBroadcastKey:v11];
    if (a5 > 0.0)
    {
      [(HAPBLEPeripheralInfo *)self setKeyUpdatedTime:a5];
    }

    [(HAPBLEPeripheralInfo *)self setKeyUpdatedStateNumber:v8];
  }
}

- (void)updateBroadcastKey:(id)a3
{
  v6 = a3;
  v4 = [(HAPBLEPeripheralInfo *)self broadcastKey];
  v5 = [v6 isEqualToData:v4];

  if ((v5 & 1) == 0)
  {
    [(HAPBLEPeripheralInfo *)self setBroadcastKey:v6];
    [(HAPBLEPeripheralInfo *)self setKeyUpdatedTime:CFAbsoluteTimeGetCurrent()];
  }
}

- (void)updateAccessoryName:(id)a3
{
  v7 = a3;
  v4 = [v7 length];
  v5 = [(HAPBLEPeripheralInfo *)self accessoryName];
  v6 = [v5 length];

  if (v4 > v6)
  {
    [(HAPBLEPeripheralInfo *)self setAccessoryName:v7];
  }
}

- (void)resetBroadcastKeyConfig
{
  [(HAPBLEPeripheralInfo *)self setKeyUpdatedStateNumber:0];
  [(HAPBLEPeripheralInfo *)self setBroadcastKey:0];

  [(HAPBLEPeripheralInfo *)self setKeyUpdatedTime:0.0];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEPeripheralInfo *)self peripheralUUID];
  [v4 encodeObject:v5 forKey:@"PUUI"];

  [v4 encodeInteger:-[HAPBLEPeripheralInfo advertisedProtocolVersion](self forKey:{"advertisedProtocolVersion"), @"PV"}];
  [v4 encodeInteger:-[HAPBLEPeripheralInfo previousProtocolVersion](self forKey:{"previousProtocolVersion"), @"PPV"}];
  [v4 encodeInt64:-[HAPBLEPeripheralInfo resumeSessionId](self forKey:{"resumeSessionId"), @"RSI"}];
  [(HAPBLEPeripheralInfo *)self lastSeen];
  [v4 encodeDouble:@"LS" forKey:?];
  v6 = [(HAPBLEPeripheralInfo *)self statusFlags];
  [v4 encodeObject:v6 forKey:@"SF"];

  v7 = [(HAPBLEPeripheralInfo *)self stateNumber];
  [v4 encodeObject:v7 forKey:@"SN"];

  v8 = [(HAPBLEPeripheralInfo *)self configNumber];
  [v4 encodeObject:v8 forKey:@"CF"];

  v9 = [(HAPBLEPeripheralInfo *)self categoryIdentifier];
  [v4 encodeObject:v9 forKey:@"CI"];

  v10 = [(HAPBLEPeripheralInfo *)self accessoryName];
  [v4 encodeObject:v10 forKey:@"AN"];

  v11 = [(HAPBLEPeripheralInfo *)self broadcastKey];
  [v4 encodeObject:v11 forKey:@"BK"];

  [(HAPBLEPeripheralInfo *)self keyUpdatedTime];
  [v4 encodeDouble:@"BKUT" forKey:?];
  v12 = [(HAPBLEPeripheralInfo *)self keyUpdatedStateNumber];
  [v4 encodeObject:v12 forKey:@"BKUSN"];
}

- (HAPBLEPeripheralInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HAPBLEPeripheralInfo;
  v5 = [(HAPBLEPeripheralInfo *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PUUI"];
    peripheralUUID = v5->_peripheralUUID;
    v5->_peripheralUUID = v6;

    v5->_advertisedProtocolVersion = [v4 decodeIntegerForKey:@"PV"];
    v5->_previousProtocolVersion = [v4 decodeIntegerForKey:@"PPV"];
    v5->_resumeSessionId = [v4 decodeInt64ForKey:@"RSI"];
    [v4 decodeDoubleForKey:@"LS"];
    v5->_lastSeen = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SF"];
    statusFlags = v5->_statusFlags;
    v5->_statusFlags = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SN"];
    stateNumber = v5->_stateNumber;
    v5->_stateNumber = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CF"];
    configNumber = v5->_configNumber;
    v5->_configNumber = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CI"];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AN"];
    accessoryName = v5->_accessoryName;
    v5->_accessoryName = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BK"];
    broadcastKey = v5->_broadcastKey;
    v5->_broadcastKey = v19;

    [v4 decodeDoubleForKey:@"BKUT"];
    v5->_keyUpdatedTime = v21;
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BKUSN"];
    keyUpdatedStateNumber = v5->_keyUpdatedStateNumber;
    v5->_keyUpdatedStateNumber = v22;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPBLEPeripheralInfo *)self peripheralUUID];
      v7 = [(HAPBLEPeripheralInfo *)v5 peripheralUUID];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HAPBLEPeripheralInfo *)self peripheralUUID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v16 = [(HAPBLEPeripheralInfo *)self peripheralUUID];
  v15 = [(HAPBLEPeripheralInfo *)self advertisedProtocolVersion];
  v3 = [(HAPBLEPeripheralInfo *)self previousProtocolVersion];
  v4 = [(HAPBLEPeripheralInfo *)self resumeSessionId];
  [(HAPBLEPeripheralInfo *)self lastSeen];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v6 = [(HAPBLEPeripheralInfo *)self statusFlags];
  v7 = [(HAPBLEPeripheralInfo *)self stateNumber];
  v8 = [(HAPBLEPeripheralInfo *)self configNumber];
  v9 = [(HAPBLEPeripheralInfo *)self categoryIdentifier];
  v10 = [(HAPBLEPeripheralInfo *)self accessoryName];
  [(HAPBLEPeripheralInfo *)self keyUpdatedTime];
  v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v12 = [(HAPBLEPeripheralInfo *)self keyUpdatedStateNumber];
  v13 = [NSString stringWithFormat:@"\nPeripheral Info:\n\tPeripheral UUID: %@, \n\tProtocol Version: %tu, \n\tPrevious Version: %tu, \n\tResume Id: %llu, \n\tLast Seen:%@, \n\tStatus Flags: %@, \n\tState Number:%@, \n\tConfig Number: %@, \n\tCategory Id: %@, \n\tName: %@, \n\tKeyUpdatedTime: %@, \n\tKeyUpdated State Number: %@", v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end