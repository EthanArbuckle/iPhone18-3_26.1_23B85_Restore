@interface APMediaServiceSettings
+ (id)storageWithDefaultValues:(id)values;
@end

@implementation APMediaServiceSettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:valuesCopy];

  return v4;
}

@end