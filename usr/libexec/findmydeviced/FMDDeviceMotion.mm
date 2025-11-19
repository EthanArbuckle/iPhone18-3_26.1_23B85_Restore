@interface FMDDeviceMotion
+ (id)stringFromActivityState:(int64_t)a3;
- (id)description;
@end

@implementation FMDDeviceMotion

- (id)description
{
  v3 = [FMDDeviceMotion stringFromActivityState:[(FMDDeviceMotion *)self activityState]];
  v4 = [(FMDDeviceMotion *)self activityStartDate];
  v5 = [NSString stringWithFormat:@"DeviceMotion state %@, startDate %@", v3, v4];

  return v5;
}

+ (id)stringFromActivityState:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1002CF4C8 + a3 - 1);
  }
}

@end