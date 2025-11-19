@interface APRateLimitSettings
+ (id)storageWithDefaultValues:(id)a3;
- (APRateLimits)rateLimitsObject;
- (void)setRateLimitsObject:(id)a3;
@end

@implementation APRateLimitSettings

+ (id)storageWithDefaultValues:(id)a3
{
  v3 = a3;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:v3];

  return v4;
}

- (APRateLimits)rateLimitsObject
{
  v2 = [(APRateLimitSettings *)self rateLimits];
  if (v2)
  {
    v3 = sub_100393D18([APRateLimits alloc], v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRateLimitsObject:(id)a3
{
  v4 = sub_100393D90(a3);
  [(APRateLimitSettings *)self setRateLimits:v4];
}

@end