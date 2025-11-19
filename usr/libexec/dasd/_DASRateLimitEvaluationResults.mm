@interface _DASRateLimitEvaluationResults
+ (id)evaluationResultsWithMaxedRateLimits:(id)a3 withNextEvaluationDate:(id)a4;
- (_DASRateLimitEvaluationResults)initWithMaxedRateLimits:(id)a3 withNextEvaluationDate:(id)a4;
@end

@implementation _DASRateLimitEvaluationResults

- (_DASRateLimitEvaluationResults)initWithMaxedRateLimits:(id)a3 withNextEvaluationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DASRateLimitEvaluationResults;
  v9 = [(_DASRateLimitEvaluationResults *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_maxedRateLimits, a3);
    objc_storeStrong(&v10->_nextEvaluationDate, a4);
  }

  return v10;
}

+ (id)evaluationResultsWithMaxedRateLimits:(id)a3 withNextEvaluationDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithMaxedRateLimits:v6 withNextEvaluationDate:v5];

  return v7;
}

@end