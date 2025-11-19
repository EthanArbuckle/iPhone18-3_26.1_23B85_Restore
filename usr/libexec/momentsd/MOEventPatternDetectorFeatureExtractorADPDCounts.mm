@interface MOEventPatternDetectorFeatureExtractorADPDCounts
- (MOEventPatternDetectorFeatureExtractorADPDCounts)init;
- (id)extractFeaturesFromEvents:(id)a3;
@end

@implementation MOEventPatternDetectorFeatureExtractorADPDCounts

- (MOEventPatternDetectorFeatureExtractorADPDCounts)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorFeatureExtractorADPDCounts;
  v2 = [(MOEventPatternDetectorFeatureExtractorADPDCounts *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)extractFeaturesFromEvents:(id)a3
{
  v3 = a3;
  v25 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v24 = *v31;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = objc_opt_new();
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v26 + 1) + 8 * j);
              v15 = [v14 pCount];
              v16 = [v15 intValue];

              if ((v16 & 0x80000000) == 0)
              {
                v17 = [v14 pCount];
                [v8 addObject:v17];
              }

              v18 = [v14 densityScore];
              [v18 doubleValue];
              v20 = v19;

              if (v20 >= 0.0)
              {
                v21 = [v14 densityScore];
                [v8 addObject:v21];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v11);
        }

        [v25 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  return v25;
}

@end