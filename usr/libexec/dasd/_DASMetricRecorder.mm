@interface _DASMetricRecorder
+ (id)batchingQueue;
+ (id)metricQueue;
+ (id)readPredictionData;
+ (void)aggregateAndPostCAEvents:(id)a3;
+ (void)incrementOccurrencesForKey:(id)a3 byCount:(int64_t)a4;
+ (void)incrementOccurrencesForKeys:(id)a3 byCounts:(id)a4;
+ (void)recordOccurrenceForKey:(id)a3;
+ (void)savePredictionData:(id)a3;
@end

@implementation _DASMetricRecorder

+ (id)batchingQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009EA70;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B688 != -1)
  {
    dispatch_once(&qword_10020B688, block);
  }

  v2 = qword_10020B690;

  return v2;
}

+ (id)metricQueue
{
  if (qword_10020B678 != -1)
  {
    sub_100126914();
  }

  v3 = qword_10020B680;

  return v3;
}

+ (void)recordOccurrenceForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 batchingQueue];
  v7[0] = @"key";
  v7[1] = @"value";
  v8[0] = v4;
  v8[1] = &off_1001CA2A0;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [v5 addWorkItem:v6];
}

+ (void)incrementOccurrencesForKey:(id)a3 byCount:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 batchingQueue];
  v10[0] = @"key";
  v10[1] = @"value";
  v11[0] = v6;
  v8 = [NSNumber numberWithLongLong:a4];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [v7 addWorkItem:v9];
}

+ (void)incrementOccurrencesForKeys:(id)a3 byCounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == [v7 count])
  {
    v9 = [v6 count];
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = [a1 batchingQueue];
        v16[0] = @"key";
        v13 = [v6 objectAtIndexedSubscript:i];
        v16[1] = @"value";
        v17[0] = v13;
        v14 = [v7 objectAtIndexedSubscript:i];
        v17[1] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
        [v12 addWorkItem:v15];
      }
    }
  }
}

+ (void)aggregateAndPostCAEvents:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"key"];
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [v11 intValue];

        v13 = [v9 objectForKeyedSubscript:v10];
        LODWORD(v11) = [v13 intValue];

        v14 = [NSNumber numberWithInt:v11 + v12];
        [v4 setObject:v14 forKeyedSubscript:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v15 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * j)];
        [v20 intValue];

        AnalyticsSendEventLazy();
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

+ (void)savePredictionData:(id)a3
{
  v3 = a3;
  v5 = +[_CDClientContext userContext];
  v4 = [_CDContextualKeyPath keyPathWithKey:@"/system/activityPrediction"];
  [v5 setObject:v3 forKeyedSubscript:v4];
}

+ (id)readPredictionData
{
  v2 = +[_CDClientContext userContext];
  v3 = [_CDContextualKeyPath keyPathWithKey:@"/system/activityPrediction"];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

@end