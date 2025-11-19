@interface UARPAssetSubscriptionMobileAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAnyDomain:(id)a3;
- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)a3 hwFusing:(id)a4 domain:(id)a5;
- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetSubscriptionMobileAsset

- (UARPAssetSubscriptionMobileAsset)initWithAppleModelNumber:(id)a3 hwFusing:(id)a4 domain:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v5 = v16;
  v16 = 0;
  v12.receiver = v5;
  v12.super_class = UARPAssetSubscriptionMobileAsset;
  v16 = [(UARPAssetSubscription *)&v12 initWithIdentifier:location[0] domain:v13];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v6 = [v14 copy];
    hwFusing = v16->_hwFusing;
    v16->_hwFusing = v6;
  }

  v9 = v16;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v9;
}

- (UARPAssetSubscriptionMobileAsset)initWithCoder:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = UARPAssetSubscriptionMobileAsset;
  v16 = [(UARPAssetSubscription *)&v14 initWithCoder:location[0]];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"hwFusing"];
    hwFusing = v16->_hwFusing;
    v16->_hwFusing = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v16->_assetURL;
    v16->_assetURL = v6;

    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    assetAudience = v16->_assetAudience;
    v16->_assetAudience = v8;

    v10 = [location[0] decodeBoolForKey:@"internalAsset"];
    v16->_internalAsset = v10;
    v11 = [location[0] decodeBoolForKey:@"suAsset"];
    v16->_softwareUpdateAsset = v11;
  }

  v13 = v16;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UARPAssetSubscriptionMobileAsset;
  [(UARPAssetSubscription *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeObject:v5->_hwFusing forKey:@"hwFusing"];
  [location[0] encodeObject:v5->_assetURL forKey:@"assetURL"];
  [location[0] encodeObject:v5->_assetAudience forKey:@"assetAudience"];
  [location[0] encodeBool:v5->_internalAsset forKey:@"internalAsset"];
  [location[0] encodeBool:v5->_softwareUpdateAsset forKey:@"suAsset"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = self;
  v13[2] = a2;
  v13[1] = a3;
  v6 = [UARPAssetSubscriptionMobileAsset alloc];
  v9 = [(UARPAssetSubscription *)v14 identifier];
  v8 = [(UARPAssetSubscriptionMobileAsset *)v14 hwFusing];
  v7 = [(UARPAssetSubscription *)v14 domain];
  v13[0] = [(UARPAssetSubscriptionMobileAsset *)v6 initWithAppleModelNumber:v9 hwFusing:v8 domain:?];

  v10 = [(UARPAssetSubscriptionMobileAsset *)v14 assetURL];
  [v13[0] setAssetURL:?];

  v11 = [(UARPAssetSubscriptionMobileAsset *)v14 assetAudience];
  [v13[0] setAssetAudience:?];

  v3 = [(UARPAssetSubscriptionMobileAsset *)v14 internalAsset];
  [v13[0] setInternalAsset:v3];
  v4 = [(UARPAssetSubscriptionMobileAsset *)v14 softwareUpdateAsset];
  [v13[0] setSoftwareUpdateAsset:v4];
  v12 = v13[0];
  objc_storeStrong(v13, 0);
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v20 == location[0])
    {
      v21 = 1;
      v18 = 1;
    }

    else
    {
      v17 = location[0];
      v16.receiver = v20;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      v14 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 0;
      if ([(UARPAssetSubscription *)&v16 isEqual:location[0]])
      {
        hwFusing = v20->_hwFusing;
        v15 = [v17 hwFusing];
        v14 = 1;
        v9 = 0;
        if (nullableObjectsAreEqual(hwFusing, v15) == 1)
        {
          assetURL = v20->_assetURL;
          v13 = [v17 assetURL];
          v12 = 1;
          v9 = 0;
          if (nullableObjectsAreEqual(assetURL, v13) == 1)
          {
            assetAudience = v20->_assetAudience;
            v11 = [v17 assetAudience];
            v10 = 1;
            v9 = 0;
            if (nullableObjectsAreEqual(assetAudience, v11) == 1)
            {
              softwareUpdateAsset = v20->_softwareUpdateAsset;
              v9 = 0;
              if (softwareUpdateAsset == [v17 softwareUpdateAsset])
              {
                internalAsset = v20->_internalAsset;
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

- (BOOL)isEqualForAnyDomain:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v20 == location[0])
    {
      v21 = 1;
      v18 = 1;
    }

    else
    {
      v17 = location[0];
      v16.receiver = v20;
      v16.super_class = UARPAssetSubscriptionMobileAsset;
      v14 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 0;
      if ([(UARPAssetSubscription *)&v16 isEqualForAnyDomain:location[0]])
      {
        hwFusing = v20->_hwFusing;
        v15 = [v17 hwFusing];
        v14 = 1;
        v9 = 0;
        if (nullableObjectsAreEqual(hwFusing, v15) == 1)
        {
          assetURL = v20->_assetURL;
          v13 = [v17 assetURL];
          v12 = 1;
          v9 = 0;
          if (nullableObjectsAreEqual(assetURL, v13) == 1)
          {
            assetAudience = v20->_assetAudience;
            v11 = [v17 assetAudience];
            v10 = 1;
            v9 = 0;
            if (nullableObjectsAreEqual(assetAudience, v11) == 1)
            {
              softwareUpdateAsset = v20->_softwareUpdateAsset;
              v9 = 0;
              if (softwareUpdateAsset == [v17 softwareUpdateAsset])
              {
                internalAsset = v20->_internalAsset;
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
  v9 = [(UARPAssetSubscription *)self identifier];
  v10 = [(UARPAssetSubscriptionMobileAsset *)self hwFusing];
  v11 = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
  v16 = 0;
  v14 = 0;
  v12 = 0;
  if (v11)
  {
    v17 = [(UARPAssetSubscriptionMobileAsset *)self assetAudience];
    v16 = 1;
    v7 = v17;
  }

  else
  {
    v15 = [(UARPAssetSubscriptionMobileAsset *)self assetURL];
    v14 = 1;
    v13 = [(NSURL *)v15 absoluteString];
    v12 = 1;
    v7 = v13;
  }

  v4 = [(UARPAssetSubscriptionMobileAsset *)self internalAsset];
  v5 = [(UARPAssetSubscriptionMobileAsset *)self softwareUpdateAsset];
  v6 = [(UARPAssetSubscription *)self domain];
  v19 = [NSString stringWithFormat:@"<%@: modelNumber=%@, hwFusing=%@ assetLocation=%@ internal/su=%u/%u domain=%@>", v8, v9, v10, v7, v4 & 1, v5 & 1, v6];

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