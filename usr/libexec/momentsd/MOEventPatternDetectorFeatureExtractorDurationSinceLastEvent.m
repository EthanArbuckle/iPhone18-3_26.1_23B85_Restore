@interface MOEventPatternDetectorFeatureExtractorDurationSinceLastEvent
- (MOEventPatternDetectorFeatureExtractorDurationSinceLastEvent)init;
- (id)extractFeaturesFromEvents:(id)a3;
@end

@implementation MOEventPatternDetectorFeatureExtractorDurationSinceLastEvent

- (MOEventPatternDetectorFeatureExtractorDurationSinceLastEvent)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorFeatureExtractorDurationSinceLastEvent;
  v2 = [(MOEventPatternDetectorFeatureExtractorDurationSinceLastEvent *)&v6 init];
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
  v18 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v19)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        v6 = objc_opt_new();
        if ([v5 count])
        {
          v7 = 0;
          do
          {
            if (v7)
            {
              v8 = [v5 objectAtIndex:v7 - 1];
              v9 = [v5 objectAtIndex:v7];
              v10 = [v9 startDate];
              v11 = [v8 endDate];
              [v10 timeIntervalSinceDate:v11];
              v13 = v12;

              v14 = [NSNumber numberWithDouble:v13];
              [v6 addObject:v14];
            }

            else
            {
              [v6 addObject:&off_100369EF8];
            }

            ++v7;
          }

          while ([v5 count] > v7);
        }

        [v18 addObject:v6];
      }

      v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v19);
  }

  return v18;
}

@end