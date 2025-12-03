@interface UARPAssetCacheRecord
- (BOOL)isEqual:(id)equal;
- (UARPAssetCacheRecord)initWithAssetVersion:(id)version assetURL:(id)l deploymentRules:(id)rules;
- (UARPAssetCacheRecord)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetCacheRecord

- (UARPAssetCacheRecord)initWithAssetVersion:(id)version assetURL:(id)l deploymentRules:(id)rules
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v18 = 0;
  objc_storeStrong(&v18, l);
  v17 = 0;
  objc_storeStrong(&v17, rules);
  v5 = selfCopy;
  selfCopy = 0;
  v16.receiver = v5;
  v16.super_class = UARPAssetCacheRecord;
  selfCopy = [(UARPAssetCacheRecord *)&v16 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = [location[0] copy];
    assetVersion = selfCopy->_assetVersion;
    selfCopy->_assetVersion = v6;

    v8 = [v18 copy];
    assetURL = selfCopy->_assetURL;
    selfCopy->_assetURL = v8;

    v10 = [v17 copy];
    deploymentRules = selfCopy->_deploymentRules;
    selfCopy->_deploymentRules = v10;
  }

  v13 = selfCopy;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (UARPAssetCacheRecord)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = UARPAssetCacheRecord;
  selfCopy = [(UARPAssetCacheRecord *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = selfCopy->_assetVersion;
    selfCopy->_assetVersion = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    assetURL = selfCopy->_assetURL;
    selfCopy->_assetURL = v6;

    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v17 count:5];
    v13 = [NSSet setWithArray:?];

    v8 = [location[0] decodeObjectOfClasses:v13 forKey:@"deploymentRules"];
    deploymentRules = selfCopy->_deploymentRules;
    selfCopy->_deploymentRules = v8;

    objc_storeStrong(&v13, 0);
  }

  v11 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_assetVersion forKey:@"assetVersion"];
  [location[0] encodeObject:selfCopy->_assetURL forKey:@"assetURL"];
  [location[0] encodeObject:selfCopy->_deploymentRules forKey:@"deploymentRules"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v5[2] = a2;
  v5[1] = zone;
  v5[0] = [[UARPAssetCacheRecord alloc] initWithAssetVersion:selfCopy->_assetVersion assetURL:selfCopy->_assetURL deploymentRules:selfCopy->_deploymentRules];
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
      v17 = 1;
      v14 = 1;
    }

    else
    {
      v13 = location[0];
      assetVersion = selfCopy->_assetVersion;
      assetVersion = [v13 assetVersion];
      v11 = 0;
      v9 = 0;
      v8 = 0;
      if ([(UARPAssetVersionBase *)assetVersion isEqual:?]== 1)
      {
        assetURL = selfCopy->_assetURL;
        assetURL = [v13 assetURL];
        v11 = 1;
        v8 = 0;
        if ([(NSURL *)assetURL isEqual:?]== 1)
        {
          deploymentRules = selfCopy->_deploymentRules;
          deploymentRules = [v13 deploymentRules];
          v9 = 1;
          v8 = nullableObjectsAreEqual(deploymentRules, deploymentRules) == 1;
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
  assetVersion = [(UARPAssetVersionBase *)self->_assetVersion assetVersion];
  path = [(NSURL *)self->_assetURL path];
  v7 = [NSString stringWithFormat:@"<%@: %@ %@>", v6, assetVersion, path];

  return v7;
}

@end