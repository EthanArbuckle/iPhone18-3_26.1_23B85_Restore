@interface MORehydrationThresholdMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (MORehydrationThresholdMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider failureCount:(int)count;
- (void)setValues;
@end

@implementation MORehydrationThresholdMetrics

- (MORehydrationThresholdMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider failureCount:(int)count
{
  result = [(MORehydrationThresholdMetrics *)self initWithLoggingEnabled:1];
  if (result)
  {
    result->_category = category;
    result->_provider = provider;
    result->_failureCount = count;
  }

  return result;
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v5 = MOAnalyticsEventMOEventRehydrationThreshold;
  [(MORehydrationThresholdMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MORehydrationThresholdMetrics;
  return [(MOMetric *)&v7 submitMetricsWithError:error forEvent:v5];
}

- (void)setValues
{
  v3 = [NSNumber numberWithUnsignedInteger:self->_category];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v3 forKeyedSubscript:@"category"];

  v5 = [NSNumber numberWithUnsignedInteger:self->_provider];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v5 forKeyedSubscript:@"provider"];

  v8 = [NSNumber numberWithInt:self->_failureCount];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v8 forKeyedSubscript:@"failureCount"];
}

@end