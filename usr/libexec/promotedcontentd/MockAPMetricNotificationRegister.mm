@interface MockAPMetricNotificationRegister
- (int64_t)registerHandlerForPurpose:(int64_t)purpose andMetric:(int64_t)metric closure:(id)closure;
- (void)callBlockWithMetric:(id)metric;
@end

@implementation MockAPMetricNotificationRegister

- (int64_t)registerHandlerForPurpose:(int64_t)purpose andMetric:(int64_t)metric closure:(id)closure
{
  v6 = [closure copy];
  [(MockAPMetricNotificationRegister *)self setBlock:v6];

  return 0;
}

- (void)callBlockWithMetric:(id)metric
{
  metricCopy = metric;
  block = [(MockAPMetricNotificationRegister *)self block];
  block[2](block, metricCopy);
}

@end