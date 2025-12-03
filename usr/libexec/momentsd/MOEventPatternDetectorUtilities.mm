@interface MOEventPatternDetectorUtilities
+ (id)getHomeVisitChunksForStandardDay:(id)day;
@end

@implementation MOEventPatternDetectorUtilities

+ (id)getHomeVisitChunksForStandardDay:(id)day
{
  dayCopy = day;
  if ([dayCopy count])
  {
    v4 = +[NSCalendar currentCalendar];
    v5 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = dayCopy;
    obj = dayCopy;
    v32 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v32)
    {
      v30 = *v36;
      v31 = v4;
      do
      {
        v6 = 0;
        do
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v35 + 1) + 8 * v6);
          startDate = [v7 startDate];
          endDate = [v7 endDate];
          v10 = [v4 components:28 fromDate:startDate];
          [v10 setHour:3];
          v11 = [v4 dateFromComponents:v10];
          v33 = v10;
          v34 = v6;
          if ([startDate isOnOrAfter:v11])
          {
            v12 = [v4 dateFromComponents:v10];
            v13 = [v12 dateByAddingTimeInterval:86400.0];

            v11 = v13;
          }

          if ([startDate isBeforeDate:endDate])
          {
            v14 = 0;
            v15 = startDate;
            v16 = v11;
            do
            {
              if ([v15 isBeforeDate:v16] && objc_msgSend(endDate, "isOnOrAfter:", v16))
              {
                v17 = [v16 dateByAddingTimeInterval:-1.0];
              }

              else
              {
                v17 = endDate;
              }

              v18 = v17;

              v19 = [MOEvent alloc];
              eventIdentifier = [v7 eventIdentifier];
              creationDate = [v7 creationDate];
              v22 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v19, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", eventIdentifier, v15, v18, creationDate, [v7 provider], objc_msgSend(v7, "category"));

              expirationDate = [v7 expirationDate];
              [(MOEvent *)v22 setExpirationDate:expirationDate];

              [v5 addObject:v22];
              startDate = [v18 dateByAddingTimeInterval:1.0];

              v11 = [v16 dateByAddingTimeInterval:86400.0];

              v15 = startDate;
              v16 = v11;
              v14 = v18;
            }

            while (([startDate isBeforeDate:endDate] & 1) != 0);
          }

          else
          {
            v18 = 0;
          }

          v6 = v34 + 1;
          v4 = v31;
        }

        while ((v34 + 1) != v32);
        v32 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v32);
    }

    v24 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v39 = v24;
    v25 = [NSArray arrayWithObjects:&v39 count:1];
    v26 = [v5 sortedArrayUsingDescriptors:v25];

    dayCopy = v28;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end