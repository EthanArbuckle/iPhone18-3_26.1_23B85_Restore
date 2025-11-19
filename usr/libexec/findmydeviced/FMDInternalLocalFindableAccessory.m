@interface FMDInternalLocalFindableAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (FMDInternalLocalFindableAccessory)initWithCoder:(id)a3;
- (FMDInternalLocalFindableAccessory)initWithLocalFindableAccessory:(id)a3;
- (id)_computehash:(id)a3;
- (id)connectionStateAsString;
- (id)currentLastActiveTime;
- (id)deviceInfo;
- (id)lastKnownLocationDeviceInfo;
- (int64_t)connectionState;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDInternalLocalFindableAccessory

- (FMDInternalLocalFindableAccessory)initWithLocalFindableAccessory:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = FMDInternalLocalFindableAccessory;
  v6 = [(FMDInternalLocalFindableAccessory *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localFindableAccessory, a3);
    v8 = [v5 name];
    name = v7->_name;
    v7->_name = v8;

    v10 = [FMDAccessoryIdentifier alloc];
    v11 = [v5 baUUID];
    v12 = [v11 UUIDString];
    v13 = [v10 initWithString:v12];
    accessoryIdentifier = v7->_accessoryIdentifier;
    v7->_accessoryIdentifier = v13;

    v15 = [v5 baUUID];
    baUUID = v7->_baUUID;
    v7->_baUUID = v15;

    v17 = [v5 serialNumber];
    serialNumber = v7->_serialNumber;
    v7->_serialNumber = v17;

    v19 = [v5 alternateSerialNumber];
    alternateSerialNumber = v7->_alternateSerialNumber;
    v7->_alternateSerialNumber = v19;

    v21 = [v5 irkData];
    irkData = v7->_irkData;
    v7->_irkData = v21;

    v23 = [v5 btAddress];
    btAddress = v7->_btAddress;
    v7->_btAddress = v23;

    v25 = [v5 firmwareVersion];
    firmwareVersion = v7->_firmwareVersion;
    v7->_firmwareVersion = v25;

    v27 = [v5 vendorId];
    vendorId = v7->_vendorId;
    v7->_vendorId = v27;

    v29 = [v5 productId];
    productId = v7->_productId;
    v7->_productId = v29;

    bluetoothColorCode = v7->_bluetoothColorCode;
    v7->_bluetoothColorCode = @"0_0";
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDInternalLocalFindableAccessory *)self name];
  v6 = NSStringFromSelector("name");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDInternalLocalFindableAccessory *)self address];
  v8 = NSStringFromSelector("address");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDInternalLocalFindableAccessory *)self vendorId];
  v10 = NSStringFromSelector("vendorId");
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(FMDInternalLocalFindableAccessory *)self productId];
  v12 = NSStringFromSelector("productId");
  [v4 encodeObject:v11 forKey:v12];

  v28 = [(FMDInternalLocalFindableAccessory *)self currentLastActiveTime];
  v13 = NSStringFromSelector("lastActiveTime");
  [v4 encodeObject:v28 forKey:v13];

  v14 = [(FMDInternalLocalFindableAccessory *)self serialNumber];
  v15 = NSStringFromSelector("serialNumber");
  [v4 encodeObject:v14 forKey:v15];

  v16 = [(FMDInternalLocalFindableAccessory *)self alternateSerialNumber];
  v17 = NSStringFromSelector("alternateSerialNumber");
  [v4 encodeObject:v16 forKey:v17];

  v18 = [(FMDInternalLocalFindableAccessory *)self firmwareVersion];
  v19 = NSStringFromSelector("firmwareVersion");
  [v4 encodeObject:v18 forKey:v19];

  v20 = [(FMDInternalLocalFindableAccessory *)self bluetoothColorCode];
  v21 = NSStringFromSelector("bluetoothColorCode");
  [v4 encodeObject:v20 forKey:v21];

  v22 = [(FMDInternalLocalFindableAccessory *)self irkData];
  v23 = NSStringFromSelector("irkData");
  [v4 encodeObject:v22 forKey:v23];

  v24 = [(FMDInternalLocalFindableAccessory *)self btAddress];
  v25 = NSStringFromSelector("btAddress");
  [v4 encodeObject:v24 forKey:v25];

  v26 = [(FMDInternalLocalFindableAccessory *)self baUUID];
  v27 = NSStringFromSelector("baUUID");
  [v4 encodeObject:v26 forKey:v27];
}

- (FMDInternalLocalFindableAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDInternalLocalFindableAccessory *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("name");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDInternalLocalFindableAccessory *)v5 setName:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("address");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDInternalLocalFindableAccessory *)v5 setAddress:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("vendorId");
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDInternalLocalFindableAccessory *)v5 setVendorId:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("productId");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(FMDInternalLocalFindableAccessory *)v5 setProductId:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("lastActiveTime");
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    [(FMDInternalLocalFindableAccessory *)v5 setLastActiveTime:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("serialNumber");
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    [(FMDInternalLocalFindableAccessory *)v5 setSerialNumber:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("alternateSerialNumber");
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    [(FMDInternalLocalFindableAccessory *)v5 setAlternateSerialNumber:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("firmwareVersion");
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    [(FMDInternalLocalFindableAccessory *)v5 setFirmwareVersion:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector("irkData");
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    [(FMDInternalLocalFindableAccessory *)v5 setIrkData:v32];

    v33 = objc_opt_class();
    v34 = NSStringFromSelector("btAddress");
    v35 = [v4 decodeObjectOfClass:v33 forKey:v34];
    [(FMDInternalLocalFindableAccessory *)v5 setBtAddress:v35];

    v36 = objc_opt_class();
    v37 = NSStringFromSelector("bluetoothColorCode");
    v38 = [v4 decodeObjectOfClass:v36 forKey:v37];
    [(FMDInternalLocalFindableAccessory *)v5 setBluetoothColorCode:v38];

    v39 = [FMDAccessoryIdentifier alloc];
    v40 = [(FMDInternalLocalFindableAccessory *)v5 serialNumber];
    v41 = [v39 initWithString:v40];
    [(FMDInternalLocalFindableAccessory *)v5 setAccessoryIdentifier:v41];
  }

  return v5;
}

- (id)deviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDInternalLocalFindableAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDInternalLocalFindableAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDInternalLocalFindableAccessory *)self address];
  [v3 setValue:v7 forKey:@"deviceDiscoveryId"];

  v8 = [(FMDInternalLocalFindableAccessory *)self connectionStateAsString];
  [v3 setValue:v8 forKey:@"connectionStatus"];

  v9 = [(FMDInternalLocalFindableAccessory *)self currentLastActiveTime];
  v10 = v9;
  if (v9)
  {
    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 fm_epoch]);
    [v3 setValue:v11 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BA0 forKey:@"lastActiveTime"];
  }

  v12 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v13 = [v12 btAddress];
  [v3 fm_safeSetObject:v13 forKey:@"btAddress"];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  v14 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v15 = [v14 firmwareVersion];
  [v3 fm_safeSetObject:v15 forKey:@"firmwareVersion"];

  v16 = +[FMDSystemConfig sharedInstance];
  v17 = [v16 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v17];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v39 = 0;
  v18 = [(FMDInternalLocalFindableAccessory *)self vendorId];
  v19 = [NSScanner scannerWithString:v18];

  [v19 scanHexInt:&v39];
  v38 = 0;
  v20 = [(FMDInternalLocalFindableAccessory *)self productId];
  v21 = [NSScanner scannerWithString:v20];

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

  v26 = [v25 version];
  [v3 setObject:v26 forKeyedSubscript:@"cachedConfigVersion"];

  [v3 setObject:v23 forKeyedSubscript:@"productType"];
  v27 = +[FMDSystemConfig sharedInstance];
  v28 = [v27 platform];
  v29 = [NSString stringWithFormat:@"%@_proxy", v28];

  [v3 fm_safelyMapKey:@"platform" toObject:v29];
  v30 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v31 = [v30 serialNumber];
  [v3 fm_safeSetObject:v31 forKey:@"serialNumber"];

  v32 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v33 = [v32 alternateSerialNumber];
  [v3 fm_safeSetObject:v33 forKey:@"alternateSerialNumber"];

  [v3 fm_safeSetObject:@"0_0" forKey:@"colorCode"];
  v34 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v35 = [v34 baUUID];
  v36 = [v35 UUIDString];
  [v3 fm_safelyMapKey:@"baUUID" toObject:v36];

  return v3;
}

- (id)lastKnownLocationDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDInternalLocalFindableAccessory *)self name];
  [v3 setValue:v4 forKey:@"deviceName"];

  v5 = [(FMDInternalLocalFindableAccessory *)self accessoryIdentifier];
  v6 = [v5 stringValue];
  [v3 setValue:v6 forKey:@"udid"];

  v7 = [(FMDInternalLocalFindableAccessory *)self currentLastActiveTime];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BA0 forKey:@"lastActiveTime"];
  }

  v10 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v11 = [v10 irkData];
  [v3 fm_safeSetObject:v11 forKey:@"irkData"];

  v12 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v13 = [v12 btAddress];
  [v3 fm_safeSetObject:v13 forKey:@"btAddress"];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  v14 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v15 = [v14 firmwareVersion];
  [v3 fm_safeSetObject:v15 forKey:@"firmwareVersion"];

  v16 = +[FMDSystemConfig sharedInstance];
  v17 = [v16 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:v17];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v18 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v19 = [v18 vendorId];
  v20 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v21 = [v20 productId];
  v22 = [NSString stringWithFormat:@"%@_%@", v19, v21];
  [v3 setObject:v22 forKeyedSubscript:@"productType"];

  v23 = +[FMDSystemConfig sharedInstance];
  v24 = [v23 platform];
  v25 = [NSString stringWithFormat:@"%@_proxy", v24];

  [v3 fm_safelyMapKey:@"platform" toObject:v25];
  v26 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v27 = [v26 serialNumber];
  [v3 fm_safeSetObject:v27 forKey:@"serialNumber"];

  v28 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v29 = [v28 alternateSerialNumber];
  [v3 fm_safeSetObject:v29 forKey:@"alternateSerialNumber"];

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
  v2 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v3 = [v2 isConnected];

  return v3;
}

- (id)connectionStateAsString
{
  v2 = [(FMDInternalLocalFindableAccessory *)self connectionState];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1002CFB50 + v2);
  }
}

- (id)currentLastActiveTime
{
  v3 = [(FMDInternalLocalFindableAccessory *)self localFindableAccessory];
  v4 = [v3 isConnected];

  if (v4)
  {
    v5 = +[NSDate date];
    [(FMDInternalLocalFindableAccessory *)self setLastActiveTime:v5];
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

    v5 = [(FMDInternalLocalFindableAccessory *)self lastActiveTime];
  }

  return v5;
}

- (id)_computehash:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 fm_sha256Hash];
  v5 = [v4 fm_hexString];
  v6 = [v5 lowercaseString];

  return v6;
}

@end