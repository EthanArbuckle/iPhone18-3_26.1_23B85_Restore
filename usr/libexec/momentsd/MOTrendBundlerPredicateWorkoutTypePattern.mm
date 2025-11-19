@interface MOTrendBundlerPredicateWorkoutTypePattern
- (MOTrendBundlerPredicateWorkoutTypePattern)init;
- (id)filterEvents:(id)a3;
@end

@implementation MOTrendBundlerPredicateWorkoutTypePattern

- (MOTrendBundlerPredicateWorkoutTypePattern)init
{
  v6.receiver = self;
  v6.super_class = MOTrendBundlerPredicateWorkoutTypePattern;
  v2 = [(MOTrendBundlerPredicateWorkoutTypePattern *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)filterEvents:(id)a3
{
  v3 = a3;
  v51 = objc_opt_new();
  v4 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v3;
  v45 = v4;
  v57 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v57)
  {
    v5 = *v76;
    v44 = @"kEventPatternTrendSlope";
    v48 = *v76;
    do
    {
      v6 = 0;
      do
      {
        if (*v76 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v75 + 1) + 8 * v6);
        v8 = [v7 category];
        if (v8 == 2 && ([v7 patterns], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "objectForKeyedSubscript:", @"kEventPatternType"), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "intValue") == 1))
        {
          v54 = [v7 patterns];
          v52 = [v54 objectForKeyedSubscript:@"kEventPatternTrendFeatureType"];
          if ([v52 intValue] == 1)
          {
            v9 = [v7 patterns];
            v10 = [v9 objectForKeyedSubscript:v44];
            [v10 doubleValue];
            v46 = v10;
            v47 = v9;
            if (v11 > 0.0)
            {

              goto LABEL_22;
            }

            if ([v7 category] != 2)
            {

              goto LABEL_24;
            }

            v12 = 1;
            v13 = 1;
            goto LABEL_13;
          }

          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        v13 = 0;
        v14 = 0;
        if ([v7 category] != 2)
        {
          goto LABEL_16;
        }

LABEL_13:
        v15 = [v7 patterns];
        v16 = [v15 objectForKeyedSubscript:@"kEventPatternType"];
        if ([v16 intValue] == 2)
        {
          v17 = [v7 patterns];
          v18 = [v17 objectForKeyedSubscript:@"kEventPatternRoutineStartingRoutine"];
          v14 = [v18 BOOLValue];

          v4 = v45;
          if ((v13 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {

          v14 = 0;
          if (!v13)
          {
LABEL_15:
            v5 = v48;
LABEL_16:
            if (!v12)
            {
              goto LABEL_18;
            }

LABEL_17:

            goto LABEL_18;
          }
        }

        v5 = v48;
        if (v12)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v8 == 2)
        {

          if ((v14 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (!v14)
        {
          goto LABEL_24;
        }

LABEL_22:
        v19 = [v7 patterns];
        v20 = [v19 objectForKey:@"kEventPatternOverallWorkoutType"];

        if (v20)
        {
          [v4 addObject:v7];
        }

LABEL_24:
        v6 = v6 + 1;
      }

      while (v57 != v6);
      v21 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
      v57 = v21;
    }

    while (v21);
  }

  if ([v4 count])
  {
    v22 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v58 = v4;
    v23 = [v58 countByEnumeratingWithState:&v71 objects:v82 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v72;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v72 != v25)
          {
            objc_enumerationMutation(v58);
          }

          v27 = [*(*(&v71 + 1) + 8 * i) patterns];
          v28 = [v27 objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];
          [v22 addObject:v28];
        }

        v24 = [v58 countByEnumeratingWithState:&v71 objects:v82 count:16];
      }

      while (v24);
    }

    v49 = v22;
    [v22 valueForKeyPath:@"@distinctUnionOfObjects.self"];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v53 = v70 = 0u;
    v56 = [v53 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v56)
    {
      v55 = *v68;
      do
      {
        v29 = 0;
        do
        {
          if (*v68 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v60 = v29;
          v30 = *(*(&v67 + 1) + 8 * v29);
          v62 = objc_opt_new();
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v31 = v58;
          v32 = [v31 countByEnumeratingWithState:&v63 objects:v80 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v64;
            do
            {
              for (j = 0; j != v33; j = j + 1)
              {
                if (*v64 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v63 + 1) + 8 * j);
                v37 = [v36 patterns];
                v38 = [v37 objectForKeyedSubscript:@"kEventPatternOverallWorkoutType"];
                v39 = [v38 isEqualToString:v30];

                if (v39)
                {
                  [v62 addObject:v36];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v63 objects:v80 count:16];
            }

            while (v33);
          }

          v40 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
          v79 = v40;
          v41 = [NSArray arrayWithObjects:&v79 count:1];
          v42 = [v62 sortedArrayUsingDescriptors:v41];

          [v51 addObject:v42];
          v29 = v60 + 1;
        }

        while ((v60 + 1) != v56);
        v56 = [v53 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v56);
    }

    v4 = v45;
  }

  return v51;
}

@end