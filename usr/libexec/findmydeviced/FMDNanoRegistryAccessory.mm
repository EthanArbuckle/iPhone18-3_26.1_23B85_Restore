@interface FMDNanoRegistryAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)isEqual:(id)equal;
- (BOOL)paired;
- (BOOL)tinkerCapable;
- (BOOL)tinkerPaired;
- (FMDNanoRegistryAccessory)initWithCoder:(id)coder;
- (FMDNanoRegistryAccessory)initWithNRDevice:(id)device;
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
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDNanoRegistryAccessory

- (id)deviceInfoForHostRegister
{
  if ([(FMDNanoRegistryAccessory *)self paired])
  {
    completeDeviceInfo = [(FMDNanoRegistryAccessory *)self completeDeviceInfo];
  }

  else
  {
    completeDeviceInfo = 0;
  }

  return completeDeviceInfo;
}

- (BOOL)paired
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertyIsPaired];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)completeDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  lastDiscoveryDate = [(FMDNanoRegistryAccessory *)self lastDiscoveryDate];
  v5 = lastDiscoveryDate;
  if (lastDiscoveryDate)
  {
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastDiscoveryDate fm_epoch]);
  }

  else
  {
    v6 = &off_1002E7A08;
  }

  [v3 fm_safelyMapKey:@"lastActiveTime" toObject:v6];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:@"Watch"];
  [v3 fm_safelyMapKey:@"platform" toObject:@"watchos"];
  pairingId = [(FMDNanoRegistryAccessory *)self pairingId];
  uUIDString = [pairingId UUIDString];
  [v3 fm_safelyMapKey:@"pairingId" toObject:uUIDString];

  udid = [(FMDNanoRegistryAccessory *)self udid];
  [v3 fm_safelyMapKey:@"udid" toObject:udid];

  productType = [(FMDNanoRegistryAccessory *)self productType];
  [v3 fm_safelyMapKey:@"productType" toObject:productType];

  name = [(FMDNanoRegistryAccessory *)self name];
  [v3 fm_safelyMapKey:@"deviceName" toObject:name];

  return v3;
}

- (id)lastDiscoveryDate
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertyLastActiveDate];

  return v3;
}

- (NSUUID)pairingId
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertyPairingID];

  return v3;
}

- (NSString)udid
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertyUDID];

  return v3;
}

- (NSString)productType
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertyProductType];

  return v3;
}

- (NSString)name
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertyName];

  return v3;
}

- (FMDNanoRegistryAccessory)initWithNRDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = FMDNanoRegistryAccessory;
  v5 = [(FMDNanoRegistryAccessory *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(FMDNanoRegistryAccessory *)v5 setMigrationPossible:0];
    [(FMDNanoRegistryAccessory *)v6 setDevice:deviceCopy];
    v7 = [FMDAccessoryIdentifier alloc];
    pairingId = [(FMDNanoRegistryAccessory *)v6 pairingId];
    uUIDString = [pairingId UUIDString];
    v10 = [v7 initWithString:uUIDString];
    [(FMDNanoRegistryAccessory *)v6 setAccessoryIdentifier:v10];
  }

  return v6;
}

- (NSString)serialNumber
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertySerialNumber];

  return v3;
}

- (NSString)productVersion
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertySystemVersion];

  return v3;
}

- (NSString)buildVersion
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [device valueForProperty:NRDevicePropertySystemBuildVersion];

  return v3;
}

- (BOOL)tinkerCapable
{
  device = [(FMDNanoRegistryAccessory *)self device];
  v3 = [[NSUUID alloc] initWithUUIDString:@"7275F1C6-7EB4-4406-B552-DC910FBFD07C"];
  v4 = [device supportsCapability:v3];

  return v4;
}

- (BOOL)tinkerPaired
{
  tinkerCapable = [(FMDNanoRegistryAccessory *)self tinkerCapable];
  if (tinkerCapable)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
    firstObject = [v5 firstObject];

    v7 = [firstObject valueForProperty:NRDevicePropertyIsAltAccount];
    LOBYTE(v4) = [v7 BOOLValue];

    LOBYTE(tinkerCapable) = v4;
  }

  return tinkerCapable;
}

+ (id)volatileKeysToExcludeFromRegisterDigest
{
  v4 = @"lastActiveTime";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FMDNanoRegistryAccessory *)equalCopy hash];
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
  accessoryIdentifier = [(FMDNanoRegistryAccessory *)self accessoryIdentifier];
  v3 = [accessoryIdentifier hash];

  return v3;
}

- (FMDNanoRegistryAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDNanoRegistryAccessory;
  v5 = [(FMDNanoRegistryAccessory *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("accessoryIdentifier");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDNanoRegistryAccessory *)v5 setAccessoryIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryIdentifier = [(FMDNanoRegistryAccessory *)self accessoryIdentifier];
  v5 = NSStringFromSelector("accessoryIdentifier");
  [coderCopy encodeObject:accessoryIdentifier forKey:v5];
}

- (NSString)description
{
  v3 = +[NSMutableArray array];
  pairingId = [(FMDNanoRegistryAccessory *)self pairingId];
  v5 = [NSString stringWithFormat:@"pairing ID: %@", pairingId];
  [v3 addObject:v5];

  udid = [(FMDNanoRegistryAccessory *)self udid];
  v7 = [NSString stringWithFormat:@"UDID: %@", udid];
  [v3 addObject:v7];

  serialNumber = [(FMDNanoRegistryAccessory *)self serialNumber];
  v9 = [NSString stringWithFormat:@"Serial Number: %@", serialNumber];
  [v3 addObject:v9];

  productType = [(FMDNanoRegistryAccessory *)self productType];
  v11 = [NSString stringWithFormat:@"Product Type: %@", productType];
  [v3 addObject:v11];

  productType2 = [(FMDNanoRegistryAccessory *)self productType];
  v13 = [NSString stringWithFormat:@"Product Type: %@", productType2];
  [v3 addObject:v13];

  productVersion = [(FMDNanoRegistryAccessory *)self productVersion];
  v15 = [NSString stringWithFormat:@"Product Version: %@", productVersion];
  [v3 addObject:v15];

  buildVersion = [(FMDNanoRegistryAccessory *)self buildVersion];
  v17 = [NSString stringWithFormat:@"Build Version: %@", buildVersion];
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