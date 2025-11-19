@interface WRM_SpeedTestSchedulerServices
- (WRM_SpeedTestSchedulerServices)initWithWaitTime:(double)a3;
@end

@implementation WRM_SpeedTestSchedulerServices

- (WRM_SpeedTestSchedulerServices)initWithWaitTime:(double)a3
{
  v4.receiver = self;
  v4.super_class = WRM_SpeedTestSchedulerServices;
  return [(WRM_SpeedTestSchedulerServices *)&v4 init];
}

@end