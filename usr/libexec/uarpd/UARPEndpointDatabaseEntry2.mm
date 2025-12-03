@interface UARPEndpointDatabaseEntry2
- (BOOL)isEqual:(id)equal;
- (BOOL)isMatch:(id)match;
- (BOOL)updateWithMatch:(id)match;
- (UARPEndpointDatabaseEntry2)initWithCoder:(id)coder;
- (UARPEndpointDatabaseEntry2)initWithUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPEndpointDatabaseEntry2

- (UARPEndpointDatabaseEntry2)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = UARPEndpointDatabaseEntry2;
  v5 = [(UARPEndpointDatabaseEntry2 *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (UARPEndpointDatabaseEntry2)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UARPEndpointDatabaseEntry2 *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ActiveFirmwareVersion"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copy];
      activeFirmwareVersion = v5->_activeFirmwareVersion;
      v5->_activeFirmwareVersion = v8;
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleModelNumber"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 copy];
      appleModelNumber = v5->_appleModelNumber;
      v5->_appleModelNumber = v12;
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetIdentifier"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 copy];
      assetIdentifier = v5->_assetIdentifier;
      v5->_assetIdentifier = v16;
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AvailableFirmwareVersion"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 copy];
      availableFirmwareVersion = v5->_availableFirmwareVersion;
      v5->_availableFirmwareVersion = v20;
    }

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FriendlyName"];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 copy];
      friendlyName = v5->_friendlyName;
      v5->_friendlyName = v24;
    }

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HardwareFusing"];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 copy];
      hardwareFusing = v5->_hardwareFusing;
      v5->_hardwareFusing = v28;
    }

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 copy];
      serialNumber = v5->_serialNumber;
      v5->_serialNumber = v32;
    }

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 copy];
      uuid = v5->_uuid;
      v5->_uuid = v36;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activeFirmwareVersion = self->_activeFirmwareVersion;
  coderCopy = coder;
  [coderCopy encodeObject:activeFirmwareVersion forKey:@"ActiveFirmwareVersion"];
  [coderCopy encodeObject:self->_appleModelNumber forKey:@"AppleModelNumber"];
  [coderCopy encodeObject:self->_assetIdentifier forKey:@"AssetIdentifier"];
  [coderCopy encodeObject:self->_availableFirmwareVersion forKey:@"AvailableFirmwareVersion"];
  [coderCopy encodeObject:self->_friendlyName forKey:@"FriendlyName"];
  [coderCopy encodeObject:self->_hardwareFusing forKey:@"HardwareFusing"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"SerialNumber"];
  [coderCopy encodeObject:self->_uuid forKey:@"UUID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UARPEndpointDatabaseEntry2 alloc] initWithUUID:self->_uuid];
  [(UARPEndpointDatabaseEntry2 *)v4 setActiveFirmwareVersion:self->_activeFirmwareVersion];
  [(UARPEndpointDatabaseEntry2 *)v4 setAppleModelNumber:self->_appleModelNumber];
  [(UARPEndpointDatabaseEntry2 *)v4 setAssetIdentifier:self->_assetIdentifier];
  [(UARPEndpointDatabaseEntry2 *)v4 setAvailableFirmwareVersion:self->_availableFirmwareVersion];
  [(UARPEndpointDatabaseEntry2 *)v4 setFriendlyName:self->_friendlyName];
  [(UARPEndpointDatabaseEntry2 *)v4 setHardwareFusing:self->_hardwareFusing];
  [(UARPEndpointDatabaseEntry2 *)v4 setSerialNumber:self->_serialNumber];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      uuid = [(UARPEndpointDatabaseEntry2 *)self uuid];
      uuid2 = [(UARPEndpointDatabaseEntry2 *)v5 uuid];

      v8 = [uuid compare:uuid2] == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isMatch:(id)match
{
  matchCopy = match;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (appleModelNumber = self->_appleModelNumber, [matchCopy appleModelNumber], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(appleModelNumber) = -[NSString isEqualToString:](appleModelNumber, "isEqualToString:", v6), v6, appleModelNumber))
  {
    serialNumber = self->_serialNumber;
    serialNumber = [matchCopy serialNumber];
    v9 = [(NSString *)serialNumber isEqualToString:serialNumber];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateWithMatch:(id)match
{
  matchCopy = match;
  v5 = [(UARPEndpointDatabaseEntry2 *)self isMatch:matchCopy];
  if (v5)
  {
    activeFirmwareVersion = [matchCopy activeFirmwareVersion];
    activeFirmwareVersion = self->_activeFirmwareVersion;
    self->_activeFirmwareVersion = activeFirmwareVersion;

    appleModelNumber = [matchCopy appleModelNumber];
    appleModelNumber = self->_appleModelNumber;
    self->_appleModelNumber = appleModelNumber;

    assetIdentifier = [matchCopy assetIdentifier];
    assetIdentifier = self->_assetIdentifier;
    self->_assetIdentifier = assetIdentifier;

    availableFirmwareVersion = [matchCopy availableFirmwareVersion];
    availableFirmwareVersion = self->_availableFirmwareVersion;
    self->_availableFirmwareVersion = availableFirmwareVersion;

    friendlyName = [matchCopy friendlyName];
    friendlyName = self->_friendlyName;
    self->_friendlyName = friendlyName;

    hardwareFusing = [matchCopy hardwareFusing];
    hardwareFusing = self->_hardwareFusing;
    self->_hardwareFusing = hardwareFusing;

    serialNumber = [matchCopy serialNumber];
    serialNumber = self->_serialNumber;
    self->_serialNumber = serialNumber;

    uuid = [matchCopy uuid];
    uuid = self->_uuid;
    self->_uuid = uuid;
  }

  return v5;
}

- (unint64_t)hash
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [uUIDString hash];

  return v3;
}

- (id)description
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [NSString stringWithFormat:@"UUID <%@>", uUIDString];

  return v3;
}

@end