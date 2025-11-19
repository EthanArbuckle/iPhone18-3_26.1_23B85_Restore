@interface APVisibilityCheckFlag
+ (int)_getThrottlePercentage:(id)a3;
- (APVisibilityCheckFlag)initWithConfig:(id)a3;
- (BOOL)enabledForUUIDString:(id)a3;
@end

@implementation APVisibilityCheckFlag

- (APVisibilityCheckFlag)initWithConfig:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = APVisibilityCheckFlag;
  v5 = [(APVisibilityCheckFlag *)&v7 init];
  if (v5)
  {
    v5->_throttlePercentage = [APVisibilityCheckFlag _getThrottlePercentage:v4];
  }

  return v5;
}

+ (int)_getThrottlePercentage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 throttlePercentage];

    if (v5)
    {
      v6 = [v4 throttlePercentage];
      LODWORD(v5) = [v6 intValue];
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (BOOL)enabledForUUIDString:(id)a3
{
  v4 = a3;
  if ([(APVisibilityCheckFlag *)self throttlePercentage]< 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(APVisibilityCheckFlag *)self throttlePercentage];
    v6 = 0;
    if (v4 && v5 <= 100)
    {
      if ([(APVisibilityCheckFlag *)self throttlePercentage]== 100)
      {
        v6 = 1;
      }

      else
      {
        v7 = [v4 crc32] % 0x64;
        v6 = v7 < [(APVisibilityCheckFlag *)self throttlePercentage];
      }
    }
  }

  return v6;
}

@end