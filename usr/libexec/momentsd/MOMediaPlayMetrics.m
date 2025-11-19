@interface MOMediaPlayMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)a3;
- (MOMediaPlayMetrics)initWithFirstPartyAppRatio:(double)a3 firstPartyAppTime:(double)a4 musciAppTime:(double)a5;
- (void)setValues;
@end

@implementation MOMediaPlayMetrics

- (MOMediaPlayMetrics)initWithFirstPartyAppRatio:(double)a3 firstPartyAppTime:(double)a4 musciAppTime:(double)a5
{
  result = [(MOMediaPlayMetrics *)self initWithLoggingEnabled:1];
  if (result)
  {
    if (a3 > 0.0)
    {
      result->_firstPartyAppRatio = (a3 * 100.0);
    }

    if (a4 > 0.0)
    {
      result->_firstPartyAppTime = (a4 / 600.0);
    }

    if (a5 > 0.0)
    {
      result->_musicAppTime = (a5 / 600.0);
    }
  }

  return result;
}

+ (id)supportedMetricKeys
{
  v2 = [objc_opt_class() bucketedKeys];
  v3 = [NSMutableSet setWithSet:v2];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  v5 = MOAnalyticsEventMediaPlayMetrics;
  [(MOMediaPlayMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MOMediaPlayMetrics;
  return [(MOMetric *)&v7 submitMetricsWithError:a3 forEvent:v5];
}

- (void)setValues
{
  v3 = [NSNumber numberWithInt:self->_firstPartyAppRatio];
  v4 = [(MOMetric *)self metrics];
  [v4 setObject:v3 forKeyedSubscript:@"firstPartyAppRatio"];

  v5 = [NSNumber numberWithInt:self->_firstPartyAppTime];
  v6 = [(MOMetric *)self metrics];
  [v6 setObject:v5 forKeyedSubscript:@"firstPartyAppTime"];

  v8 = [NSNumber numberWithInt:self->_musicAppTime];
  v7 = [(MOMetric *)self metrics];
  [v7 setObject:v8 forKeyedSubscript:@"musicAppTime"];
}

@end