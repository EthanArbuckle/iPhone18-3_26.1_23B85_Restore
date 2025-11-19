@interface FMDNanoRegistryAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)isEqual:(id)a3;
- (BOOL)paired;
- (BOOL)tinkerCapable;
- (BOOL)tinkerPaired;
- (FMDNanoRegistryAccessory)initWithCoder:(id)a3;
- (FMDNanoRegistryAccessory)initWithNRDevice:(id)a3;
- (NSString)buildVersion;
- (NSString)description;
- (NSString)name;
- (NSString)productType;
- (NSString)productVersion;
- (NSString)serialNumber;
- (NSString)udid;
- (NSUUID)pairingId;
- (id)completeDeviceInfo;
- (id)deviceInfoForHostRegister;
- (id)lastDiscoveryDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDNanoRegistryAccessory

- (id)deviceInfoForHostRegister
{
  if ([(FMDNanoRegistryAccessory *)self paired])
  {
    v3 = [(FMDNanoRegistryAccessory *)self completeDeviceInfo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)paired
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertyIsPaired];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)completeDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDNanoRegistryAccessory *)self lastDiscoveryDate];
  v5 = v4;
  if (v4)
  {
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 fm_epoch]);
  }

  else
  {
    v6 = &off_1002E7A08;
  }

  [v3 fm_safelyMapKey:@"lastActiveTime" toObject:v6];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:@"Watch"];
  [v3 fm_safelyMapKey:@"platform" toObject:@"watchos"];
  v7 = [(FMDNanoRegistryAccessory *)self pairingId];
  v8 = [v7 UUIDString];
  [v3 fm_safelyMapKey:@"pairingId" toObject:v8];

  v9 = [(FMDNanoRegistryAccessory *)self udid];
  [v3 fm_safelyMapKey:@"udid" toObject:v9];

  v10 = [(FMDNanoRegistryAccessory *)self productType];
  [v3 fm_safelyMapKey:@"productType" toObject:v10];

  v11 = [(FMDNanoRegistryAccessory *)self name];
  [v3 fm_safelyMapKey:@"deviceName" toObject:v11];

  return v3;
}

- (id)lastDiscoveryDate
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertyLastActiveDate];

  return v3;
}

- (NSUUID)pairingId
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertyPairingID];

  return v3;
}

- (NSString)udid
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertyUDID];

  return v3;
}

- (NSString)productType
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertyProductType];

  return v3;
}

- (NSString)name
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertyName];

  return v3;
}

- (FMDNanoRegistryAccessory)initWithNRDevice:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FMDNanoRegistryAccessory;
  v5 = [(FMDNanoRegistryAccessory *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(FMDNanoRegistryAccessory *)v5 setMigrationPossible:0];
    [(FMDNanoRegistryAccessory *)v6 setDevice:v4];
    v7 = [FMDAccessoryIdentifier alloc];
    v8 = [(FMDNanoRegistryAccessory *)v6 pairingId];
    v9 = [v8 UUIDString];
    v10 = [v7 initWithString:v9];
    [(FMDNanoRegistryAccessory *)v6 setAccessoryIdentifier:v10];
  }

  return v6;
}

- (NSString)serialNumber
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertySerialNumber];

  return v3;
}

- (NSString)productVersion
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertySystemVersion];

  return v3;
}

- (NSString)buildVersion
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [v2 valueForProperty:NRDevicePropertySystemBuildVersion];

  return v3;
}

- (BOOL)tinkerCapable
{
  v2 = [(FMDNanoRegistryAccessory *)self device];
  v3 = [[NSUUID alloc] initWithUUIDString:@"7275F1C6-7EB4-4406-B552-DC910FBFD07C"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (BOOL)tinkerPaired
{
  v2 = [(FMDNanoRegistryAccessory *)self tinkerCapable];
  if (v2)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
    v6 = [v5 firstObject];

    v7 = [v6 valueForProperty:NRDevicePropertyIsAltAccount];
    LOBYTE(v4) = [v7 BOOLValue];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (id)volatileKeysToExcludeFromRegisterDigest
{
  v4 = @"lastActiveTime";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FMDNanoRegistryAccessory *)v4 hash];
      v6 = v5 == [(FMDNanoRegistryAccessory *)self hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(FMDNanoRegistryAccessory *)self accessoryIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (FMDNanoRegistryAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDNanoRegistryAccessory;
  v5 = [(FMDNanoRegistryAccessory *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("accessoryIdentifier");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDNanoRegistryAccessory *)v5 setAccessoryIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(FMDNanoRegistryAccessory *)self accessoryIdentifier];
  v5 = NSStringFromSelector("accessoryIdentifier");
  [v4 encodeObject:v6 forKey:v5];
}

- (NSString)description
{
  v3 = +[NSMutableArray array];
  v4 = [(FMDNanoRegistryAccessory *)self pairingId];
  v5 = [NSString stringWithFormat:@"pairing ID: %@", v4];
  [v3 addObject:v5];

  v6 = [(FMDNanoRegistryAccessory *)self udid];
  v7 = [NSString stringWithFormat:@"UDID: %@", v6];
  [v3 addObject:v7];

  v8 = [(FMDNanoRegistryAccessory *)self serialNumber];
  v9 = [NSString stringWithFormat:@"Serial Number: %@", v8];
  [v3 addObject:v9];

  v10 = [(FMDNanoRegistryAccessory *)self productType];
  v11 = [NSString stringWithFormat:@"Product Type: %@", v10];
  [v3 addObject:v11];

  v12 = [(FMDNanoRegistryAccessory *)self productType];
  v13 = [NSString stringWithFormat:@"Product Type: %@", v12];
  [v3 addObject:v13];

  v14 = [(FMDNanoRegistryAccessory *)self productVersion];
  v15 = [NSString stringWithFormat:@"Product Version: %@", v14];
  [v3 addObject:v15];

  v16 = [(FMDNanoRegistryAccessory *)self buildVersion];
  v17 = [NSString stringWithFormat:@"Build Version: %@", v16];
  [v3 addObject:v17];

  v18 = [NSNumber numberWithBool:[(FMDNanoRegistryAccessory *)self paired]];
  v19 = [NSString stringWithFormat:@"Paired: %@", v18];
  [v3 addObject:v19];

  v20 = [NSNumber numberWithBool:[(FMDNanoRegistryAccessory *)self migrationPossible]];
  v21 = [NSString stringWithFormat:@"Migration Possible: %@", v20];
  [v3 addObject:v21];

  v22 = [v3 componentsJoinedByString:{@", "}];

  return v22;
}

@end