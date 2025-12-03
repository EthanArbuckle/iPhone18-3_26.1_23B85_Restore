@interface WRM_SpeedTestSchedulerServices
- (WRM_SpeedTestSchedulerServices)initWithWaitTime:(double)time;
@end

@implementation WRM_SpeedTestSchedulerServices

- (WRM_SpeedTestSchedulerServices)initWithWaitTime:(double)time
{
  v4.receiver = self;
  v4.super_class = WRM_SpeedTestSchedulerServices;
  return [(WRM_SpeedTestSchedulerServices *)&v4 init];
}

@end