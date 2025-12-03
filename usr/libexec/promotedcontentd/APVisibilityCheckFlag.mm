@interface APVisibilityCheckFlag
+ (int)_getThrottlePercentage:(id)percentage;
- (APVisibilityCheckFlag)initWithConfig:(id)config;
- (BOOL)enabledForUUIDString:(id)string;
@end

@implementation APVisibilityCheckFlag

- (APVisibilityCheckFlag)initWithConfig:(id)config
{
  configCopy = config;
  v7.receiver = self;
  v7.super_class = APVisibilityCheckFlag;
  v5 = [(APVisibilityCheckFlag *)&v7 init];
  if (v5)
  {
    v5->_throttlePercentage = [APVisibilityCheckFlag _getThrottlePercentage:configCopy];
  }

  return v5;
}

+ (int)_getThrottlePercentage:(id)percentage
{
  percentageCopy = percentage;
  v4 = percentageCopy;
  if (percentageCopy)
  {
    throttlePercentage = [percentageCopy throttlePercentage];

    if (throttlePercentage)
    {
      throttlePercentage2 = [v4 throttlePercentage];
      LODWORD(throttlePercentage) = [throttlePercentage2 intValue];
    }
  }

  else
  {
    LODWORD(throttlePercentage) = 0;
  }

  return throttlePercentage;
}

- (BOOL)enabledForUUIDString:(id)string
{
  stringCopy = string;
  if ([(APVisibilityCheckFlag *)self throttlePercentage]< 1)
  {
    v6 = 0;
  }

  else
  {
    throttlePercentage = [(APVisibilityCheckFlag *)self throttlePercentage];
    v6 = 0;
    if (stringCopy && throttlePercentage <= 100)
    {
      if ([(APVisibilityCheckFlag *)self throttlePercentage]== 100)
      {
        v6 = 1;
      }

      else
      {
        v7 = [stringCopy crc32] % 0x64;
        v6 = v7 < [(APVisibilityCheckFlag *)self throttlePercentage];
      }
    }
  }

  return v6;
}

@end