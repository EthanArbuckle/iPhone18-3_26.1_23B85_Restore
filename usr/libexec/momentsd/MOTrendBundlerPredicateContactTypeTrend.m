@interface MOTrendBundlerPredicateContactTypeTrend
- (MOTrendBundlerPredicateContactTypeTrend)init;
- (id)filterEvents:(id)a3;
@end

@implementation MOTrendBundlerPredicateContactTypeTrend

- (MOTrendBundlerPredicateContactTypeTrend)init
{
  v6.receiver = self;
  v6.super_class = MOTrendBundlerPredicateContactTypeTrend;
  v2 = [(MOTrendBundlerPredicateContactTypeTrend *)&v6 init];
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
  v52 = objc_opt_new();
  v46 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v72 objects:v80 count:16];
  v48 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v73;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v73 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v72 + 1) + 8 * i);
        if ([v9 category] == 10)
        {
          v10 = [v9 patterns];
          v11 = [v10 objectForKeyedSubscript:@"kEventPatternType"];
          if ([v11 intValue] != 1)
          {

            continue;
          }

          v12 = [v9 patterns];
          v13 = [v12 objectForKeyedSubscript:@"kEventPatternTrendFeatureType"];
          v14 = [v13 intValue];
          if (v14 == 1 || ([v9 patterns], v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v53, "objectForKeyedSubscript:", @"kEventPatternTrendFeatureType"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "intValue") == 2))
          {
            v15 = [v9 patterns];
            [v15 objectForKeyedSubscript:@"kEventPatternTrendSlope"];
            v57 = v10;
            obja = v14;
            v16 = v13;
            v17 = v12;
            v18 = v6;
            v20 = v19 = v7;
            [v20 doubleValue];
            v22 = v21 > 0.0;

            v7 = v19;
            v6 = v18;
            v12 = v17;
            v13 = v16;

            v4 = v48;
            v10 = v57;
            if (obja == 1)
            {
LABEL_15:

              if (v22)
              {
                [v46 addObject:v9];
              }

              continue;
            }
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v6);
  }

  v23 = v46;
  if ([v46 count])
  {
    v24 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v46;
    v25 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v69;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v69 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = [*(*(&v68 + 1) + 8 * j) patterns];
          v30 = [v29 objectForKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
          [v24 addObject:v30];
        }

        v26 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v26);
    }

    v47 = v24;
    [v24 valueForKeyPath:@"@distinctUnionOfObjects.self"];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v49 = v67 = 0u;
    v54 = [v49 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v54)
    {
      v51 = *v65;
      do
      {
        v31 = 0;
        do
        {
          if (*v65 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v58 = v31;
          v32 = *(*(&v64 + 1) + 8 * v31);
          v59 = objc_opt_new();
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v33 = obj;
          v34 = [v33 countByEnumeratingWithState:&v60 objects:v77 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v61;
            do
            {
              for (k = 0; k != v35; k = k + 1)
              {
                if (*v61 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v60 + 1) + 8 * k);
                v39 = [v38 patterns];
                v40 = [v39 objectForKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
                v41 = [v40 isEqualToString:v32];

                if (v41)
                {
                  [v59 addObject:v38];
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v60 objects:v77 count:16];
            }

            while (v35);
          }

          v42 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
          v76 = v42;
          v43 = [NSArray arrayWithObjects:&v76 count:1];
          v44 = [v59 sortedArrayUsingDescriptors:v43];

          [v52 addObject:v44];
          v31 = v58 + 1;
        }

        while ((v58 + 1) != v54);
        v54 = [v49 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v54);
    }

    v23 = v46;
    v4 = v48;
  }

  return v52;
}

@end