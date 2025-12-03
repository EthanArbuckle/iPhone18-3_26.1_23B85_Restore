@interface PCStatusConditionsDefaultsSettings
+ (id)storageWithDefaultValues:(id)values;
@end

@implementation PCStatusConditionsDefaultsSettings

+ (id)storageWithDefaultValues:(id)values
{
  v3 = NSStringFromSelector("whitelistingsDisabled");
  v7 = v3;
  v8 = &off_100493600;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v5 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:v4];

  return v5;
}

@end