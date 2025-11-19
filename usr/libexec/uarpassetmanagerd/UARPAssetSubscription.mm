@interface UARPAssetSubscription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAnyDomain:(id)a3;
- (UARPAssetSubscription)initWithCoder:(id)a3;
- (UARPAssetSubscription)initWithIdentifier:(id)a3 domain:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetSubscription

- (UARPAssetSubscription)initWithIdentifier:(id)a3 domain:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v4 = v15;
  v15 = 0;
  v12.receiver = v4;
  v12.super_class = UARPAssetSubscription;
  v15 = [(UARPAssetSubscription *)&v12 init];
  objc_storeStrong(&v15, v15);
  if (v15)
  {
    v5 = [location[0] copy];
    identifier = v15->_identifier;
    v15->_identifier = v5;

    v7 = [v13 copy];
    domain = v15->_domain;
    v15->_domain = v7;
  }

  v10 = v15;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_identifier forKey:@"identifier"];
  [location[0] encodeObject:v4->_domain forKey:@"domain"];
  objc_storeStrong(location, 0);
}

- (UARPAssetSubscription)initWithCoder:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = UARPAssetSubscription;
  v12 = [(UARPAssetSubscription *)&v10 init];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v12->_identifier;
    v12->_identifier = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v12->_domain;
    v12->_domain = v6;
  }

  v9 = v12;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = self;
  v5[2] = a2;
  v5[1] = a3;
  v5[0] = [[UARPAssetSubscription alloc] initWithIdentifier:v6->_identifier domain:v6->_domain];
  v4 = v5[0];
  objc_storeStrong(v5, 0);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v13 == location[0])
    {
      v14 = 1;
      v11 = 1;
    }

    else
    {
      v10 = location[0];
      identifier = v13->_identifier;
      v6 = [v10 identifier];
      v8 = 0;
      v7 = 0;
      if ([(NSString *)identifier isEqualToString:?])
      {
        domain = v13->_domain;
        v9 = [v10 domain];
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

- (BOOL)isEqualForAnyDomain:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v9 == location[0])
    {
      v10 = 1;
      v7 = 1;
    }

    else
    {
      v6 = location[0];
      identifier = v9->_identifier;
      v5 = [v6 identifier];
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
  v5 = [(UARPAssetSubscription *)self identifier];
  v4 = [(UARPAssetSubscription *)self domain];
  v7 = [NSString stringWithFormat:@"<%@: id=%@ domain=%@>", v6, v5, v4];

  return v7;
}

@end