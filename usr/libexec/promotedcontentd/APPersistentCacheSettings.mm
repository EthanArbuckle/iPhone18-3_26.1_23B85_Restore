@interface APPersistentCacheSettings
+ (id)storageWithDefaultValues:(id)values;
@end

@implementation APPersistentCacheSettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:valuesCopy];

  return v4;
}

@end