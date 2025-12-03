@interface SESExpressConfiguration
+ (id)withState:(int64_t)state passConfigs:(id)configs;
@end

@implementation SESExpressConfiguration

+ (id)withState:(int64_t)state passConfigs:(id)configs
{
  configsCopy = configs;
  v6 = objc_opt_new();
  v7 = v6[2];
  v6[1] = state;
  v6[2] = configsCopy;

  return v6;
}

@end