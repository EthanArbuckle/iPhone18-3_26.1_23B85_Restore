@interface UARPAssetSubscription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAnyDomain:(id)domain;
- (UARPAssetSubscription)initWithCoder:(id)coder;
- (UARPAssetSubscription)initWithIdentifier:(id)identifier domain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetSubscription

- (UARPAssetSubscription)initWithIdentifier:(id)identifier domain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v13 = 0;
  objc_storeStrong(&v13, domain);
  v4 = selfCopy;
  selfCopy = 0;
  v12.receiver = v4;
  v12.super_class = UARPAssetSubscription;
  selfCopy = [(UARPAssetSubscription *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [location[0] copy];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v5;

    v7 = [v13 copy];
    domain = selfCopy->_domain;
    selfCopy->_domain = v7;
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_identifier forKey:@"identifier"];
  [location[0] encodeObject:selfCopy->_domain forKey:@"domain"];
  objc_storeStrong(location, 0);
}

- (UARPAssetSubscription)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = UARPAssetSubscription;
  selfCopy = [(UARPAssetSubscription *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = selfCopy->_domain;
    selfCopy->_domain = v6;
  }

  v9 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v5[2] = a2;
  v5[1] = zone;
  v5[0] = [[UARPAssetSubscription alloc] initWithIdentifier:selfCopy->_identifier domain:selfCopy->_domain];
  v4 = v5[0];
  objc_storeStrong(v5, 0);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (selfCopy == location[0])
    {
      v14 = 1;
      v11 = 1;
    }

    else
    {
      v10 = location[0];
      identifier = selfCopy->_identifier;
      identifier = [v10 identifier];
      v8 = 0;
      v7 = 0;
      if ([(NSString *)identifier isEqualToString:?])
      {
        domain = selfCopy->_domain;
        domain = [v10 domain];
        v8 = 1;
        v7 = [(NSString *)domain isEqualToString:?];
      }

      v14 = v7;
      if (v8)
      {
      }

      v11 = 1;
      objc_storeStrong(&v10, 0);
    }
  }

  else
  {
    v14 = 0;
    v11 = 1;
  }

  objc_storeStrong(location, 0);
  return v14 & 1;
}

- (BOOL)isEqualForAnyDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (selfCopy == location[0])
    {
      v10 = 1;
      v7 = 1;
    }

    else
    {
      v6 = location[0];
      identifier = selfCopy->_identifier;
      identifier = [v6 identifier];
      v10 = [(NSString *)identifier isEqualToString:?];

      v7 = 1;
      objc_storeStrong(&v6, 0);
    }
  }

  else
  {
    v10 = 0;
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v10;
}

- (unint64_t)hash
{
  v3 = [(UARPAssetSubscription *)self description];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v2 = objc_opt_class();
  v6 = NSStringFromClass(v2);
  identifier = [(UARPAssetSubscription *)self identifier];
  domain = [(UARPAssetSubscription *)self domain];
  v7 = [NSString stringWithFormat:@"<%@: id=%@ domain=%@>", v6, identifier, domain];

  return v7;
}

@end