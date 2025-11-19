@interface APDeviceInfoSettings
+ (id)storageWithDefaultValues:(id)a3;
@end

@implementation APDeviceInfoSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = NSStringFromSelector("isTest");
  v7 = v3;
  v8 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v5 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:v4];

  return v5;
}

@end