@interface MORehydrationThresholdMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)a3;
- (MORehydrationThresholdMetrics)initWithCategory:(unint64_t)a3 provider:(unint64_t)a4 failureCount:(int)a5;
- (void)setValues;
@end

@implementation MORehydrationThresholdMetrics

- (MORehydrationThresholdMetrics)initWithCategory:(unint64_t)a3 provider:(unint64_t)a4 failureCount:(int)a5
{
  result = [(MORehydrationThresholdMetrics *)self initWithLoggingEnabled:1];
  if (result)
  {
    result->_category = a3;
    result->_provider = a4;
    result->_failureCount = a5;
  }

  return result;
}

+ (id)supportedMetricKeys
{
  v2 = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:v2];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  v5 = MOAnalyticsEventMOEventRehydrationThreshold;
  [(MORehydrationThresholdMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MORehydrationThresholdMetrics;
  return [(MOMetric *)&v7 submitMetricsWithError:a3 forEvent:v5];
}

- (void)setValues
{
  v3 = [NSNumber numberWithUnsignedInteger:self->_category];
  v4 = [(MOMetric *)self metrics];
  [v4 setObject:v3 forKeyedSubscript:@"category"];

  v5 = [NSNumber numberWithUnsignedInteger:self->_provider];
  v6 = [(MOMetric *)self metrics];
  [v6 setObject:v5 forKeyedSubscript:@"provider"];

  v8 = [NSNumber numberWithInt:self->_failureCount];
  v7 = [(MOMetric *)self metrics];
  [v7 setObject:v8 forKeyedSubscript:@"failureCount"];
}

@end