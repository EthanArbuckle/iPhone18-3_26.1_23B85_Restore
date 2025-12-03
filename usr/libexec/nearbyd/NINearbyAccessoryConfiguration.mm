@interface NINearbyAccessoryConfiguration
- (BOOL)dataExchangeDisabledAndUsingParameterOverrides;
- (BOOL)isEqual:(id)equal;
- (NINearbyAccessoryConfiguration)initWithAccessoryData:(NSData *)accessoryData bluetoothPeerIdentifier:(NSUUID *)identifier error:(NSError *)error;
- (NINearbyAccessoryConfiguration)initWithCoder:(id)coder;
- (NINearbyAccessoryConfiguration)initWithData:(NSData *)data error:(NSError *)error;
- (NINearbyAccessoryConfiguration)initWithDataExchangeDisabledAndUsingParameterOverrides:(id)overrides;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NINearbyAccessoryConfiguration

- (NINearbyAccessoryConfiguration)initWithData:(NSData *)data error:(NSError *)error
{
  v7 = data;
  if (!v7)
  {
    v35 = +[NSAssertionHandler currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:714 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v39.receiver = self;
  v39.super_class = NINearbyAccessoryConfiguration;
  initInternal = [(NIConfiguration *)&v39 initInternal];
  if (!initInternal)
  {
    goto LABEL_22;
  }

  v9 = v7;
  bytes = [(NSData *)v7 bytes];
  v11 = [(NSData *)v7 length];
  __p = 0;
  v37 = 0;
  v38 = 0;
  sub_1000069DC(&__p, bytes, bytes + v11, v11);
  v12 = v37 - __p;
  if ((v37 - __p) < 0x14)
  {
    goto LABEL_5;
  }

  v14 = *__p;
  v15 = !*(__p + 1) && v14 == 1;
  v16 = *(__p + 1) && v14 == 1;
  v17 = *(__p + 8);
  v18 = *(__p + 9);
  v19 = &word_100564CAA;
  v20 = 16;
  do
  {
    if (__PAIR64__(v18, v17) == __PAIR64__(*v19, *(v19 - 1)))
    {
      v23 = 1;
      goto LABEL_25;
    }

    v19 += 2;
    v20 -= 4;
  }

  while (v20);
  v23 = 0;
LABEL_25:
  v24 = *(__p + 9) && v17 == 2;
  v25 = v24;
  v26 = v17 <= 2 ? v25 : 1;
  v27 = v14 > 1 || v15;
  if (((v27 | v16) & 1) == 0 || ((v23 | v26) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v23)
  {
    if (v17 == 2)
    {
      if (!*(__p + 9))
      {
        v28 = 32;
        v29 = 48;
        goto LABEL_51;
      }
    }

    else if (v17 == 1 && v18 < 3)
    {
      v28 = 2 * v18 + 19;
      v29 = 2 * v18 + 35;
LABEL_51:
      if (v12 != v29 || *(__p + 15) != v28)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    __assert_rtn("UWBConfigDataTotalLengthBytes", "NIFiRaDefinitions.h", 418, "false");
  }

  if (v26)
  {
    if (v12 < 0x30 || *(__p + 15) < 0x20u)
    {
      goto LABEL_5;
    }

    v12 = 48;
  }

  else
  {
    v12 = 0;
  }

LABEL_53:
  __dst = 0;
  v44 = 0;
  v47 = 0;
  memset(v48, 0, sizeof(v48));
  v42 = 0;
  v43 = 0;
  memcpy(&__dst, __p, v12);
  if (v41 <= 0x14u && ((1 << v41) & 0x100401) != 0 && v45 <= 1u && BYTE2(v47) <= 1u && HIBYTE(v47) <= 8u && ((1 << SHIBYTE(v47)) & 0x10D) != 0)
  {
    v30 = v46;
    v31 = [(NSData *)v7 copy];
    v32 = initInternal[4];
    initInternal[4] = v31;

    v33 = [[NIDiscoveryToken alloc] initWithDeviceAddress:v30];
    v34 = initInternal[6];
    initInternal[6] = v33;

    *(initInternal + 40) = 0;
    initInternal[9] = 0;
    v13 = 1;
    goto LABEL_19;
  }

LABEL_5:
  if (error)
  {
    sub_1002069FC(-5888, 0);
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if ((v13 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_24;
  }

LABEL_22:
  v21 = initInternal;
LABEL_24:

  return v21;
}

- (NINearbyAccessoryConfiguration)initWithAccessoryData:(NSData *)accessoryData bluetoothPeerIdentifier:(NSUUID *)identifier error:(NSError *)error
{
  v9 = accessoryData;
  v10 = identifier;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:747 description:{@"Invalid parameter not satisfying: %@", @"accessoryData"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:748 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  v12 = [(NINearbyAccessoryConfiguration *)self initWithData:v9 error:error];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bluetoothDeviceIdentifier, identifier);
    v13->_backgroundMode = 2;
    v14 = v13;
  }

  return v13;
}

- (NINearbyAccessoryConfiguration)initWithDataExchangeDisabledAndUsingParameterOverrides:(id)overrides
{
  overridesCopy = overrides;
  if (!overridesCopy)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:769 description:{@"Invalid parameter not satisfying: %@", @"parameterOverrides"}];
  }

  v23.receiver = self;
  v23.super_class = NINearbyAccessoryConfiguration;
  initInternal = [(NIConfiguration *)&v23 initInternal];
  if (initInternal)
  {
    v7 = objc_opt_new();
    [v7 setObject:&__kCFBooleanTrue forKey:@"DisableDataExchangeAndUseParameterOverrides"];
    [v7 addEntriesFromDictionary:overridesCopy];
    objc_storeStrong(&initInternal->_debugParameters, v7);
    v8 = [(NSDictionary *)initInternal->_debugParameters objectForKeyedSubscript:@"UWBSessionIdOverride"];
    unsignedLongLongValue = [v8 unsignedLongLongValue];
    v10 = [(NSDictionary *)initInternal->_debugParameters objectForKeyedSubscript:@"LocalAddressOverride"];
    unsignedLongLongValue2 = [v10 unsignedLongLongValue];
    v12 = [(NSDictionary *)initInternal->_debugParameters objectForKeyedSubscript:@"PeerAddressOverride"];
    v13 = (unsignedLongLongValue << 32) | (unsignedLongLongValue2 << 16) | [v12 unsignedLongLongValue];

    v22 = v13;
    v14 = [NSData dataWithBytes:&v22 length:8];
    rawData = initInternal->_rawData;
    initInternal->_rawData = v14;

    v16 = [NIDiscoveryToken alloc];
    v17 = [(NSDictionary *)initInternal->_debugParameters objectForKeyedSubscript:@"PeerAddressOverride"];
    v18 = -[NIDiscoveryToken initWithDeviceAddress:](v16, "initWithDeviceAddress:", [v17 unsignedShortValue]);
    accessoryDiscoveryToken = initInternal->_accessoryDiscoveryToken;
    initInternal->_accessoryDiscoveryToken = v18;

    initInternal->_cameraAssistanceEnabled = 0;
    initInternal->_backgroundMode = 0;
  }

  return initInternal;
}

- (BOOL)dataExchangeDisabledAndUsingParameterOverrides
{
  if (!+[NIPlatformInfo isInternalBuild])
  {
    return 0;
  }

  v3 = [(NSDictionary *)self->_debugParameters objectForKeyedSubscript:@"DisableDataExchangeAndUseParameterOverrides"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = NINearbyAccessoryConfiguration;
  v5 = [(NIConfiguration *)&v13 copyWithZone:?];
  [v5 setBluetoothDeviceIdentifier:self->_bluetoothDeviceIdentifier];
  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  [v5 setBackgroundMode:self->_backgroundMode];
  v6 = [(NSData *)self->_rawData copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NIDiscoveryToken *)self->_accessoryDiscoveryToken copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  if (self->_debugParameters)
  {
    v10 = [[NSDictionary allocWithZone:?]copyItems:"initWithDictionary:copyItems:", self->_debugParameters, 1];
    v11 = v5[8];
    v5[8] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NINearbyAccessoryConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_rawData forKey:@"rawData"];
  [coderCopy encodeObject:self->_accessoryDiscoveryToken forKey:@"accessoryDiscoveryToken"];
  [coderCopy encodeObject:self->_bluetoothDeviceIdentifier forKey:@"bluetoothDeviceIdentifier"];
  [coderCopy encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [coderCopy encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
  [coderCopy encodeInteger:self->_backgroundMode forKey:@"backgroundMode"];
}

- (NINearbyAccessoryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryDiscoveryToken"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawData"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothDeviceIdentifier"];
  v21 = objc_opt_class();
  v6 = [NSArray arrayWithObjects:&v21 count:1];
  v7 = [NSSet setWithArray:v6];

  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v20 count:3];
  v9 = [NSSet setWithArray:v8];

  v10 = [coderCopy decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v9 forKey:@"debugParameters"];
  v11 = [coderCopy decodeBoolForKey:@"cameraAssistanceEnabled"];
  v12 = [coderCopy decodeIntegerForKey:@"backgroundMode"];
  v19.receiver = self;
  v19.super_class = NINearbyAccessoryConfiguration;
  v13 = [(NIConfiguration *)&v19 initWithCoder:coderCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryDiscoveryToken, obj);
    objc_storeStrong(&v14->_debugParameters, v10);
    objc_storeStrong(&v14->_rawData, v17);
    objc_storeStrong(&v14->_bluetoothDeviceIdentifier, v5);
    v14->_cameraAssistanceEnabled = v11;
    if (v12 >= 3)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    v14->_backgroundMode = v15;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v12 = 1;
    }

    else
    {
      rawData = self->_rawData;
      accessoryConfigData = [(NINearbyAccessoryConfiguration *)v5 accessoryConfigData];
      v9 = [(NSData *)rawData isEqualToData:accessoryConfigData];

      bluetoothDeviceIdentifier = [(NINearbyAccessoryConfiguration *)v6 bluetoothDeviceIdentifier];
      if (bluetoothDeviceIdentifier)
      {
        v11 = 0;
      }

      else
      {
        v11 = self->_bluetoothDeviceIdentifier == 0;
      }

      bluetoothDeviceIdentifier2 = [(NINearbyAccessoryConfiguration *)v6 bluetoothDeviceIdentifier];
      v14 = [bluetoothDeviceIdentifier2 isEqual:self->_bluetoothDeviceIdentifier];

      cameraAssistanceEnabled = self->_cameraAssistanceEnabled;
      isCameraAssistanceEnabled = [(NINearbyAccessoryConfiguration *)v6 isCameraAssistanceEnabled];
      backgroundMode = self->_backgroundMode;
      backgroundMode = [(NINearbyAccessoryConfiguration *)v6 backgroundMode];
      v25 = backgroundMode;
      debugParameters = [(NINearbyAccessoryConfiguration *)v6 debugParameters];
      v19 = v9;
      if (debugParameters)
      {
        v23 = 0;
      }

      else
      {
        v23 = self->_debugParameters == 0;
      }

      debugParameters2 = [(NINearbyAccessoryConfiguration *)v6 debugParameters];
      v21 = [debugParameters2 isEqualToDictionary:self->_debugParameters];

      v12 = 0;
      if ((v19 & (v11 | v14)) == 1 && cameraAssistanceEnabled == isCameraAssistanceEnabled)
      {
        v12 = (v25 == backgroundMode) & (v23 | v21);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_rawData hash];
  v4 = [(NIDiscoveryToken *)self->_accessoryDiscoveryToken hash];
  return v3 ^ v4 ^ [(NSUUID *)self->_bluetoothDeviceIdentifier hash]^ self->_cameraAssistanceEnabled ^ self->_backgroundMode ^ 0x1F;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NINearbyAccessoryConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [[NSMutableString alloc] initWithString:&stru_1009B1428];
  accessoryDiscoveryToken = self->_accessoryDiscoveryToken;
  if (accessoryDiscoveryToken)
  {
    descriptionInternal = [(NIDiscoveryToken *)accessoryDiscoveryToken descriptionInternal];
    [v3 appendFormat:@"Device Token: %@", descriptionInternal];
  }

  else
  {
    [v3 appendString:@"Device Token: null"];
  }

  bluetoothDeviceIdentifier = self->_bluetoothDeviceIdentifier;
  if (bluetoothDeviceIdentifier)
  {
    uUIDString = [(NSUUID *)bluetoothDeviceIdentifier UUIDString];
    [v3 appendFormat:@", Bluetooth Device: %@", uUIDString];
  }

  else
  {
    [v3 appendString:{@", Bluetooth Device: null"}];
  }

  if (self->_cameraAssistanceEnabled)
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  [v3 appendFormat:@", isCameraAssistanceEnabled: %s", v8];
  [v3 appendFormat:@", backgroundMode: %s", +[NIInternalUtils NISessionBackgroundModeToString:](NIInternalUtils, "NISessionBackgroundModeToString:", self->_backgroundMode)];

  return v3;
}

@end