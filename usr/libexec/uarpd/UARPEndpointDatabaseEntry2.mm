@interface UARPEndpointDatabaseEntry2
- (BOOL)isEqual:(id)a3;
- (BOOL)isMatch:(id)a3;
- (BOOL)updateWithMatch:(id)a3;
- (UARPEndpointDatabaseEntry2)initWithCoder:(id)a3;
- (UARPEndpointDatabaseEntry2)initWithUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPEndpointDatabaseEntry2

- (UARPEndpointDatabaseEntry2)initWithUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UARPEndpointDatabaseEntry2;
  v5 = [(UARPEndpointDatabaseEntry2 *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (UARPEndpointDatabaseEntry2)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UARPEndpointDatabaseEntry2 *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ActiveFirmwareVersion"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copy];
      activeFirmwareVersion = v5->_activeFirmwareVersion;
      v5->_activeFirmwareVersion = v8;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppleModelNumber"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 copy];
      appleModelNumber = v5->_appleModelNumber;
      v5->_appleModelNumber = v12;
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetIdentifier"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 copy];
      assetIdentifier = v5->_assetIdentifier;
      v5->_assetIdentifier = v16;
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AvailableFirmwareVersion"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 copy];
      availableFirmwareVersion = v5->_availableFirmwareVersion;
      v5->_availableFirmwareVersion = v20;
    }

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FriendlyName"];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 copy];
      friendlyName = v5->_friendlyName;
      v5->_friendlyName = v24;
    }

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HardwareFusing"];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 copy];
      hardwareFusing = v5->_hardwareFusing;
      v5->_hardwareFusing = v28;
    }

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 copy];
      serialNumber = v5->_serialNumber;
      v5->_serialNumber = v32;
    }

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
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

- (void)encodeWithCoder:(id)a3
{
  activeFirmwareVersion = self->_activeFirmwareVersion;
  v5 = a3;
  [v5 encodeObject:activeFirmwareVersion forKey:@"ActiveFirmwareVersion"];
  [v5 encodeObject:self->_appleModelNumber forKey:@"AppleModelNumber"];
  [v5 encodeObject:self->_assetIdentifier forKey:@"AssetIdentifier"];
  [v5 encodeObject:self->_availableFirmwareVersion forKey:@"AvailableFirmwareVersion"];
  [v5 encodeObject:self->_friendlyName forKey:@"FriendlyName"];
  [v5 encodeObject:self->_hardwareFusing forKey:@"HardwareFusing"];
  [v5 encodeObject:self->_serialNumber forKey:@"SerialNumber"];
  [v5 encodeObject:self->_uuid forKey:@"UUID"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v8 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(UARPEndpointDatabaseEntry2 *)self uuid];
      v7 = [(UARPEndpointDatabaseEntry2 *)v5 uuid];

      v8 = [v6 compare:v7] == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isMatch:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (appleModelNumber = self->_appleModelNumber, [v4 appleModelNumber], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(appleModelNumber) = -[NSString isEqualToString:](appleModelNumber, "isEqualToString:", v6), v6, appleModelNumber))
  {
    serialNumber = self->_serialNumber;
    v8 = [v4 serialNumber];
    v9 = [(NSString *)serialNumber isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateWithMatch:(id)a3
{
  v4 = a3;
  v5 = [(UARPEndpointDatabaseEntry2 *)self isMatch:v4];
  if (v5)
  {
    v6 = [v4 activeFirmwareVersion];
    activeFirmwareVersion = self->_activeFirmwareVersion;
    self->_activeFirmwareVersion = v6;

    v8 = [v4 appleModelNumber];
    appleModelNumber = self->_appleModelNumber;
    self->_appleModelNumber = v8;

    v10 = [v4 assetIdentifier];
    assetIdentifier = self->_assetIdentifier;
    self->_assetIdentifier = v10;

    v12 = [v4 availableFirmwareVersion];
    availableFirmwareVersion = self->_availableFirmwareVersion;
    self->_availableFirmwareVersion = v12;

    v14 = [v4 friendlyName];
    friendlyName = self->_friendlyName;
    self->_friendlyName = v14;

    v16 = [v4 hardwareFusing];
    hardwareFusing = self->_hardwareFusing;
    self->_hardwareFusing = v16;

    v18 = [v4 serialNumber];
    serialNumber = self->_serialNumber;
    self->_serialNumber = v18;

    v20 = [v4 uuid];
    uuid = self->_uuid;
    self->_uuid = v20;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [NSString stringWithFormat:@"UUID <%@>", v2];

  return v3;
}

@end