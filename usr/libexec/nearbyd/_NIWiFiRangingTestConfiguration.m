@interface _NIWiFiRangingTestConfiguration
- (BOOL)isEqual:(id)a3;
- (_NIWiFiRangingTestConfiguration)initWithCoder:(id)a3;
- (_NIWiFiRangingTestConfiguration)initWithDiscoveryToken:(id)a3 wifiRangingParameters:(id)a4 regions:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NIWiFiRangingTestConfiguration

- (_NIWiFiRangingTestConfiguration)initWithDiscoveryToken:(id)a3 wifiRangingParameters:(id)a4 regions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _NIWiFiRangingTestConfiguration;
  v12 = [(NIConfiguration *)&v15 initInternal];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 4, a3);
    objc_storeStrong(&v13->_parameters, a4);
    objc_storeStrong(&v13->_monitoredRegions, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = _NIWiFiRangingTestConfiguration;
  v5 = [(NIConfiguration *)&v13 copyWithZone:?];
  v6 = [(NIDiscoveryToken *)self->_peerDiscoveryToken copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  if (self->_parameters)
  {
    v8 = [[NSDictionary allocWithZone:?]copyItems:"initWithDictionary:copyItems:", self->_parameters, 1];
    v9 = v5[5];
    v5[5] = v8;
  }

  if (self->_monitoredRegions)
  {
    v10 = [[NSArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->_monitoredRegions, 1];
    v11 = v5[6];
    v5[6] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _NIWiFiRangingTestConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_peerDiscoveryToken forKey:@"peerDiscoveryToken"];
  [v4 encodeObject:self->_parameters forKey:@"parameters"];
  [v4 encodeObject:self->_monitoredRegions forKey:@"monitoredRegions"];
}

- (_NIWiFiRangingTestConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v19 count:2];
  v10 = [NSSet setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"monitoredRegions"];

  v18.receiver = self;
  v18.super_class = _NIWiFiRangingTestConfiguration;
  v12 = [(NIConfiguration *)&v18 initWithCoder:v4];
  if (v12)
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerDiscoveryToken"];
    peerDiscoveryToken = v12->_peerDiscoveryToken;
    v12->_peerDiscoveryToken = v13;

    v15 = [v4 decodeDictionaryWithKeysOfClasses:v5 objectsOfClasses:v8 forKey:@"parameters"];
    parameters = v12->_parameters;
    v12->_parameters = v15;

    objc_storeStrong(&v12->_monitoredRegions, v11);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v13 = 1;
    }

    else
    {
      parameters = self->_parameters;
      v8 = [(_NIWiFiRangingTestConfiguration *)v5 parameters];
      if ([(NSDictionary *)parameters isEqual:v8])
      {
        peerDiscoveryToken = self->_peerDiscoveryToken;
        v10 = [(_NIWiFiRangingTestConfiguration *)v6 peerDiscoveryToken];
        if ([(NIDiscoveryToken *)peerDiscoveryToken isEqual:v10])
        {
          monitoredRegions = self->_monitoredRegions;
          v12 = [(_NIWiFiRangingTestConfiguration *)v6 monitoredRegions];
          v13 = [(NSArray *)monitoredRegions isEqual:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_NIWiFiRangingTestConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [[NSMutableString alloc] initWithString:&stru_1009B1428];
  peerDiscoveryToken = self->_peerDiscoveryToken;
  if (peerDiscoveryToken)
  {
    v5 = [(NIDiscoveryToken *)peerDiscoveryToken descriptionInternal];
    [v3 appendFormat:@"Peer Token: %@", v5];
  }

  else
  {
    [v3 appendString:@"Peer Token: null"];
  }

  [v3 appendFormat:@", WiFi Ranging Parameters: %@", self->_parameters];
  [v3 appendFormat:@", Regions: %@", self->_monitoredRegions];

  return v3;
}

@end