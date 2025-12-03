@interface APTargetingExpressionResults
+ (NSDictionary)results;
+ (NSMutableDictionary)mutableResults;
+ (void)addResult:(id)result result:(BOOL)a4;
+ (void)clearResults;
@end

@implementation APTargetingExpressionResults

+ (NSMutableDictionary)mutableResults
{
  v2 = qword_1004DF658;
  if (!qword_1004DF658)
  {
    v3 = objc_alloc_init(APUnfairRecursiveLock);
    [APTargetingExpressionResults setLock:v3];

    v4 = +[APTargetingExpressionResults lock];
    [v4 lock];

    v5 = +[NSMutableDictionary dictionary];
    v6 = qword_1004DF658;
    qword_1004DF658 = v5;

    v7 = +[APTargetingExpressionResults lock];
    [v7 unlock];

    v2 = qword_1004DF658;
  }

  return v2;
}

+ (NSDictionary)results
{
  v2 = +[APTargetingExpressionResults mutableResults];
  v3 = [v2 copy];

  return v3;
}

+ (void)addResult:(id)result result:(BOOL)a4
{
  v4 = a4;
  resultCopy = result;
  v9 = +[APTargetingExpressionResults mutableResults];
  v6 = +[APTargetingExpressionResults lock];
  [v6 lock];

  v7 = [NSNumber numberWithBool:v4];
  [v9 setObject:v7 forKey:resultCopy];

  v8 = +[APTargetingExpressionResults lock];
  [v8 unlock];
}

+ (void)clearResults
{
  v2 = +[APTargetingExpressionResults lock];
  [v2 lock];

  v3 = +[APTargetingExpressionResults mutableResults];
  [v3 removeAllObjects];

  v4 = +[APTargetingExpressionResults lock];
  [v4 unlock];
}

@end