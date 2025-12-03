@interface _DASSwapModelCustomAggregator
- (_DASSwapModelCustomAggregator)initWithAlgorithms:(id)algorithms;
- (double)scoreForApplication:(id)application atDate:(id)date;
- (id)scoresForAllApplicationsAtDate:(id)date;
@end

@implementation _DASSwapModelCustomAggregator

- (_DASSwapModelCustomAggregator)initWithAlgorithms:(id)algorithms
{
  v16.receiver = self;
  v16.super_class = _DASSwapModelCustomAggregator;
  v3 = [(_DASSwapModelAbstractAggregator *)&v16 initWithAlgorithms:algorithms];
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    algorithms = [(_DASSwapModelAbstractAggregator *)v3 algorithms];
    v6 = [algorithms countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(algorithms);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v4->_applicationUsageModeling, v10);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [algorithms countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (id)scoresForAllApplicationsAtDate:(id)date
{
  dateCopy = date;
  v4 = objc_autoreleasePoolPush();
  algorithms = [(_DASSwapModelAbstractAggregator *)self algorithms];
  firstObject4 = [algorithms count];

  if (!firstObject4)
  {
    goto LABEL_4;
  }

  if (firstObject4 == 1)
  {
    algorithms2 = [(_DASSwapModelAbstractAggregator *)self algorithms];
    firstObject = [algorithms2 firstObject];
    firstObject4 = [firstObject scoresForAllApplicationsAtDate:dateCopy];

LABEL_4:
    objc_autoreleasePoolPop(v4);
    v9 = 0;
    goto LABEL_5;
  }

  v11 = +[NSMutableSet set];
  v12 = +[NSMutableArray array];
  v13 = [(_DASSwapModeling *)self->_applicationUsageModeling scoresForAllApplicationsAtDate:dateCopy];
  v14 = [v13 count];
  [v12 addObject:v13];
  allKeys = [v13 allKeys];
  v69 = v11;
  [v11 addObjectsFromArray:allKeys];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  algorithms3 = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v17 = [algorithms3 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v17)
  {
    v18 = v17;
    v65 = v14;
    obj = algorithms3;
    v60 = firstObject4;
    v62 = v13;
    v63 = v4;
    firstObject4 = *v76;
    v19 = 1;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v76 != firstObject4)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v75 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        if (v21 != self->_applicationUsageModeling)
        {
          v23 = [(_DASSwapModeling *)v21 scoresForAllApplicationsAtDate:dateCopy];
          v19 &= [v23 count] == 0;
          [v12 addObject:v23];
          allKeys2 = [v23 allKeys];
          [v69 addObjectsFromArray:allKeys2];
        }

        objc_autoreleasePoolPop(v22);
      }

      v18 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v18);

    v13 = v62;
    v4 = v63;
    if ((v19 & 1) == 0)
    {
      if (!v65 && [v69 count] < 0xA)
      {
        v25 = 0;
        v9 = 0;
        firstObject4 = &__NSDictionary0__struct;
        goto LABEL_42;
      }

      obja = +[NSMutableDictionary dictionary];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v66 = v69;
      v26 = [v66 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (!v26)
      {
        goto LABEL_41;
      }

      v27 = v26;
      v28 = *v72;
      firstObject4 = &NSLocalizedDescriptionKey_ptr;
LABEL_25:
      v29 = 0;
      v64 = v27;
      while (1)
      {
        if (*v72 != v28)
        {
          objc_enumerationMutation(v66);
        }

        v30 = *(*(&v71 + 1) + 8 * v29);
        if (v61 == 3)
        {
          break;
        }

        if (v61 != 2)
        {
          v52 = [v12 objectAtIndexedSubscript:0];
          v53 = [v52 objectForKeyedSubscript:v30];
          [v53 doubleValue];
          v55 = v54;

          if (v61 >= 2)
          {
            for (j = 1; j != v61; ++j)
            {
              v57 = [v12 objectAtIndexedSubscript:j];
              v58 = [v57 objectForKeyedSubscript:v30];
              [v58 doubleValue];
              v55 = v55 + v59;
            }
          }

          v50 = firstObject4[20];
          v51 = v55 / v61;
          goto LABEL_38;
        }

        v31 = firstObject4[20];
        firstObject2 = [v12 firstObject];
        v33 = [firstObject2 objectForKeyedSubscript:v30];
        [v33 doubleValue];
        v35 = v34;
        [v12 lastObject];
        v37 = v36 = v28;
        v38 = [v37 objectForKeyedSubscript:v30];
        [v38 doubleValue];
        v40 = [v31 numberWithDouble:v39 * 0.75 + v35 * 0.25];
        [obja setObject:v40 forKeyedSubscript:v30];

        v28 = v36;
        firstObject4 = &NSLocalizedDescriptionKey_ptr;

        v27 = v64;
LABEL_39:

        if (++v29 == v27)
        {
          v27 = [v66 countByEnumeratingWithState:&v71 objects:v79 count:16];
          if (!v27)
          {
LABEL_41:

            v9 = [obja copy];
            v25 = 1;
            v13 = v62;
            v4 = v63;
            goto LABEL_42;
          }

          goto LABEL_25;
        }
      }

      firstObject3 = [v12 firstObject];
      v42 = [firstObject3 objectForKeyedSubscript:v30];
      [v42 doubleValue];
      v44 = v43;

      v45 = 0.0;
      for (k = 1; k != 3; ++k)
      {
        v47 = [v12 objectAtIndexedSubscript:k];
        v48 = [v47 objectForKeyedSubscript:v30];
        [v48 doubleValue];
        v45 = v45 + v49;
      }

      v50 = firstObject4[20];
      v51 = v45 * 0.75 * 0.5 + v44 * 0.25;
LABEL_38:
      firstObject2 = [v50 numberWithDouble:v51];
      [obja setObject:firstObject2 forKeyedSubscript:v30];
      goto LABEL_39;
    }
  }

  else
  {
  }

  firstObject4 = [v12 firstObject];
  v25 = 0;
  v9 = 0;
LABEL_42:

  objc_autoreleasePoolPop(v4);
  if (v25)
  {
    v9 = v9;
    firstObject4 = v9;
  }

LABEL_5:

  return firstObject4;
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
      [(_DASSwapModeling *)self->_applicationUsageModeling scoreForApplication:applicationCopy atDate:dateCopy];
      v13 = v14;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      algorithms3 = [(_DASSwapModelAbstractAggregator *)self algorithms];
      v16 = [algorithms3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        v19 = 0.0;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(algorithms3);
            }

            v21 = *(*(&v25 + 1) + 8 * i);
            if (v21 != self->_applicationUsageModeling)
            {
              [(_DASSwapModeling *)v21 scoreForApplication:applicationCopy atDate:dateCopy];
              v19 = v19 + v22;
            }
          }

          v17 = [algorithms3 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v17);

        if (v19 != 0.0)
        {
          if (v9 == 3)
          {
            v23 = v19 * 0.5 * 0.75;
          }

          else
          {
            if (v9 != 2)
            {
              v13 = (v13 + v19) / v9;
              goto LABEL_22;
            }

            v23 = v19 * 0.75;
          }

          v13 = v23 + v13 * 0.25;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v13 = 0.0;
  }

LABEL_22:

  return v13;
}

@end