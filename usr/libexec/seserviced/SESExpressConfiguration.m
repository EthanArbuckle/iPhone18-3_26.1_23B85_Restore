@interface SESExpressConfiguration
+ (id)withState:(int64_t)a3 passConfigs:(id)a4;
@end

@implementation SESExpressConfiguration

+ (id)withState:(int64_t)a3 passConfigs:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = v6[2];
  v6[1] = a3;
  v6[2] = v5;

  return v6;
}

@end