@interface MockAPMetricNotificationRegister
- (int64_t)registerHandlerForPurpose:(int64_t)a3 andMetric:(int64_t)a4 closure:(id)a5;
- (void)callBlockWithMetric:(id)a3;
@end

@implementation MockAPMetricNotificationRegister

- (int64_t)registerHandlerForPurpose:(int64_t)a3 andMetric:(int64_t)a4 closure:(id)a5
{
  v6 = [a5 copy];
  [(MockAPMetricNotificationRegister *)self setBlock:v6];

  return 0;
}

- (void)callBlockWithMetric:(id)a3
{
  v4 = a3;
  v5 = [(MockAPMetricNotificationRegister *)self block];
  v5[2](v5, v4);
}

@end