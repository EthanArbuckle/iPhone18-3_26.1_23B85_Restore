@interface _DASSwapModelAverageAggregator
- (double)scoreForApplication:(id)a3 atDate:(id)a4;
- (id)scoresForAllApplicationsAtDate:(id)a3;
@end

@implementation _DASSwapModelAverageAggregator

- (id)scoresForAllApplicationsAtDate:(id)a3
{
  v39 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v6 = [v5 count];

  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    v7 = [(_DASSwapModelAbstractAggregator *)self algorithms];
    v8 = [v7 firstObject];
    v6 = [v8 scoresForAllApplicationsAtDate:v39];

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
  v12 = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v17 scoresForAllApplicationsAtDate:v39];
        [v11 addObject:v19];
        v20 = [v19 allKeys];
        [v10 addObjectsFromArray:v20];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
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

- (double)scoreForApplication:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v9 = [v8 count];

  if (v9)
  {
    if (v9 == 1)
    {
      v10 = [(_DASSwapModelAbstractAggregator *)self algorithms];
      v11 = [v10 firstObject];
      [v11 scoreForApplication:v6 atDate:v7];
      v13 = v12;
    }

    else
    {
      v14 = [(_DASSwapModelAbstractAggregator *)self algorithms];
      v15 = [v14 objectAtIndexedSubscript:0];
      [v15 scoreForApplication:v6 atDate:v7];
      v17 = v16;

      for (i = 1; i != v9; ++i)
      {
        v19 = [(_DASSwapModelAbstractAggregator *)self algorithms];
        v20 = [v19 objectAtIndexedSubscript:i];
        [v20 scoreForApplication:v6 atDate:v7];
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