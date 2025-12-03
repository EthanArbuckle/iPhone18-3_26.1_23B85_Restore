@interface _DASSwapModelAverageAggregator
- (double)scoreForApplication:(id)application atDate:(id)date;
- (id)scoresForAllApplicationsAtDate:(id)date;
@end

@implementation _DASSwapModelAverageAggregator

- (id)scoresForAllApplicationsAtDate:(id)date
{
  dateCopy = date;
  v4 = objc_autoreleasePoolPush();
  algorithms = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v6 = [algorithms count];

  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    algorithms2 = [(_DASSwapModelAbstractAggregator *)self algorithms];
    firstObject = [algorithms2 firstObject];
    v6 = [firstObject scoresForAllApplicationsAtDate:dateCopy];

LABEL_4:
    v9 = v4;
    goto LABEL_23;
  }

  context = v4;
  v10 = +[NSMutableSet set];
  v11 = +[NSMutableArray array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  algorithms3 = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v13 = [algorithms3 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(algorithms3);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 scoresForAllApplicationsAtDate:dateCopy];
        [v11 addObject:v19];
        allKeys = [v19 allKeys];
        [v10 addObjectsFromArray:allKeys];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [algorithms3 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v14);
  }

  v21 = +[NSMutableDictionary dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v10;
  v22 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v40 + 1) + 8 * j);
        v27 = [v11 objectAtIndexedSubscript:0];
        v28 = [v27 objectForKeyedSubscript:v26];
        [v28 doubleValue];
        v30 = v29;

        for (k = 1; k != v6; ++k)
        {
          v32 = [v11 objectAtIndexedSubscript:k];
          v33 = [v32 objectForKeyedSubscript:v26];
          [v33 doubleValue];
          v30 = v30 + v34;
        }

        v35 = [NSNumber numberWithDouble:v30 / v6];
        [v21 setObject:v35 forKeyedSubscript:v26];
      }

      v23 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v23);
  }

  v6 = [v21 copy];
  v9 = context;
LABEL_23:
  objc_autoreleasePoolPop(v9);

  return v6;
}

- (double)scoreForApplication:(id)application atDate:(id)date
{
  applicationCopy = application;
  dateCopy = date;
  algorithms = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v9 = [algorithms count];

  if (v9)
  {
    if (v9 == 1)
    {
      algorithms2 = [(_DASSwapModelAbstractAggregator *)self algorithms];
      firstObject = [algorithms2 firstObject];
      [firstObject scoreForApplication:applicationCopy atDate:dateCopy];
      v13 = v12;
    }

    else
    {
      algorithms3 = [(_DASSwapModelAbstractAggregator *)self algorithms];
      v15 = [algorithms3 objectAtIndexedSubscript:0];
      [v15 scoreForApplication:applicationCopy atDate:dateCopy];
      v17 = v16;

      for (i = 1; i != v9; ++i)
      {
        algorithms4 = [(_DASSwapModelAbstractAggregator *)self algorithms];
        v20 = [algorithms4 objectAtIndexedSubscript:i];
        [v20 scoreForApplication:applicationCopy atDate:dateCopy];
        v17 = v17 + v21;
      }

      v13 = v17 / v9;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

@end