@interface APPersistentCacheSettings
+ (id)storageWithDefaultValues:(id)a3;
@end

@implementation APPersistentCacheSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:v3];

  return v4;
}

@end