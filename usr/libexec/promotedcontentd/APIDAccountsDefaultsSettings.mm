@interface APIDAccountsDefaultsSettings
+ (id)storageWithDefaultValues:(id)values;
@end

@implementation APIDAccountsDefaultsSettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:valuesCopy];

  return v4;
}

@end