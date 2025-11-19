@interface CLRunningPowerHealthKitWriter
- (CLRunningPowerHealthKitWriter)init;
- (void)dealloc;
@end

@implementation CLRunningPowerHealthKitWriter

- (CLRunningPowerHealthKitWriter)init
{
  v3.receiver = self;
  v3.super_class = CLRunningPowerHealthKitWriter;
  return [(CLRunningHealthKitWriter *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLRunningPowerHealthKitWriter;
  [(CLRunningHealthKitWriter *)&v2 dealloc];
}

@end