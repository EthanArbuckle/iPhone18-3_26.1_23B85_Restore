@interface FMDInternalLocalFindableAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (FMDInternalLocalFindableAccessory)initWithCoder:(id)coder;
- (FMDInternalLocalFindableAccessory)initWithLocalFindableAccessory:(id)accessory;
- (id)_computehash:(id)_computehash;
- (id)connectionStateAsString;
- (id)currentLastActiveTime;
- (id)deviceInfo;
- (id)lastKnownLocationDeviceInfo;
- (int64_t)connectionState;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDInternalLocalFindableAccessory

- (FMDInternalLocalFindableAccessory)initWithLocalFindableAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v33.receiver = self;
  v33.super_class = FMDInternalLocalFindableAccessory;
  v6 = [(FMDInternalLocalFindableAccessory *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localFindableAccessory, accessory);
    name = [accessoryCopy name];
    name = v7->_name;
    v7->_name = name;

    v10 = [FMDAccessoryIdentifier alloc];
    baUUID = [accessoryCopy baUUID];
    uUIDString = [baUUID UUIDString];
    v13 = [v10 initWithString:uUIDString];
    accessoryIdentifier = v7->_accessoryIdentifier;
    v7->_accessoryIdentifier = v13;

    baUUID2 = [accessoryCopy baUUID];
    baUUID = v7->_baUUID;
    v7->_baUUID = baUUID2;

    serialNumber = [accessoryCopy serialNumber];
    serialNumber = v7->_serialNumber;
    v7->_serialNumber = serialNumber;

    alternateSerialNumber = [accessoryCopy alternateSerialNumber];
    alternateSerialNumber = v7->_alternateSerialNumber;
    v7->_alternateSerialNumber = alternateSerialNumber;

    irkData = [accessoryCopy irkData];
    irkData = v7->_irkData;
    v7->_irkData = irkData;

    btAddress = [accessoryCopy btAddress];
    btAddress = v7->_btAddress;
    v7->_btAddress = btAddress;

    firmwareVersion = [accessoryCopy firmwareVersion];
    firmwareVersion = v7->_firmwareVersion;
    v7->_firmwareVersion = firmwareVersion;

    vendorId = [accessoryCopy vendorId];
    vendorId = v7->_vendorId;
    v7->_vendorId = vendorId;

    productId = [accessoryCopy productId];
    productId = v7->_productId;
    v7->_productId = productId;

    bluetoothColorCode = v7->_bluetoothColorCode;
    v7->_bluetoothColorCode = @"0_0";
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(FMDInternalLocalFindableAccessory *)self name];
  v6 = NSStringFromSelector("name");
  [coderCopy encodeObject:name forKey:v6];

  address = [(FMDInternalLocalFindableAccessory *)self address];
  v8 = NSStringFromSelector("address");
  [coderCopy encodeObject:address forKey:v8];

  vendorId = [(FMDInternalLocalFindableAccessory *)self vendorId];
  v10 = NSStringFromSelector("vendorId");
  [coderCopy encodeObject:vendorId forKey:v10];

  productId = [(FMDInternalLocalFindableAccessory *)self productId];
  v12 = NSStringFromSelector("productId");
  [coderCopy encodeObject:productId forKey:v12];

  currentLastActiveTime = [(FMDInternalLocalFindableAccessory *)self currentLastActiveTime];
  v13 = NSStringFromSelector("lastActiveTime");
  [coderCopy encodeObject:currentLastActiveTime forKey:v13];

  serialNumber = [(FMDInternalLocalFindableAccessory *)self serialNumber];
  v15 = NSStringFromSelector("serialNumber");
  [coderCopy encodeObject:serialNumber forKey:v15];

  alternateSerialNumber = [(FMDInternalLocalFindableAccessory *)self alternateSerialNumber];
  v17 = NSStringFromSelector("alternateSerialNumber");
  [coderCopy encodeObject:alternateSerialNumber forKey:v17];

  firmwareVersion = [(FMDInternalLocalFindableAccessory *)self firmwareVersion];
  v19 = NSStringFromSelector("firmwareVersion");
  [coderCopy encodeObject:firmwareVersion forKey:v19];

  bluetoothColorCode = [(FMDInternalLocalFindableAccessory *)self bluetoothColorCode];
  v21 = NSStringFromSelector("bluetoothColorCode");
  [coderCopy encodeObject:bluetoothColorCode forKey:v21];

  irkData = [(FMDInternalLocalFindableAccessory *)self irkData];
  v23 = NSStringFromSelector("irkData");
  [coderCopy encodeObject:irkData forKey:v23];

  btAddress = [(FMDInternalLocalFindableAccessory *)self btAddress];
  v25 = NSStringFromSelector("btAddress");
  [coderCopy encodeObject:btAddress forKey:v25];

  baUUID = [(FMDInternalLocalFindableAccessory *)self baUUID];
  v27 = NSStringFromSelector("baUUID");
  [coderCopy encodeObject:baUUID forKey:v27];
}

- (FMDInternalLocalFindableAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FMDInternalLocalFindableAccessory *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("name");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDInternalLocalFindableAccessory *)v5 setName:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("address");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDInternalLocalFindableAccessory *)v5 setAddress:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("vendorId");
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDInternalLocalFindableAccessory *)v5 setVendorId:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("productId");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(FMDInternalLocalFindableAccessory *)v5 setProductId:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("lastActiveTime");
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(FMDInternalLocalFindableAccessory *)v5 setLastActiveTime:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("serialNumber");
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    [(FMDInternalLocalFindableAccessory *)v5 setSerialNumber:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("alternateSerialNumber");
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    [(FMDInternalLocalFindableAccessory *)v5 setAlternateSerialNumber:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("firmwareVersion");
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    [(FMDInternalLocalFindableAccessory *)v5 setFirmwareVersion:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector("irkData");
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    [(FMDInternalLocalFindableAccessory *)v5 setIrkData:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector("btAddress");
    v35 = [coderCopy decodeObjectOfClass:v33 forKey:v34];
    [(FMDInternalLocalFindableAccessory *)v5 setBtAddress:v35];

    v36 = objc_opt_class();
    v37 = NSStringFromSelector("bluetoothColorCode");
    v38 = [coderCopy decodeObjectOfClass:v36 forKey:v37];
    [(FMDInternalLocalFindableAccessory *)v5 setBluetoothColorCode:v38];

    v39 = [FMDAccessoryIdentifier alloc];
    serialNumber = [(FMDInternalLocalFindableAccessory *)v5 serialNumber];
    v41 = [v39 initWithString:serialNumber];
    [(FMDInternalLocalFindableAccessory *)v5 setAccessoryIdentifier:v41];
  }

  return v5;
}

- (id)deviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(FMDInternalLocalFindableAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDInternalLocalFindableAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  address = [(FMDInternalLocalFindableAccessory *)self address];
  [v3 setValue:address forKey:@"deviceDiscoveryId"];

  connectionStateAsString = [(FMDInternalLocalFindableAccessory *)self connectionStateAsString];
  [v3 setValue:connectionStateAsString forKey:@"connectionStatus"];

  currentLastActiveTime = [(FMDInternalLocalFindableAccessory *)self currentLastActiveTime];
  v10 = currentLastActiveTime;
  if (currentLastActiveTime)
  {
    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [currentLastActiveTime fm_epoch]);
    [v3 setValue:v11 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BA0 forKey:@"lastActiveTime"];
  }

  localFindableAccessory = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  btAddress = [localFindableAccessory btAddress];
  [v3 fm_safeSetObject:btAddress forKey:@"btAddress"];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  localFindableAccessory2 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  firmwareVersion = [localFindableAccessory2 firmwareVersion];
  [v3 fm_safeSetObject:firmwareVersion forKey:@"firmwareVersion"];

  v16 = +[FMDSystemConfig sharedInstance];
  productVersion = [v16 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v39 = 0;
  vendorId = [(FMDInternalLocalFindableAccessory *)self vendorId];
  v19 = [NSScanner scannerWithString:vendorId];

  [v19 scanHexInt:&v39];
  v38 = 0;
  productId = [(FMDInternalLocalFindableAccessory *)self productId];
  v21 = [NSScanner scannerWithString:productId];

  [v21 scanHexInt:&v38];
  v22 = sub_100002880();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v41 = v39;
    v42 = 1024;
    v43 = v38;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "vendorId = %u productId = %u", buf, 0xEu);
  }

  v23 = [(FMDInternalLocalFindableAccessory *)self _deviceTypeFromVendorId:v39 productId:v38];
  v24 = +[FMDExtConfigurationRegistry sharedInstance];
  v25 = [v24 configForAccessoryType:v23];

  version = [v25 version];
  [v3 setObject:version forKeyedSubscript:@"cachedConfigVersion"];

  [v3 setObject:v23 forKeyedSubscript:@"productType"];
  v27 = +[FMDSystemConfig sharedInstance];
  platform = [v27 platform];
  v29 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v29];
  localFindableAccessory3 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  serialNumber = [localFindableAccessory3 serialNumber];
  [v3 fm_safeSetObject:serialNumber forKey:@"serialNumber"];

  localFindableAccessory4 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  alternateSerialNumber = [localFindableAccessory4 alternateSerialNumber];
  [v3 fm_safeSetObject:alternateSerialNumber forKey:@"alternateSerialNumber"];

  [v3 fm_safeSetObject:@"0_0" forKey:@"colorCode"];
  localFindableAccessory5 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  baUUID = [localFindableAccessory5 baUUID];
  uUIDString = [baUUID UUIDString];
  [v3 fm_safelyMapKey:@"baUUID" toObject:uUIDString];

  return v3;
}

- (id)lastKnownLocationDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(FMDInternalLocalFindableAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDInternalLocalFindableAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  currentLastActiveTime = [(FMDInternalLocalFindableAccessory *)self currentLastActiveTime];
  v8 = currentLastActiveTime;
  if (currentLastActiveTime)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [currentLastActiveTime fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BA0 forKey:@"lastActiveTime"];
  }

  localFindableAccessory = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  irkData = [localFindableAccessory irkData];
  [v3 fm_safeSetObject:irkData forKey:@"irkData"];

  localFindableAccessory2 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  btAddress = [localFindableAccessory2 btAddress];
  [v3 fm_safeSetObject:btAddress forKey:@"btAddress"];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  localFindableAccessory3 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  firmwareVersion = [localFindableAccessory3 firmwareVersion];
  [v3 fm_safeSetObject:firmwareVersion forKey:@"firmwareVersion"];

  v16 = +[FMDSystemConfig sharedInstance];
  productVersion = [v16 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  localFindableAccessory4 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  vendorId = [localFindableAccessory4 vendorId];
  localFindableAccessory5 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  productId = [localFindableAccessory5 productId];
  v22 = [NSString stringWithFormat:@"%@_%@", vendorId, productId];
  [v3 setObject:v22 forKeyedSubscript:@"productType"];

  v23 = +[FMDSystemConfig sharedInstance];
  platform = [v23 platform];
  v25 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v25];
  localFindableAccessory6 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  serialNumber = [localFindableAccessory6 serialNumber];
  [v3 fm_safeSetObject:serialNumber forKey:@"serialNumber"];

  localFindableAccessory7 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  alternateSerialNumber = [localFindableAccessory7 alternateSerialNumber];
  [v3 fm_safeSetObject:alternateSerialNumber forKey:@"alternateSerialNumber"];

  [v3 fm_safeSetObject:@"0_0" forKey:@"colorCode"];

  return v3;
}

+ (id)volatileKeysToExcludeFromRegisterDigest
{
  v4 = @"irkData";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (int64_t)connectionState
{
  localFindableAccessory = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  isConnected = [localFindableAccessory isConnected];

  return isConnected;
}

- (id)connectionStateAsString
{
  connectionState = [(FMDInternalLocalFindableAccessory *)self connectionState];
  if (connectionState > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1002CFB50 + connectionState);
  }
}

- (id)currentLastActiveTime
{
  localFindableAccessory = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  isConnected = [localFindableAccessory isConnected];

  if (isConnected)
  {
    lastActiveTime = +[NSDate date];
    [(FMDInternalLocalFindableAccessory *)self setLastActiveTime:lastActiveTime];
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

    lastActiveTime = [(FMDInternalLocalFindableAccessory *)self lastActiveTime];
  }

  return lastActiveTime;
}

- (id)_computehash:(id)_computehash
{
  v3 = [_computehash dataUsingEncoding:4];
  fm_sha256Hash = [v3 fm_sha256Hash];
  fm_hexString = [fm_sha256Hash fm_hexString];
  lowercaseString = [fm_hexString lowercaseString];

  return lowercaseString;
}

@end