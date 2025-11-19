@interface APServerConfigurationSettings
+ (id)storageWithDefaultValues:(id)a3;
- (NSDictionary)serverConfig;
- (id)_loadServerConfig;
@end

@implementation APServerConfigurationSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:v3];

  return v4;
}

- (id)_loadServerConfig
{
  v2 = [(APServerConfigurationSettings *)self serverConfigRecord];
  if ([v2 count])
  {
    +[NSMutableDictionary dictionary];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1002A41E4;
    v11 = v10 = &unk_10047CE68;
    v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
    v3 = v12;
    v4 = v11;
    [v2 enumerateKeysAndObjectsUsingBlock:&v7];
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)serverConfig
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(APServerConfigurationSettings *)self _loadServerConfig];
  objc_autoreleasePoolPop(v3);

  return v4;
}

@end