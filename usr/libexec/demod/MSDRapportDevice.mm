@interface MSDRapportDevice
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRPCompanionLinkDevice:(id)a3;
- (MSDRapportDevice)initWithIncomingOptions:(id)a3;
- (MSDRapportDevice)initWithRPCompanionLinkDevice:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MSDRapportDevice

- (MSDRapportDevice)initWithRPCompanionLinkDevice:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MSDRapportDevice;
  v5 = [(MSDRapportDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(MSDRapportDevice *)v5 setRpDevice:v4];
    -[MSDRapportDevice setPairingMode:](v6, "setPairingMode:", ([v4 statusFlags] >> 31) & 1);
    -[MSDRapportDevice setAuthenticated:](v6, "setAuthenticated:", ([v4 statusFlags] >> 15) & 1);
    v7 = [v4 name];
    [(MSDRapportDevice *)v6 setDeviceName:v7];

    v8 = [v4 idsDeviceIdentifier];

    if (v8)
    {
      [v4 idsDeviceIdentifier];
    }

    else
    {
      [v4 publicIdentifier];
    }
    v9 = ;
    [(MSDRapportDevice *)v6 setIdentifier:v9];

    [(MSDRapportDevice *)v6 setDroppedByRapport:0];
  }

  return v6;
}

- (MSDRapportDevice)initWithIncomingOptions:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MSDRapportDevice;
  v5 = [(MSDRapportDevice *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(RPCompanionLinkDevice);
    v7 = RPOptionSenderIDSDeviceID;
    v8 = [v4 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
    [v6 setIdentifier:v8];

    Int64 = CFDictionaryGetInt64();
    [(MSDRapportDevice *)v5 setRpDevice:v6];
    [(MSDRapportDevice *)v5 setPairingMode:(Int64 >> 31) & 1];
    [(MSDRapportDevice *)v5 setAuthenticated:(Int64 >> 15) & 1];
    v10 = [v4 objectForKeyedSubscript:@"senderDeviceName"];
    [(MSDRapportDevice *)v5 setDeviceName:v10];

    v11 = [v4 objectForKeyedSubscript:v7];
    [(MSDRapportDevice *)v5 setIdentifier:v11];
  }

  return v5;
}

- (BOOL)isEqualToRPCompanionLinkDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 idsDeviceIdentifier];

  v6 = [(MSDRapportDevice *)self identifier];
  if (v5)
  {
    [v4 idsDeviceIdentifier];
  }

  else
  {
    [v4 publicIdentifier];
  }
  v7 = ;

  v8 = [v6 isEqualToString:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(MSDRapportDevice *)self identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MSDRapportDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MSDRapportDevice *)self identifier];
  v6 = [(MSDRapportDevice *)self deviceName];
  v7 = [NSString stringWithFormat:@"<%@[%p]: Identifier=%@ DeviceName=%@ PairingMode=%d Authenticated=%d>", v4, self, v5, v6, [(MSDRapportDevice *)self pairingMode], [(MSDRapportDevice *)self authenticated]];

  return v7;
}

@end