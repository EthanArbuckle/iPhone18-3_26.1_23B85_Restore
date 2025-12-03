@interface MSDRapportDevice
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRPCompanionLinkDevice:(id)device;
- (MSDRapportDevice)initWithIncomingOptions:(id)options;
- (MSDRapportDevice)initWithRPCompanionLinkDevice:(id)device;
- (id)description;
- (unint64_t)hash;
@end

@implementation MSDRapportDevice

- (MSDRapportDevice)initWithRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = MSDRapportDevice;
  v5 = [(MSDRapportDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(MSDRapportDevice *)v5 setRpDevice:deviceCopy];
    -[MSDRapportDevice setPairingMode:](v6, "setPairingMode:", ([deviceCopy statusFlags] >> 31) & 1);
    -[MSDRapportDevice setAuthenticated:](v6, "setAuthenticated:", ([deviceCopy statusFlags] >> 15) & 1);
    name = [deviceCopy name];
    [(MSDRapportDevice *)v6 setDeviceName:name];

    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      [deviceCopy idsDeviceIdentifier];
    }

    else
    {
      [deviceCopy publicIdentifier];
    }
    v9 = ;
    [(MSDRapportDevice *)v6 setIdentifier:v9];

    [(MSDRapportDevice *)v6 setDroppedByRapport:0];
  }

  return v6;
}

- (MSDRapportDevice)initWithIncomingOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MSDRapportDevice;
  v5 = [(MSDRapportDevice *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(RPCompanionLinkDevice);
    v7 = RPOptionSenderIDSDeviceID;
    v8 = [optionsCopy objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
    [v6 setIdentifier:v8];

    Int64 = CFDictionaryGetInt64();
    [(MSDRapportDevice *)v5 setRpDevice:v6];
    [(MSDRapportDevice *)v5 setPairingMode:(Int64 >> 31) & 1];
    [(MSDRapportDevice *)v5 setAuthenticated:(Int64 >> 15) & 1];
    v10 = [optionsCopy objectForKeyedSubscript:@"senderDeviceName"];
    [(MSDRapportDevice *)v5 setDeviceName:v10];

    v11 = [optionsCopy objectForKeyedSubscript:v7];
    [(MSDRapportDevice *)v5 setIdentifier:v11];
  }

  return v5;
}

- (BOOL)isEqualToRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];

  identifier = [(MSDRapportDevice *)self identifier];
  if (idsDeviceIdentifier)
  {
    [deviceCopy idsDeviceIdentifier];
  }

  else
  {
    [deviceCopy publicIdentifier];
  }
  v7 = ;

  v8 = [identifier isEqualToString:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(MSDRapportDevice *)self identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(MSDRapportDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(MSDRapportDevice *)self identifier];
  deviceName = [(MSDRapportDevice *)self deviceName];
  v7 = [NSString stringWithFormat:@"<%@[%p]: Identifier=%@ DeviceName=%@ PairingMode=%d Authenticated=%d>", v4, self, identifier, deviceName, [(MSDRapportDevice *)self pairingMode], [(MSDRapportDevice *)self authenticated]];

  return v7;
}

@end