@interface APRateLimitSettings
+ (id)storageWithDefaultValues:(id)values;
- (APRateLimits)rateLimitsObject;
- (void)setRateLimitsObject:(id)object;
@end

@implementation APRateLimitSettings

+ (id)storageWithDefaultValues:(id)values
{
  valuesCopy = values;
  v4 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:valuesCopy];

  return v4;
}

- (APRateLimits)rateLimitsObject
{
  rateLimits = [(APRateLimitSettings *)self rateLimits];
  if (rateLimits)
  {
    v3 = sub_100393D18([APRateLimits alloc], rateLimits);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRateLimitsObject:(id)object
{
  v4 = sub_100393D90(object);
  [(APRateLimitSettings *)self setRateLimits:v4];
}

@end