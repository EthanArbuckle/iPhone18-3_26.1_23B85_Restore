@interface MOEventPatternDetectorFeatureExtractorContactFrequency
- (MOEventPatternDetectorFeatureExtractorContactFrequency)init;
- (id)extractFeaturesFromEvents:(id)events;
@end

@implementation MOEventPatternDetectorFeatureExtractorContactFrequency

- (MOEventPatternDetectorFeatureExtractorContactFrequency)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorFeatureExtractorContactFrequency;
  v2 = [(MOEventPatternDetectorFeatureExtractorContactFrequency *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)extractFeaturesFromEvents:(id)events
{
  eventsCopy = events;
  v23 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = eventsCopy;
  v24 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v24)
  {
    v22 = *v37;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v5 = *(*(&v36 + 1) + 8 * v4);
        v27 = objc_opt_new();
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v26 = v5;
        v6 = [v26 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v33;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v33 != v8)
              {
                objc_enumerationMutation(v26);
              }

              v10 = *(*(&v32 + 1) + 8 * i);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              interactions = [v10 interactions];
              v12 = [interactions countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = 0;
                v15 = *v29;
                do
                {
                  for (j = 0; j != v13; j = j + 1)
                  {
                    if (*v29 != v15)
                    {
                      objc_enumerationMutation(interactions);
                    }

                    mechanism = [*(*(&v28 + 1) + 8 * j) mechanism];
                    if (mechanism <= 0x11 && ((1 << mechanism) & 0x33B1F) != 0)
                    {
                      v14 = (v14 + 1);
                    }
                  }

                  v13 = [interactions countByEnumeratingWithState:&v28 objects:v40 count:16];
                }

                while (v13);
              }

              else
              {
                v14 = 0;
              }

              v19 = [NSNumber numberWithInt:v14];
              [v27 addObject:v19];
            }

            v7 = [v26 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v7);
        }

        [v23 addObject:v27];
        v4 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v24);
  }

  return v23;
}

@end