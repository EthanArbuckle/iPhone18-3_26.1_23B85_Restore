@interface NRImmutableIDSDevice
- (NRImmutableIDSDevice)initWithIDSDevice:(id)a3;
- (id)description;
- (void)setNSUUID:(id)a3;
@end

@implementation NRImmutableIDSDevice

- (NRImmutableIDSDevice)initWithIDSDevice:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v43.receiver = self;
    v43.super_class = NRImmutableIDSDevice;
    v6 = [(NRImmutableIDSDevice *)&v43 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_mutableIDSDevice, a3);
      v8 = [v5 uniqueID];
      uniqueID = v7->_uniqueID;
      v7->_uniqueID = v8;

      v10 = [v5 uniqueIDOverride];
      uniqueIDOverride = v7->_uniqueIDOverride;
      v7->_uniqueIDOverride = v10;

      v12 = [v5 modelIdentifier];
      modelIdentifier = v7->_modelIdentifier;
      v7->_modelIdentifier = v12;

      v14 = [v5 productName];
      productName = v7->_productName;
      v7->_productName = v14;

      v16 = [v5 productVersion];
      productVersion = v7->_productVersion;
      v7->_productVersion = v16;

      [v5 operatingSystemVersion];
      *&v7->_operatingSystemVersion.majorVersion = v41;
      v7->_operatingSystemVersion.patchVersion = v42;
      v18 = [v5 productBuildVersion];
      productBuildVersion = v7->_productBuildVersion;
      v7->_productBuildVersion = v18;

      v20 = [v5 name];
      name = v7->_name;
      v7->_name = v20;

      v22 = [v5 service];
      service = v7->_service;
      v7->_service = v22;

      v24 = [v5 deviceColor];
      deviceColor = v7->_deviceColor;
      v7->_deviceColor = v24;

      v26 = [v5 enclosureColor];
      enclosureColor = v7->_enclosureColor;
      v7->_enclosureColor = v26;

      v7->_isHSATrusted = [v5 isHSATrusted];
      v7->_isDefaultPairedDevice = [v5 isDefaultPairedDevice];
      v7->_isLocallyPaired = [v5 isLocallyPaired];
      v7->_isActive = [v5 isActive];
      v7->_pairingProtocolVersion = [v5 pairingProtocolVersion];
      v7->_minCompatibilityVersion = [v5 minCompatibilityVersion];
      v7->_maxCompatibilityVersion = [v5 maxCompatibilityVersion];
      v7->_nearby = [v5 isNearby];
      v7->_connected = [v5 isConnected];
      v7->_locallyPresent = [v5 locallyPresent];
      v28 = [v5 linkedUserURIs];
      v29 = [v28 copy];
      linkedUserURIs = v7->_linkedUserURIs;
      v7->_linkedUserURIs = v29;

      v31 = [v5 nsuuid];
      nsuuid = v7->_nsuuid;
      v7->_nsuuid = v31;

      v33 = [v5 identities];
      identities = v7->_identities;
      v7->_identities = v33;

      v35 = [v5 pushToken];
      pushToken = v7->_pushToken;
      v7->_pushToken = v35;

      v37 = [v5 lastActivityDate];
      lastActivityDate = v7->_lastActivityDate;
      v7->_lastActivityDate = v37;
    }

    self = v7;
    v39 = self;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (void)setNSUUID:(id)a3
{
  objc_storeStrong(&self->_nsuuid, a3);
  v5 = a3;
  [self->_mutableIDSDevice setNSUUID:self->_nsuuid];
}

- (id)description
{
  name = self->_name;
  service = self->_service;
  productBuildVersion = self->_productBuildVersion;
  v6 = [NSNumber numberWithUnsignedInteger:self->_minCompatibilityVersion];
  v7 = [NSNumber numberWithUnsignedInteger:self->_maxCompatibilityVersion];
  v8 = [NSNumber numberWithUnsignedInteger:self->_pairingProtocolVersion];
  v9 = v8;
  v10 = @"NO";
  if (self->_isDefaultPairedDevice)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_isActive)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_nearby)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_connected)
  {
    v10 = @"YES";
  }

  v14 = [NSString stringWithFormat:@"NRImmutableIDSDevice %p: %@: name: %@ build: %@ ppv: %@-%@ (%@) isDpd: %@ isActive: %@ nearby: %@ connected: %@", self, service, name, productBuildVersion, v6, v7, v8, v11, v12, v13, v10];

  return v14;
}

@end