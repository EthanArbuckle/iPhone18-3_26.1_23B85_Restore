@interface _DASRateLimitEvaluationResults
+ (id)evaluationResultsWithMaxedRateLimits:(id)limits withNextEvaluationDate:(id)date;
- (_DASRateLimitEvaluationResults)initWithMaxedRateLimits:(id)limits withNextEvaluationDate:(id)date;
@end

@implementation _DASRateLimitEvaluationResults

- (_DASRateLimitEvaluationResults)initWithMaxedRateLimits:(id)limits withNextEvaluationDate:(id)date
{
  limitsCopy = limits;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = _DASRateLimitEvaluationResults;
  v9 = [(_DASRateLimitEvaluationResults *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_maxedRateLimits, limits);
    objc_storeStrong(&v10->_nextEvaluationDate, date);
  }

  return v10;
}

+ (id)evaluationResultsWithMaxedRateLimits:(id)limits withNextEvaluationDate:(id)date
{
  dateCopy = date;
  limitsCopy = limits;
  v7 = [objc_alloc(objc_opt_class()) initWithMaxedRateLimits:limitsCopy withNextEvaluationDate:dateCopy];

  return v7;
}

@end