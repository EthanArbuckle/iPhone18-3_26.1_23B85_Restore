@interface MOEventPatternDetectorFeatureExtractorEventDuration
- (MOEventPatternDetectorFeatureExtractorEventDuration)init;
- (id)extractFeaturesFromEvents:(id)a3;
@end

@implementation MOEventPatternDetectorFeatureExtractorEventDuration

- (MOEventPatternDetectorFeatureExtractorEventDuration)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorFeatureExtractorEventDuration;
  v2 = [(MOEventPatternDetectorFeatureExtractorEventDuration *)&v6 init];
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
  v31 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v3;
  v32 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v32)
  {
    v30 = *v47;
    v4 = &GEOPOICategoryGasStation_ptr;
    do
    {
      v5 = 0;
      do
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v5;
        v6 = *(*(&v46 + 1) + 8 * v5);
        v7 = objc_opt_new();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v36 = v6;
        v37 = [v36 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v37)
        {
          v8 = *v43;
          v34 = *v43;
          v35 = v7;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v43 != v8)
              {
                objc_enumerationMutation(v36);
              }

              v10 = *(*(&v42 + 1) + 8 * i);
              if ([v10 category] == 10)
              {
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v11 = [v10 interactions];
                v12 = [v11 countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = v4;
                  v15 = *v39;
                  v16 = 0.0;
                  do
                  {
                    for (j = 0; j != v13; j = j + 1)
                    {
                      if (*v39 != v15)
                      {
                        objc_enumerationMutation(v11);
                      }

                      v18 = *(*(&v38 + 1) + 8 * j);
                      v19 = [v18 mechanism];
                      if (v19 <= 0x11 && ((1 << v19) & 0x31B01) != 0)
                      {
                        v21 = [v18 endDate];
                        v22 = [v18 startDate];
                        [v21 timeIntervalSinceDate:v22];
                        v24 = v23;

                        v16 = v16 + v24;
                      }
                    }

                    v13 = [v11 countByEnumeratingWithState:&v38 objects:v50 count:16];
                  }

                  while (v13);
                  v4 = v14;
                  v8 = v34;
                  v7 = v35;
                }

                else
                {
                  v16 = 0.0;
                }
              }

              else
              {
                v11 = [v10 endDate];
                v25 = [v10 startDate];
                [v11 timeIntervalSinceDate:v25];
                v16 = v26;
              }

              v27 = [v4[190] numberWithDouble:v16];
              [v7 addObject:v27];
            }

            v37 = [v36 countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v37);
        }

        [v31 addObject:v7];
        v5 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v32);
  }

  return v31;
}

@end