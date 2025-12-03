@interface MOEventBundleMO
+ (id)managedObjectWithEventBundle:(id)bundle inManagedObjectContext:(id)context;
+ (void)updateManagedObject:(id)object eventBundle:(id)bundle inManagedObjectContext:(id)context;
@end

@implementation MOEventBundleMO

+ (id)managedObjectWithEventBundle:(id)bundle inManagedObjectContext:(id)context
{
  contextCopy = context;
  bundleCopy = bundle;
  v7 = [[MOEventBundleMO alloc] initWithContext:contextCopy];
  [MOEventBundleMO updateManagedObject:v7 eventBundle:bundleCopy inManagedObjectContext:contextCopy];

  return v7;
}

+ (void)updateManagedObject:(id)object eventBundle:(id)bundle inManagedObjectContext:(id)context
{
  objectCopy = object;
  bundleCopy = bundle;
  contextCopy = context;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  [objectCopy setBundleIdentifier:bundleIdentifier];

  suggestionID = [bundleCopy suggestionID];
  [objectCopy setSuggestionID:suggestionID];

  creationDate = [bundleCopy creationDate];
  [objectCopy setCreationDate:creationDate];

  firstCreationDate = [bundleCopy firstCreationDate];
  [objectCopy setFirstCreationDate:firstCreationDate];

  endDate = [bundleCopy endDate];
  [objectCopy setEndDate:endDate];

  startDate = [bundleCopy startDate];
  [objectCopy setStartDate:startDate];

  expirationDate = [bundleCopy expirationDate];
  [objectCopy setExpirationDate:expirationDate];

  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy source]);
  [objectCopy setSource:v17];

  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy interfaceType]);
  [objectCopy setInterfaceType:v18];

  [objectCopy setFiltered:{objc_msgSend(bundleCopy, "filtered")}];
  promptLanguage = [bundleCopy promptLanguage];
  [objectCopy setPromptLanguage:promptLanguage];

  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy photoSource]);
  [objectCopy setPhotoSource:v20];

  [objectCopy setIsAggregatedAndSuppressed:{objc_msgSend(bundleCopy, "isAggregatedAndSuppressed")}];
  v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy summarizationGranularity]);
  [objectCopy setSummarizationGranularity:v21];

  subBundleIDs = [bundleCopy subBundleIDs];
  [objectCopy setSubBundleIDs:subBundleIDs];

  subSuggestionIDs = [bundleCopy subSuggestionIDs];
  [objectCopy setSubSuggestionIDs:subSuggestionIDs];

  [objectCopy setIncludedInSummaryBundleOnly:{objc_msgSend(bundleCopy, "includedInSummaryBundleOnly")}];
  visitEventsRejectedByWatchLocation = [bundleCopy visitEventsRejectedByWatchLocation];
  [objectCopy setVisitEventsRejectedByWatchLocation:visitEventsRejectedByWatchLocation];

  v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSubType]);
  [objectCopy setBundleSubType:v25];

  v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSuperType]);
  [objectCopy setBundleSuperType:v26];

  [objectCopy setIsSensitive:{objc_msgSend(bundleCopy, "isSensitive")}];
  [objectCopy setAction:0];
  action = [bundleCopy action];

  if (action)
  {
    action2 = [bundleCopy action];
    v29 = [MOActionMO managedObjectWithObject:action2 inManagedObjectContext:contextCopy];
    [objectCopy setAction:v29];
  }

  [objectCopy setConcurrentMediaAction:0];
  concurrentMediaAction = [bundleCopy concurrentMediaAction];

  if (concurrentMediaAction)
  {
    concurrentMediaAction2 = [bundleCopy concurrentMediaAction];
    v32 = [MOActionMO managedObjectWithObject:concurrentMediaAction2 inManagedObjectContext:contextCopy];
    [objectCopy setConcurrentMediaAction:v32];
  }

  [objectCopy setActions:0];
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  actions = [bundleCopy actions];
  v34 = [actions countByEnumeratingWithState:&v114 objects:v123 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v115;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v115 != v36)
        {
          objc_enumerationMutation(actions);
        }

        v38 = [MOActionMO managedObjectWithObject:*(*(&v114 + 1) + 8 * i) inManagedObjectContext:contextCopy];
        [objectCopy addActionsObject:v38];
      }

      v35 = [actions countByEnumeratingWithState:&v114 objects:v123 count:16];
    }

    while (v35);
  }

  [objectCopy setPersons:0];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  persons = [bundleCopy persons];
  v40 = [persons countByEnumeratingWithState:&v110 objects:v122 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v111;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v111 != v42)
        {
          objc_enumerationMutation(persons);
        }

        v44 = [MOPersonMO managedObjectWithObject:*(*(&v110 + 1) + 8 * j) inManagedObjectContext:contextCopy];
        [objectCopy addPersonsObject:v44];
      }

      v41 = [persons countByEnumeratingWithState:&v110 objects:v122 count:16];
    }

    while (v41);
  }

  [objectCopy setPlace:0];
  place = [bundleCopy place];

  if (place)
  {
    place2 = [bundleCopy place];
    v47 = [MOPlaceMO managedObjectWithObject:place2 inManagedObjectContext:contextCopy];
    [objectCopy setPlace:v47];
  }

  [objectCopy setPredominantWeather:0];
  predominantWeather = [bundleCopy predominantWeather];

  if (predominantWeather)
  {
    predominantWeather2 = [bundleCopy predominantWeather];
    v50 = [MOWeatherMO managedObjectWithObject:predominantWeather2 inManagedObjectContext:contextCopy];
    [objectCopy setPredominantWeather:v50];
  }

  [objectCopy setTime:0];
  time = [bundleCopy time];

  if (time)
  {
    time2 = [bundleCopy time];
    v53 = [MOTimeMO managedObjectWithObject:time2 inManagedObjectContext:contextCopy];
    [objectCopy setTime:v53];
  }

  v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy timeAtHomeSubType]);
  [objectCopy setTimeAtHomeSubType:v54];

  [objectCopy setResources:0];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v91 = bundleCopy;
  resources = [bundleCopy resources];
  v56 = [resources countByEnumeratingWithState:&v106 objects:v121 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v107;
    do
    {
      for (k = 0; k != v57; k = k + 1)
      {
        if (*v107 != v58)
        {
          objc_enumerationMutation(resources);
        }

        v60 = [MOResourceMO managedObjectWithObject:*(*(&v106 + 1) + 8 * k) inManagedObjectContext:contextCopy];
        [objectCopy addResourcesObject:v60];
      }

      v57 = [resources countByEnumeratingWithState:&v106 objects:v121 count:16];
    }

    while (v57);
  }

  [objectCopy setPlaces:0];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  places = [v91 places];
  v62 = [places countByEnumeratingWithState:&v102 objects:v120 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v103;
    do
    {
      for (m = 0; m != v63; m = m + 1)
      {
        if (*v103 != v64)
        {
          objc_enumerationMutation(places);
        }

        v66 = [MOPlaceMO managedObjectWithObject:*(*(&v102 + 1) + 8 * m) inManagedObjectContext:contextCopy];
        [objectCopy addPlacesObject:v66];
      }

      v63 = [places countByEnumeratingWithState:&v102 objects:v120 count:16];
    }

    while (v63);
  }

  [objectCopy setPhotoTraits:0];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  photoTraits = [v91 photoTraits];
  v68 = [photoTraits countByEnumeratingWithState:&v98 objects:v119 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v99;
    do
    {
      for (n = 0; n != v69; n = n + 1)
      {
        if (*v99 != v70)
        {
          objc_enumerationMutation(photoTraits);
        }

        v72 = [MOPhotoTraitMO managedObjectWithObject:*(*(&v98 + 1) + 8 * n) inManagedObjectContext:contextCopy];
        [objectCopy addPhotoTraitsObject:v72];
      }

      v69 = [photoTraits countByEnumeratingWithState:&v98 objects:v119 count:16];
    }

    while (v69);
  }

  metaDataForRank = [v91 metaDataForRank];
  [objectCopy setMetaDataForRank:metaDataForRank];

  [objectCopy setEvents:0];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [v91 events];
  v74 = [obj countByEnumeratingWithState:&v94 objects:v118 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v95;
    do
    {
      for (ii = 0; ii != v75; ii = ii + 1)
      {
        if (*v95 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v94 + 1) + 8 * ii);
        v79 = +[MOEventMO fetchRequest];
        [v79 setFetchLimit:1];
        [v79 setReturnsObjectsAsFaults:0];
        eventIdentifier = [v78 eventIdentifier];
        v81 = [NSPredicate predicateWithFormat:@"eventIdentifier = %@", eventIdentifier];
        [v79 setPredicate:v81];

        v93 = 0;
        v82 = [v79 execute:&v93];
        v83 = v93;
        firstObject = [v82 firstObject];

        if (!v83 && firstObject)
        {
          [objectCopy addEventsObject:firstObject];
        }
      }

      v75 = [obj countByEnumeratingWithState:&v94 objects:v118 count:16];
    }

    while (v75);
  }

  events = [objectCopy events];
  v86 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [events count]);
  [objectCopy setEventCount:v86];

  clusterMetadata = [v91 clusterMetadata];
  v88 = [MOClusterMetadataMO managedObjectWithObject:clusterMetadata inManagedObjectContext:contextCopy];
  [objectCopy setClusterMetadata:v88];

  outlierMetadata = [v91 outlierMetadata];
  v90 = [MOOutlierMetadataMO managedObjectWithObject:outlierMetadata inManagedObjectContext:contextCopy];
  [objectCopy setOutlierMetadata:v90];
}

@end