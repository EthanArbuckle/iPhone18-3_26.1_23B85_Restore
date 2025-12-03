@interface MOTopicAnnotationManager
- (id)annotateBaseEvents:(id)events dateInterval:(id)interval;
- (id)getBaseEvents:(id)events;
@end

@implementation MOTopicAnnotationManager

- (id)getBaseEvents:(id)events
{
  eventsCopy = events;
  v4 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 7];
  v5 = [eventsCopy filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)annotateBaseEvents:(id)events dateInterval:(id)interval
{
  eventsCopy = events;
  intervalCopy = interval;
  if (eventsCopy && [eventsCopy count] && objc_msgSend(eventsCopy, "count") <= 1)
  {
    v9 = [MOEventBundle alloc];
    v10 = +[NSUUID UUID];
    v11 = +[NSDate date];
    v7 = [(MOEventBundle *)v9 initWithBundleIdentifier:v10 creationDate:v11];

    [(MOEventBundle *)v7 setInterfaceType:8];
    v12 = [[MOAction alloc] initWithActionName:@"Topic of Interest" actionType:1 actionSubtype:2];
    [(MOEventBundle *)v7 setAction:v12];

    firstObject = [eventsCopy firstObject];
    eventIdentifier = [firstObject eventIdentifier];
    action = [(MOEventBundle *)v7 action];
    [action setSourceEventIdentifier:eventIdentifier];

    firstObject2 = [eventsCopy firstObject];
    firstObject3 = [eventsCopy firstObject];
    scoredTopics = [firstObject3 scoredTopics];
    v19 = [firstObject2 displayNameOfScoredTopics:scoredTopics];

    v35 = v19;
    v20 = [v19 keysSortedByValueUsingComparator:&__block_literal_global_56];
    v21 = v20;
    if ([v20 count] >= 4)
    {
      v21 = [v20 subarrayWithRange:{0, 3}];
    }

    v34 = v20;
    v33 = [v21 componentsJoinedByString:{@", "}];
    v22 = [NSString stringWithFormat:@"%@: %@", @"Topic of Interest", v33];
    [(MOEventBundle *)v7 setPromptLanguage:v22];

    v23 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = v21;
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v37;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[MOResource alloc] initWithName:*(*(&v36 + 1) + 8 * i) type:8];
          [v23 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v26);
    }

    v30 = [v23 copy];
    [(MOEventBundle *)v7 setResources:v30];

    [(MOEventBundle *)v7 setEvents:eventsCopy];
    [(MOEventBundle *)v7 setPropertiesBasedOnEvents];
    startDate = [intervalCopy startDate];
    [(MOEventBundle *)v7 setStartDate:startDate];

    endDate = [intervalCopy endDate];
    [(MOEventBundle *)v7 setEndDate:endDate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end