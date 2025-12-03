@interface FMDDeviceMotion
+ (id)stringFromActivityState:(int64_t)state;
- (id)description;
@end

@implementation FMDDeviceMotion

- (id)description
{
  v3 = [FMDDeviceMotion stringFromActivityState:[(FMDDeviceMotion *)self activityState]];
  activityStartDate = [(FMDDeviceMotion *)self activityStartDate];
  v5 = [NSString stringWithFormat:@"DeviceMotion state %@, startDate %@", v3, activityStartDate];

  return v5;
}

+ (id)stringFromActivityState:(int64_t)state
{
  if ((state - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1002CF4C8 + state - 1);
  }
}

@end