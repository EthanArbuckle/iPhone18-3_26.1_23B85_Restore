@interface MOEventPatternDetectorFeatureExtractorEventPresence
- (MOEventPatternDetectorFeatureExtractorEventPresence)init;
- (id)extractFeaturesFromEvents:(id)a3;
@end

@implementation MOEventPatternDetectorFeatureExtractorEventPresence

- (MOEventPatternDetectorFeatureExtractorEventPresence)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorFeatureExtractorEventPresence;
  v2 = [(MOEventPatternDetectorFeatureExtractorEventPresence *)&v6 init];
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
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_opt_new();
        if ([v10 count])
        {
          v12 = 0;
          do
          {
            [v11 addObject:&off_100369730];
            ++v12;
          }

          while ([v10 count] > v12);
        }

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end