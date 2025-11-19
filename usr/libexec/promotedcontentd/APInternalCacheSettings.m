@interface APInternalCacheSettings
+ (id)storageWithDefaultValues:(id)a3;
- (double)diagnosticsIntervalValue;
@end

@implementation APInternalCacheSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:&off_100494730];

  return v3;
}

- (double)diagnosticsIntervalValue
{
  v2 = [(APInternalCacheSettings *)self diagnosticsInterval];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

@end