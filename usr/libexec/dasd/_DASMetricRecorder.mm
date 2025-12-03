@interface _DASMetricRecorder
+ (id)batchingQueue;
+ (id)metricQueue;
+ (id)readPredictionData;
+ (void)aggregateAndPostCAEvents:(id)events;
+ (void)incrementOccurrencesForKey:(id)key byCount:(int64_t)count;
+ (void)incrementOccurrencesForKeys:(id)keys byCounts:(id)counts;
+ (void)recordOccurrenceForKey:(id)key;
+ (void)savePredictionData:(id)data;
@end

@implementation _DASMetricRecorder

+ (id)batchingQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009EA70;
  block[3] = &unk_1001B54A0;
  block[4] = self;
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

+ (void)recordOccurrenceForKey:(id)key
{
  keyCopy = key;
  batchingQueue = [self batchingQueue];
  v7[0] = @"key";
  v7[1] = @"value";
  v8[0] = keyCopy;
  v8[1] = &off_1001CA2A0;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [batchingQueue addWorkItem:v6];
}

+ (void)incrementOccurrencesForKey:(id)key byCount:(int64_t)count
{
  keyCopy = key;
  batchingQueue = [self batchingQueue];
  v10[0] = @"key";
  v10[1] = @"value";
  v11[0] = keyCopy;
  v8 = [NSNumber numberWithLongLong:count];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [batchingQueue addWorkItem:v9];
}

+ (void)incrementOccurrencesForKeys:(id)keys byCounts:(id)counts
{
  keysCopy = keys;
  countsCopy = counts;
  v8 = [keysCopy count];
  if (v8 == [countsCopy count])
  {
    v9 = [keysCopy count];
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        batchingQueue = [self batchingQueue];
        v16[0] = @"key";
        v13 = [keysCopy objectAtIndexedSubscript:i];
        v16[1] = @"value";
        v17[0] = v13;
        v14 = [countsCopy objectAtIndexedSubscript:i];
        v17[1] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
        [batchingQueue addWorkItem:v15];
      }
    }
  }
}

+ (void)aggregateAndPostCAEvents:(id)events
{
  eventsCopy = events;
  v4 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = eventsCopy;
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
        intValue = [v11 intValue];

        v13 = [v9 objectForKeyedSubscript:v10];
        LODWORD(v11) = [v13 intValue];

        v14 = [NSNumber numberWithInt:v11 + intValue];
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

+ (void)savePredictionData:(id)data
{
  dataCopy = data;
  v5 = +[_CDClientContext userContext];
  v4 = [_CDContextualKeyPath keyPathWithKey:@"/system/activityPrediction"];
  [v5 setObject:dataCopy forKeyedSubscript:v4];
}

+ (id)readPredictionData
{
  v2 = +[_CDClientContext userContext];
  v3 = [_CDContextualKeyPath keyPathWithKey:@"/system/activityPrediction"];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

@end