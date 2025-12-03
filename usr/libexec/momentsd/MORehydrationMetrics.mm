@interface MORehydrationMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (MORehydrationMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider spiSuccess:(BOOL)success spiError:(id)error failCount:(double)count successAfterPreFailCount:(double)failCount totalCount:(int)totalCount rehydrationTrigger:(int)self0;
- (void)setValues;
@end

@implementation MORehydrationMetrics

- (MORehydrationMetrics)initWithCategory:(unint64_t)category provider:(unint64_t)provider spiSuccess:(BOOL)success spiError:(id)error failCount:(double)count successAfterPreFailCount:(double)failCount totalCount:(int)totalCount rehydrationTrigger:(int)self0
{
  errorCopy = error;
  v20 = [(MORehydrationMetrics *)self initWithLoggingEnabled:1];
  v21 = v20;
  if (v20)
  {
    v20->_category = category;
    v20->_provider = provider;
    v20->_spiSuccess = success;
    objc_storeStrong(&v20->_spiError, error);
    v21->_totalCount = totalCount;
    v21->_failCount = count;
    v21->_successAfterPreFailCount = failCount;
    if (totalCount < 1)
    {
      v21->_failPercentage = 0.0;
      v22 = 0.0;
    }

    else
    {
      v21->_failPercentage = count / totalCount * 100.0;
      v22 = failCount / totalCount * 100.0;
    }

    v21->_successAfterPreFailPercentage = v22;
    v21->_rehydrationTrigger = trigger;
    v21->_rehydrationSuccess = v21->_failCount == 0;
    v21->_rehydrationSuccessAfterPreFail = v21->_successAfterPreFailCount != 0;
  }

  return v21;
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  allObjects = [bOOLeanKeys allObjects];
  [v3 addObjectsFromArray:allObjects];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects2 = [bucketedKeys allObjects];
  [v3 addObjectsFromArray:allObjects2];

  stringKeys = [objc_opt_class() stringKeys];
  allObjects3 = [stringKeys allObjects];
  [v3 addObjectsFromArray:allObjects3];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  v5 = MOAnalyticsEventEventRehydration;
  [(MORehydrationMetrics *)self setValues];
  v7.receiver = self;
  v7.super_class = MORehydrationMetrics;
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

  v7 = [NSNumber numberWithInt:self->_rehydrationTrigger];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v7 forKeyedSubscript:@"rehydrationTrigger"];

  v9 = [NSNumber numberWithBool:self->_spiSuccess];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v9 forKeyedSubscript:@"spiSuccess"];

  v11 = [NSNumber numberWithBool:self->_rehydrationSuccess];
  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:v11 forKeyedSubscript:@"rehydrationSuccess"];

  v13 = [NSNumber numberWithInt:self->_successAfterPreFailCount];
  metrics6 = [(MOMetric *)self metrics];
  [metrics6 setObject:v13 forKeyedSubscript:@"successAfterPreFailEventCount"];

  v15 = [NSNumber numberWithInt:self->_totalCount];
  metrics7 = [(MOMetric *)self metrics];
  [metrics7 setObject:v15 forKeyedSubscript:@"totalEventCount"];

  v17 = [NSNumber numberWithInt:self->_failCount];
  metrics8 = [(MOMetric *)self metrics];
  [metrics8 setObject:v17 forKeyedSubscript:@"failEventCount"];

  v19 = [NSNumber numberWithBool:self->_rehydrationSuccessAfterPreFail];
  metrics9 = [(MOMetric *)self metrics];
  [metrics9 setObject:v19 forKeyedSubscript:@"rehydrationSuccessAfterPreFail"];

  spiError = self->_spiError;
  metrics10 = [(MOMetric *)self metrics];
  v23 = metrics10;
  if (spiError)
  {
    v24 = spiError;
  }

  else
  {
    v24 = &stru_1003416B0;
  }

  [metrics10 setObject:v24 forKeyedSubscript:@"spiError"];

  v25 = [NSNumber numberWithDouble:self->_failPercentage];
  metrics11 = [(MOMetric *)self metrics];
  [metrics11 setObject:v25 forKeyedSubscript:@"failPercentage"];

  v28 = [NSNumber numberWithDouble:self->_successAfterPreFailPercentage];
  metrics12 = [(MOMetric *)self metrics];
  [metrics12 setObject:v28 forKeyedSubscript:@"successAfterPreFailPercentage"];
}

@end