@interface NRImmutableIDSDevice
- (NRImmutableIDSDevice)initWithIDSDevice:(id)device;
- (id)description;
- (void)setNSUUID:(id)d;
@end

@implementation NRImmutableIDSDevice

- (NRImmutableIDSDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v43.receiver = self;
    v43.super_class = NRImmutableIDSDevice;
    v6 = [(NRImmutableIDSDevice *)&v43 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_mutableIDSDevice, device);
      uniqueID = [deviceCopy uniqueID];
      uniqueID = v7->_uniqueID;
      v7->_uniqueID = uniqueID;

      uniqueIDOverride = [deviceCopy uniqueIDOverride];
      uniqueIDOverride = v7->_uniqueIDOverride;
      v7->_uniqueIDOverride = uniqueIDOverride;

      modelIdentifier = [deviceCopy modelIdentifier];
      modelIdentifier = v7->_modelIdentifier;
      v7->_modelIdentifier = modelIdentifier;

      productName = [deviceCopy productName];
      productName = v7->_productName;
      v7->_productName = productName;

      productVersion = [deviceCopy productVersion];
      productVersion = v7->_productVersion;
      v7->_productVersion = productVersion;

      [deviceCopy operatingSystemVersion];
      *&v7->_operatingSystemVersion.majorVersion = v41;
      v7->_operatingSystemVersion.patchVersion = v42;
      productBuildVersion = [deviceCopy productBuildVersion];
      productBuildVersion = v7->_productBuildVersion;
      v7->_productBuildVersion = productBuildVersion;

      name = [deviceCopy name];
      name = v7->_name;
      v7->_name = name;

      service = [deviceCopy service];
      service = v7->_service;
      v7->_service = service;

      deviceColor = [deviceCopy deviceColor];
      deviceColor = v7->_deviceColor;
      v7->_deviceColor = deviceColor;

      enclosureColor = [deviceCopy enclosureColor];
      enclosureColor = v7->_enclosureColor;
      v7->_enclosureColor = enclosureColor;

      v7->_isHSATrusted = [deviceCopy isHSATrusted];
      v7->_isDefaultPairedDevice = [deviceCopy isDefaultPairedDevice];
      v7->_isLocallyPaired = [deviceCopy isLocallyPaired];
      v7->_isActive = [deviceCopy isActive];
      v7->_pairingProtocolVersion = [deviceCopy pairingProtocolVersion];
      v7->_minCompatibilityVersion = [deviceCopy minCompatibilityVersion];
      v7->_maxCompatibilityVersion = [deviceCopy maxCompatibilityVersion];
      v7->_nearby = [deviceCopy isNearby];
      v7->_connected = [deviceCopy isConnected];
      v7->_locallyPresent = [deviceCopy locallyPresent];
      linkedUserURIs = [deviceCopy linkedUserURIs];
      v29 = [linkedUserURIs copy];
      linkedUserURIs = v7->_linkedUserURIs;
      v7->_linkedUserURIs = v29;

      nsuuid = [deviceCopy nsuuid];
      nsuuid = v7->_nsuuid;
      v7->_nsuuid = nsuuid;

      identities = [deviceCopy identities];
      identities = v7->_identities;
      v7->_identities = identities;

      pushToken = [deviceCopy pushToken];
      pushToken = v7->_pushToken;
      v7->_pushToken = pushToken;

      lastActivityDate = [deviceCopy lastActivityDate];
      lastActivityDate = v7->_lastActivityDate;
      v7->_lastActivityDate = lastActivityDate;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setNSUUID:(id)d
{
  objc_storeStrong(&self->_nsuuid, d);
  dCopy = d;
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