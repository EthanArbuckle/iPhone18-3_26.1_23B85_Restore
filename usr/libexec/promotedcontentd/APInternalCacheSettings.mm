@interface APInternalCacheSettings
+ (id)storageWithDefaultValues:(id)values;
- (double)diagnosticsIntervalValue;
@end

@implementation APInternalCacheSettings

+ (id)storageWithDefaultValues:(id)values
{
  v3 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:&off_100494730];

  return v3;
}

- (double)diagnosticsIntervalValue
{
  diagnosticsInterval = [(APInternalCacheSettings *)self diagnosticsInterval];
  [diagnosticsInterval doubleValue];
  v4 = v3;

  return v4;
}

@end