@interface UARPAssetCacheRecord
- (BOOL)isEqual:(id)a3;
- (UARPAssetCacheRecord)initWithAssetVersion:(id)a3 assetURL:(id)a4 deploymentRules:(id)a5;
- (UARPAssetCacheRecord)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetCacheRecord

- (UARPAssetCacheRecord)initWithAssetVersion:(id)a3 assetURL:(id)a4 deploymentRules:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v5 = v20;
  v20 = 0;
  v16.receiver = v5;
  v16.super_class = UARPAssetCacheRecord;
  v20 = [(UARPAssetCacheRecord *)&v16 init];
  objc_storeStrong(&v20, v20);
  if (v20)
  {
    v6 = [location[0] copy];
    assetVersion = v20->_assetVersion;
    v20->_assetVersion = v6;

    v8 = [v18 copy];
    assetURL = v20->_assetURL;
    v20->_assetURL = v8;

    v10 = [v17 copy];
    deploymentRules = v20->_deploymentRules;
    v20->_deploymentRules = v10;
  }

  v13 = v20;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v13;
}

- (UARPAssetCacheRecord)initWithCoder:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = UARPAssetCacheRecord;
  v16 = [(UARPAssetCacheRecord *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v16->_assetVersion;
    v16->_assetVersion = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = v16->_assetURL;
    v16->_assetURL = v6;

    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v17 count:5];
    v13 = [NSSet setWithArray:?];

    v8 = [location[0] decodeObjectOfClasses:v13 forKey:@"deploymentRules"];
    deploymentRules = v16->_deploymentRules;
    v16->_deploymentRules = v8;

    objc_storeStrong(&v13, 0);
  }

  v11 = v16;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_assetVersion forKey:@"assetVersion"];
  [location[0] encodeObject:v4->_assetURL forKey:@"assetURL"];
  [location[0] encodeObject:v4->_deploymentRules forKey:@"deploymentRules"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = self;
  v5[2] = a2;
  v5[1] = a3;
  v5[0] = [[UARPAssetCacheRecord alloc] initWithAssetVersion:v6->_assetVersion assetURL:v6->_assetURL deploymentRules:v6->_deploymentRules];
  v4 = v5[0];
  objc_storeStrong(v5, 0);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v16 == location[0])
    {
      v17 = 1;
      v14 = 1;
    }

    else
    {
      v13 = location[0];
      assetVersion = v16->_assetVersion;
      v7 = [v13 assetVersion];
      v11 = 0;
      v9 = 0;
      v8 = 0;
      if ([(UARPAssetVersionBase *)assetVersion isEqual:?]== 1)
      {
        assetURL = v16->_assetURL;
        v12 = [v13 assetURL];
        v11 = 1;
        v8 = 0;
        if ([(NSURL *)assetURL isEqual:?]== 1)
        {
          deploymentRules = v16->_deploymentRules;
          v10 = [v13 deploymentRules];
          v9 = 1;
          v8 = nullableObjectsAreEqual(deploymentRules, v10) == 1;
        }
      }

      v17 = v8;
      if (v9)
      {
      }

      if (v11)
      {
      }

      v14 = 1;
      objc_storeStrong(&v13, 0);
    }
  }

  else
  {
    v17 = 0;
    v14 = 1;
  }

  objc_storeStrong(location, 0);
  return v17 & 1;
}

- (unint64_t)hash
{
  v3 = [(UARPAssetCacheRecord *)self description];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v2 = objc_opt_class();
  v6 = NSStringFromClass(v2);
  v5 = [(UARPAssetVersionBase *)self->_assetVersion assetVersion];
  v4 = [(NSURL *)self->_assetURL path];
  v7 = [NSString stringWithFormat:@"<%@: %@ %@>", v6, v5, v4];

  return v7;
}

@end