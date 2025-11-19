@interface MORehydrationMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)a3;
- (MORehydrationMetrics)initWithCategory:(unint64_t)a3 provider:(unint64_t)a4 spiSuccess:(BOOL)a5 spiError:(id)a6 failCount:(double)a7 successAfterPreFailCount:(double)a8 totalCount:(int)a9 rehydrationTrigger:(int)a10;
- (void)setValues;
@end

@implementation MORehydrationMetrics

- (MORehydrationMetrics)initWithCategory:(unint64_t)a3 provider:(unint64_t)a4 spiSuccess:(BOOL)a5 spiError:(id)a6 failCount:(double)a7 successAfterPreFailCount:(double)a8 totalCount:(int)a9 rehydrationTrigger:(int)a10
{
  v19 = a6;
  v20 = [(MORehydrationMetrics *)self initWithLoggingEnabled:1];
  v21 = v20;
  if (v20)
  {
    v20->_category = a3;
    v20->_provider = a4;
    v20->_spiSuccess = a5;
    objc_storeStrong(&v20->_spiError, a6);
    v21->_totalCount = a9;
    v21->_failCount = a7;
    v21->_successAfterPreFailCount = a8;
    if (a9 < 1)
    {
      v21->_failPercentage = 0.0;
      v22 = 0.0;
    }

    else
    {
      v21->_failPercentage = a7 / a9 * 100.0;
      v22 = a8 / a9 * 100.0;
    }

    v21->_successAfterPreFailPercentage = v22;
    v21->_rehydrationTrigger = a10;
    v21->_rehydrationSuccess = v21->_failCount == 0;
    v21->_rehydrationSuccessAfterPreFail = v21->_successAfterPreFailCount != 0;
  }

  return v21;
}

+ (id)supportedMetricKeys
{
  v2 = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:v2];

  v4 = [objc_opt_class() BOOLeanKeys];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [objc_opt_class() bucketedKeys];
  v7 = [v6 allObjects];
  [v3 addObjectsFromArray:v7];

  v8 = [objc_opt_class() stringKeys];
  v9 = [v8 allObjects];
  [v3 addObjectsFromArray:v9];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  v5 = MOAnalyticsEventEventRehydration;
  [(MORehydrationMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MORehydrationMetrics;
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

  v7 = [NSNumber numberWithInt:self->_rehydrationTrigger];
  v8 = [(MOMetric *)self metrics];
  [v8 setObject:v7 forKeyedSubscript:@"rehydrationTrigger"];

  v9 = [NSNumber numberWithBool:self->_spiSuccess];
  v10 = [(MOMetric *)self metrics];
  [v10 setObject:v9 forKeyedSubscript:@"spiSuccess"];

  v11 = [NSNumber numberWithBool:self->_rehydrationSuccess];
  v12 = [(MOMetric *)self metrics];
  [v12 setObject:v11 forKeyedSubscript:@"rehydrationSuccess"];

  v13 = [NSNumber numberWithInt:self->_successAfterPreFailCount];
  v14 = [(MOMetric *)self metrics];
  [v14 setObject:v13 forKeyedSubscript:@"successAfterPreFailEventCount"];

  v15 = [NSNumber numberWithInt:self->_totalCount];
  v16 = [(MOMetric *)self metrics];
  [v16 setObject:v15 forKeyedSubscript:@"totalEventCount"];

  v17 = [NSNumber numberWithInt:self->_failCount];
  v18 = [(MOMetric *)self metrics];
  [v18 setObject:v17 forKeyedSubscript:@"failEventCount"];

  v19 = [NSNumber numberWithBool:self->_rehydrationSuccessAfterPreFail];
  v20 = [(MOMetric *)self metrics];
  [v20 setObject:v19 forKeyedSubscript:@"rehydrationSuccessAfterPreFail"];

  spiError = self->_spiError;
  v22 = [(MOMetric *)self metrics];
  v23 = v22;
  if (spiError)
  {
    v24 = spiError;
  }

  else
  {
    v24 = &stru_1003416B0;
  }

  [v22 setObject:v24 forKeyedSubscript:@"spiError"];

  v25 = [NSNumber numberWithDouble:self->_failPercentage];
  v26 = [(MOMetric *)self metrics];
  [v26 setObject:v25 forKeyedSubscript:@"failPercentage"];

  v28 = [NSNumber numberWithDouble:self->_successAfterPreFailPercentage];
  v27 = [(MOMetric *)self metrics];
  [v27 setObject:v28 forKeyedSubscript:@"successAfterPreFailPercentage"];
}

@end