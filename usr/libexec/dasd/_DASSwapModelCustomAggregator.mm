@interface _DASSwapModelCustomAggregator
- (_DASSwapModelCustomAggregator)initWithAlgorithms:(id)a3;
- (double)scoreForApplication:(id)a3 atDate:(id)a4;
- (id)scoresForAllApplicationsAtDate:(id)a3;
@end

@implementation _DASSwapModelCustomAggregator

- (_DASSwapModelCustomAggregator)initWithAlgorithms:(id)a3
{
  v16.receiver = self;
  v16.super_class = _DASSwapModelCustomAggregator;
  v3 = [(_DASSwapModelAbstractAggregator *)&v16 initWithAlgorithms:a3];
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(_DASSwapModelAbstractAggregator *)v3 algorithms];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
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
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (id)scoresForAllApplicationsAtDate:(id)a3
{
  v70 = a3;
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
    v6 = [v8 scoresForAllApplicationsAtDate:v70];

LABEL_4:
    objc_autoreleasePoolPop(v4);
    v9 = 0;
    goto LABEL_5;
  }

  v11 = +[NSMutableSet set];
  v12 = +[NSMutableArray array];
  v13 = [(_DASSwapModeling *)self->_applicationUsageModeling scoresForAllApplicationsAtDate:v70];
  v14 = [v13 count];
  [v12 addObject:v13];
  v15 = [v13 allKeys];
  v69 = v11;
  [v11 addObjectsFromArray:v15];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v16 = [(_DASSwapModelAbstractAggregator *)self algorithms];
  v17 = [v16 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v17)
  {
    v18 = v17;
    v65 = v14;
    obj = v16;
    v60 = v6;
    v62 = v13;
    v63 = v4;
    v6 = *v76;
    v19 = 1;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v76 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v75 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        if (v21 != self->_applicationUsageModeling)
        {
          v23 = [(_DASSwapModeling *)v21 scoresForAllApplicationsAtDate:v70];
          v19 &= [v23 count] == 0;
          [v12 addObject:v23];
          v24 = [v23 allKeys];
          [v69 addObjectsFromArray:v24];
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
        v6 = &__NSDictionary0__struct;
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
      v6 = &NSLocalizedDescriptionKey_ptr;
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

          v50 = v6[20];
          v51 = v55 / v61;
          goto LABEL_38;
        }

        v31 = v6[20];
        v32 = [v12 firstObject];
        v33 = [v32 objectForKeyedSubscript:v30];
        [v33 doubleValue];
        v35 = v34;
        [v12 lastObject];
        v37 = v36 = v28;
        v38 = [v37 objectForKeyedSubscript:v30];
        [v38 doubleValue];
        v40 = [v31 numberWithDouble:v39 * 0.75 + v35 * 0.25];
        [obja setObject:v40 forKeyedSubscript:v30];

        v28 = v36;
        v6 = &NSLocalizedDescriptionKey_ptr;

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

      v41 = [v12 firstObject];
      v42 = [v41 objectForKeyedSubscript:v30];
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

      v50 = v6[20];
      v51 = v45 * 0.75 * 0.5 + v44 * 0.25;
LABEL_38:
      v32 = [v50 numberWithDouble:v51];
      [obja setObject:v32 forKeyedSubscript:v30];
      goto LABEL_39;
    }
  }

  else
  {
  }

  v6 = [v12 firstObject];
  v25 = 0;
  v9 = 0;
LABEL_42:

  objc_autoreleasePoolPop(v4);
  if (v25)
  {
    v9 = v9;
    v6 = v9;
  }

LABEL_5:

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
      [(_DASSwapModeling *)self->_applicationUsageModeling scoreForApplication:v6 atDate:v7];
      v13 = v14;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = [(_DASSwapModelAbstractAggregator *)self algorithms];
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v25 + 1) + 8 * i);
            if (v21 != self->_applicationUsageModeling)
            {
              [(_DASSwapModeling *)v21 scoreForApplication:v6 atDate:v7];
              v19 = v19 + v22;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
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