@interface _NIWiFiRangingTestConfiguration
- (BOOL)isEqual:(id)equal;
- (_NIWiFiRangingTestConfiguration)initWithCoder:(id)coder;
- (_NIWiFiRangingTestConfiguration)initWithDiscoveryToken:(id)token wifiRangingParameters:(id)parameters regions:(id)regions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NIWiFiRangingTestConfiguration

- (_NIWiFiRangingTestConfiguration)initWithDiscoveryToken:(id)token wifiRangingParameters:(id)parameters regions:(id)regions
{
  tokenCopy = token;
  parametersCopy = parameters;
  regionsCopy = regions;
  v15.receiver = self;
  v15.super_class = _NIWiFiRangingTestConfiguration;
  initInternal = [(NIConfiguration *)&v15 initInternal];
  v13 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 4, token);
    objc_storeStrong(&v13->_parameters, parameters);
    objc_storeStrong(&v13->_monitoredRegions, regions);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = _NIWiFiRangingTestConfiguration;
  v5 = [(NIConfiguration *)&v13 copyWithZone:?];
  v6 = [(NIDiscoveryToken *)self->_peerDiscoveryToken copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _NIWiFiRangingTestConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_peerDiscoveryToken forKey:@"peerDiscoveryToken"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
  [coderCopy encodeObject:self->_monitoredRegions forKey:@"monitoredRegions"];
}

- (_NIWiFiRangingTestConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v19 count:2];
  v10 = [NSSet setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"monitoredRegions"];

  v18.receiver = self;
  v18.super_class = _NIWiFiRangingTestConfiguration;
  v12 = [(NIConfiguration *)&v18 initWithCoder:coderCopy];
  if (v12)
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDiscoveryToken"];
    peerDiscoveryToken = v12->_peerDiscoveryToken;
    v12->_peerDiscoveryToken = v13;

    v15 = [coderCopy decodeDictionaryWithKeysOfClasses:v5 objectsOfClasses:v8 forKey:@"parameters"];
    parameters = v12->_parameters;
    v12->_parameters = v15;

    objc_storeStrong(&v12->_monitoredRegions, v11);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v13 = 1;
    }

    else
    {
      parameters = self->_parameters;
      parameters = [(_NIWiFiRangingTestConfiguration *)v5 parameters];
      if ([(NSDictionary *)parameters isEqual:parameters])
      {
        peerDiscoveryToken = self->_peerDiscoveryToken;
        peerDiscoveryToken = [(_NIWiFiRangingTestConfiguration *)v6 peerDiscoveryToken];
        if ([(NIDiscoveryToken *)peerDiscoveryToken isEqual:peerDiscoveryToken])
        {
          monitoredRegions = self->_monitoredRegions;
          monitoredRegions = [(_NIWiFiRangingTestConfiguration *)v6 monitoredRegions];
          v13 = [(NSArray *)monitoredRegions isEqual:monitoredRegions];
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
  descriptionInternal = [(_NIWiFiRangingTestConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [[NSMutableString alloc] initWithString:&stru_1009B1428];
  peerDiscoveryToken = self->_peerDiscoveryToken;
  if (peerDiscoveryToken)
  {
    descriptionInternal = [(NIDiscoveryToken *)peerDiscoveryToken descriptionInternal];
    [v3 appendFormat:@"Peer Token: %@", descriptionInternal];
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