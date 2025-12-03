@interface MOMediaPlayMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (MOMediaPlayMetrics)initWithFirstPartyAppRatio:(double)ratio firstPartyAppTime:(double)time musciAppTime:(double)appTime;
- (void)setValues;
@end

@implementation MOMediaPlayMetrics

- (MOMediaPlayMetrics)initWithFirstPartyAppRatio:(double)ratio firstPartyAppTime:(double)time musciAppTime:(double)appTime
{
  result = [(MOMediaPlayMetrics *)self initWithLoggingEnabled:1];
  if (result)
  {
    if (ratio > 0.0)
    {
      result->_firstPartyAppRatio = (ratio * 100.0);
    }

    if (time > 0.0)
    {
      result->_firstPartyAppTime = (time / 600.0);
    }

    if (appTime > 0.0)
    {
      result->_musicAppTime = (appTime / 600.0);
    }
  }

  return result;
}

+ (id)supportedMetricKeys
{
  bucketedKeys = [objc_opt_class() bucketedKeys];
  v3 = [NSMutableSet setWithSet:bucketedKeys];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v5 = MOAnalyticsEventMediaPlayMetrics;
  [(MOMediaPlayMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MOMediaPlayMetrics;
  return [(MOMetric *)&v7 submitMetricsWithError:error forEvent:v5];
}

- (void)setValues
{
  v3 = [NSNumber numberWithInt:self->_firstPartyAppRatio];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v3 forKeyedSubscript:@"firstPartyAppRatio"];

  v5 = [NSNumber numberWithInt:self->_firstPartyAppTime];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v5 forKeyedSubscript:@"firstPartyAppTime"];

  v8 = [NSNumber numberWithInt:self->_musicAppTime];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v8 forKeyedSubscript:@"musicAppTime"];
}

@end