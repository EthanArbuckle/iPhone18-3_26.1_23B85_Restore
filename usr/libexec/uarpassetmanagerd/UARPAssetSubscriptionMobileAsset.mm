@interface UARPAssetSubscriptionMobileAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAnyDomain:(id)domain;
- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)number hwFusing:(id)fusing domain:(id)domain;
- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetSubscriptionMobileAsset

- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)number hwFusing:(id)fusing domain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v14 = 0;
  objc_storeStrong(&v14, fusing);
  v13 = 0;
  objc_storeStrong(&v13, domain);
  v5 = selfCopy;
  selfCopy = 0;
  v12.receiver = v5;
  v12.super_class = UARPAssetSubscriptionMobileAsset;
  selfCopy = [(UARPAssetSubscription *)&v12 initWithIdentifier:location[0] domain:v13];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = [v14 copy];
    hwFusing = selfCopy->_hwFusing;
    selfCopy->_hwFusing = v6;
  }

  v9 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = UARPAssetSubscriptionMobileAsset;
  selfCopy = [(UARPAssetSubscription *)&v14 initWithCoder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"hwFusing"];
    hwFusing = selfCopy->_hwFusing;
    selfCopy->_hwFusing = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = selfCopy->_assetURL;
    selfCopy->_assetURL = v6;

    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    assetAudience = selfCopy->_assetAudience;
    selfCopy->_assetAudience = v8;

    v10 = [location[0] decodeBoolForKey:@"internalAsset"];
    selfCopy->_internalAsset = v10;
    v11 = [location[0] decodeBoolForKey:@"suAsset"];
    selfCopy->_softwareUpdateAsset = v11;
  }

  v13 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3.receiver = selfCopy;
  v3.super_class = UARPAssetSubscriptionMobileAsset;
  [(UARPAssetSubscription *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeObject:selfCopy->_hwFusing forKey:@"hwFusing"];
  [location[0] encodeObject:selfCopy->_assetURL forKey:@"assetURL"];
  [location[0] encodeObject:selfCopy->_assetAudience forKey:@"assetAudience"];
  [location[0] encodeBool:selfCopy->_internalAsset forKey:@"internalAsset"];
  [location[0] encodeBool:selfCopy->_softwareUpdateAsset forKey:@"suAsset"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v13[2] = a2;
  v13[1] = zone;
  v6 = [UARPAssetSubscriptionMobileAsset alloc];
  identifier = [(UARPAssetSubscription *)selfCopy identifier];
  hwFusing = [(UARPAssetSubscriptionMobileAsset *)selfCopy hwFusing];
  domain = [(UARPAssetSubscription *)selfCopy domain];
  v13[0] = [(UARPAssetSubscriptionMobileAsset *)v6 initWithAppleModelNumber:identifier hwFusing:hwFusing domain:?];

  assetURL = [(UARPAssetSubscriptionMobileAsset *)selfCopy assetURL];
  [v13[0] setAssetURL:?];

  assetAudience = [(UARPAssetSubscriptionMobileAsset *)selfCopy assetAudience];
  [v13[0] setAssetAudience:?];

  internalAsset = [(UARPAssetSubscriptionMobileAsset *)selfCopy internalAsset];
  [v13[0] setInternalAsset:internalAsset];
  softwareUpdateAsset = [(UARPAssetSubscriptionMobileAsset *)selfCopy softwareUpdateAsset];
  [v13[0] setSoftwareUpdateAsset:softwareUpdateAsset];
  v12 = v13[0];
  objc_storeStrong(v13, 0);
  return v12;
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
      v21 = 1;
      v18 = 1;
    }

    else
    {
      v17 = location[0];
      v16.receiver = selfCopy;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      v14 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 0;
      if ([(UARPAssetSubscription *)&v16 isEqual:location[0]])
      {
        hwFusing = selfCopy->_hwFusing;
        hwFusing = [v17 hwFusing];
        v14 = 1;
        v9 = 0;
        if (nullableObjectsAreEqual(hwFusing, hwFusing) == 1)
        {
          assetURL = selfCopy->_assetURL;
          assetURL = [v17 assetURL];
          v12 = 1;
          v9 = 0;
          if (nullableObjectsAreEqual(assetURL, assetURL) == 1)
          {
            assetAudience = selfCopy->_assetAudience;
            assetAudience = [v17 assetAudience];
            v10 = 1;
            v9 = 0;
            if (nullableObjectsAreEqual(assetAudience, assetAudience) == 1)
            {
              softwareUpdateAsset = selfCopy->_softwareUpdateAsset;
              v9 = 0;
              if (softwareUpdateAsset == [v17 softwareUpdateAsset])
              {
                internalAsset = selfCopy->_internalAsset;
                v9 = internalAsset == [v17 internalAsset];
              }
            }
          }
        }
      }

      v21 = v9;
      if (v10)
      {
      }

      if (v12)
      {
      }

      if (v14)
      {
      }

      v18 = 1;
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    v21 = 0;
    v18 = 1;
  }

  objc_storeStrong(location, 0);
  return v21 & 1;
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
      v21 = 1;
      v18 = 1;
    }

    else
    {
      v17 = location[0];
      v16.receiver = selfCopy;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      v14 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 0;
      if ([(UARPAssetSubscription *)&v16 isEqualForAnyDomain:location[0]])
      {
        hwFusing = selfCopy->_hwFusing;
        hwFusing = [v17 hwFusing];
        v14 = 1;
        v9 = 0;
        if (nullableObjectsAreEqual(hwFusing, hwFusing) == 1)
        {
          assetURL = selfCopy->_assetURL;
          assetURL = [v17 assetURL];
          v12 = 1;
          v9 = 0;
          if (nullableObjectsAreEqual(assetURL, assetURL) == 1)
          {
            assetAudience = selfCopy->_assetAudience;
            assetAudience = [v17 assetAudience];
            v10 = 1;
            v9 = 0;
            if (nullableObjectsAreEqual(assetAudience, assetAudience) == 1)
            {
              softwareUpdateAsset = selfCopy->_softwareUpdateAsset;
              v9 = 0;
              if (softwareUpdateAsset == [v17 softwareUpdateAsset])
              {
                internalAsset = selfCopy->_internalAsset;
                v9 = internalAsset == [v17 internalAsset];
              }
            }
          }
        }
      }

      v21 = v9;
      if (v10)
      {
      }

      if (v12)
      {
      }

      if (v14)
      {
      }

      v18 = 1;
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    v21 = 0;
    v18 = 1;
  }

  objc_storeStrong(location, 0);
  return v21 & 1;
}

- (unint64_t)hash
{
  v3 = [(UARPAssetSubscriptionMobileAsset *)self description];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  identifier = [(UARPAssetSubscription *)self identifier];
  hwFusing = [(UARPAssetSubscriptionMobileAsset *)self hwFusing];
  assetAudience = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  v16 = 0;
  v14 = 0;
  v12 = 0;
  if (assetAudience)
  {
    assetAudience2 = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
    v16 = 1;
    v7 = assetAudience2;
  }

  else
  {
    assetURL = [(UARPAssetSubscriptionMobileAsset *)self assetURL];
    v14 = 1;
    absoluteString = [(NSURL *)assetURL absoluteString];
    v12 = 1;
    v7 = absoluteString;
  }

  internalAsset = [(UARPAssetSubscriptionMobileAsset *)self internalAsset];
  softwareUpdateAsset = [(UARPAssetSubscriptionMobileAsset *)self softwareUpdateAsset];
  domain = [(UARPAssetSubscription *)self domain];
  v19 = [NSString stringWithFormat:@"<%@: modelNumber=%@, hwFusing=%@ assetLocation=%@ internal/su=%u/%u domain=%@>", v8, identifier, hwFusing, v7, internalAsset & 1, softwareUpdateAsset & 1, domain];

  if (v12)
  {
  }

  if (v14)
  {
  }

  if (v16)
  {
  }

  return v19;
}

@end