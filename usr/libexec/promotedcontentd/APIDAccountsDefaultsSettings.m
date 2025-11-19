@interface APIDAccountsDefaultsSettings
+ (id)storageWithDefaultValues:(id)a3;
@end

@implementation APIDAccountsDefaultsSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:v3];

  return v4;
}

@end