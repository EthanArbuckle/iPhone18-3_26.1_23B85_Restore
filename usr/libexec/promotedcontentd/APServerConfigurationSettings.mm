@interface APServerConfigurationSettings
+ (id)storageWithDefaultValues:(id)values;
- (NSDictionary)serverConfig;
- (id)_loadServerConfig;
@end

@implementation APServerConfigurationSettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:valuesCopy];

  return v4;
}

- (id)_loadServerConfig
{
  serverConfigRecord = [(APServerConfigurationSettings *)self serverConfigRecord];
  if ([serverConfigRecord count])
  {
    +[NSMutableDictionary dictionary];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1002A41E4;
    v11 = v10 = &unk_10047CE68;
    v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(serverConfigRecord, "count")}];
    v3 = v12;
    v4 = v11;
    [serverConfigRecord enumerateKeysAndObjectsUsingBlock:&v7];
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
  _loadServerConfig = [(APServerConfigurationSettings *)self _loadServerConfig];
  objc_autoreleasePoolPop(v3);

  return _loadServerConfig;
}

@end