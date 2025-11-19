@interface MOEventBundleMO
+ (id)managedObjectWithEventBundle:(id)a3 inManagedObjectContext:(id)a4;
+ (void)updateManagedObject:(id)a3 eventBundle:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation MOEventBundleMO

+ (id)managedObjectWithEventBundle:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOEventBundleMO alloc] initWithContext:v5];
  [MOEventBundleMO updateManagedObject:v7 eventBundle:v6 inManagedObjectContext:v5];

  return v7;
}

+ (void)updateManagedObject:(id)a3 eventBundle:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 bundleIdentifier];
  [v7 setBundleIdentifier:v10];

  v11 = [v8 suggestionID];
  [v7 setSuggestionID:v11];

  v12 = [v8 creationDate];
  [v7 setCreationDate:v12];

  v13 = [v8 firstCreationDate];
  [v7 setFirstCreationDate:v13];

  v14 = [v8 endDate];
  [v7 setEndDate:v14];

  v15 = [v8 startDate];
  [v7 setStartDate:v15];

  v16 = [v8 expirationDate];
  [v7 setExpirationDate:v16];

  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 source]);
  [v7 setSource:v17];

  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 interfaceType]);
  [v7 setInterfaceType:v18];

  [v7 setFiltered:{objc_msgSend(v8, "filtered")}];
  v19 = [v8 promptLanguage];
  [v7 setPromptLanguage:v19];

  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 photoSource]);
  [v7 setPhotoSource:v20];

  [v7 setIsAggregatedAndSuppressed:{objc_msgSend(v8, "isAggregatedAndSuppressed")}];
  v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 summarizationGranularity]);
  [v7 setSummarizationGranularity:v21];

  v22 = [v8 subBundleIDs];
  [v7 setSubBundleIDs:v22];

  v23 = [v8 subSuggestionIDs];
  [v7 setSubSuggestionIDs:v23];

  [v7 setIncludedInSummaryBundleOnly:{objc_msgSend(v8, "includedInSummaryBundleOnly")}];
  v24 = [v8 visitEventsRejectedByWatchLocation];
  [v7 setVisitEventsRejectedByWatchLocation:v24];

  v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 bundleSubType]);
  [v7 setBundleSubType:v25];

  v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 bundleSuperType]);
  [v7 setBundleSuperType:v26];

  [v7 setIsSensitive:{objc_msgSend(v8, "isSensitive")}];
  [v7 setAction:0];
  v27 = [v8 action];

  if (v27)
  {
    v28 = [v8 action];
    v29 = [MOActionMO managedObjectWithObject:v28 inManagedObjectContext:v9];
    [v7 setAction:v29];
  }

  [v7 setConcurrentMediaAction:0];
  v30 = [v8 concurrentMediaAction];

  if (v30)
  {
    v31 = [v8 concurrentMediaAction];
    v32 = [MOActionMO managedObjectWithObject:v31 inManagedObjectContext:v9];
    [v7 setConcurrentMediaAction:v32];
  }

  [v7 setActions:0];
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v33 = [v8 actions];
  v34 = [v33 countByEnumeratingWithState:&v114 objects:v123 count:16];
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
          objc_enumerationMutation(v33);
        }

        v38 = [MOActionMO managedObjectWithObject:*(*(&v114 + 1) + 8 * i) inManagedObjectContext:v9];
        [v7 addActionsObject:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v114 objects:v123 count:16];
    }

    while (v35);
  }

  [v7 setPersons:0];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v39 = [v8 persons];
  v40 = [v39 countByEnumeratingWithState:&v110 objects:v122 count:16];
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
          objc_enumerationMutation(v39);
        }

        v44 = [MOPersonMO managedObjectWithObject:*(*(&v110 + 1) + 8 * j) inManagedObjectContext:v9];
        [v7 addPersonsObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v110 objects:v122 count:16];
    }

    while (v41);
  }

  [v7 setPlace:0];
  v45 = [v8 place];

  if (v45)
  {
    v46 = [v8 place];
    v47 = [MOPlaceMO managedObjectWithObject:v46 inManagedObjectContext:v9];
    [v7 setPlace:v47];
  }

  [v7 setPredominantWeather:0];
  v48 = [v8 predominantWeather];

  if (v48)
  {
    v49 = [v8 predominantWeather];
    v50 = [MOWeatherMO managedObjectWithObject:v49 inManagedObjectContext:v9];
    [v7 setPredominantWeather:v50];
  }

  [v7 setTime:0];
  v51 = [v8 time];

  if (v51)
  {
    v52 = [v8 time];
    v53 = [MOTimeMO managedObjectWithObject:v52 inManagedObjectContext:v9];
    [v7 setTime:v53];
  }

  v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 timeAtHomeSubType]);
  [v7 setTimeAtHomeSubType:v54];

  [v7 setResources:0];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v91 = v8;
  v55 = [v8 resources];
  v56 = [v55 countByEnumeratingWithState:&v106 objects:v121 count:16];
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
          objc_enumerationMutation(v55);
        }

        v60 = [MOResourceMO managedObjectWithObject:*(*(&v106 + 1) + 8 * k) inManagedObjectContext:v9];
        [v7 addResourcesObject:v60];
      }

      v57 = [v55 countByEnumeratingWithState:&v106 objects:v121 count:16];
    }

    while (v57);
  }

  [v7 setPlaces:0];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v61 = [v91 places];
  v62 = [v61 countByEnumeratingWithState:&v102 objects:v120 count:16];
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
          objc_enumerationMutation(v61);
        }

        v66 = [MOPlaceMO managedObjectWithObject:*(*(&v102 + 1) + 8 * m) inManagedObjectContext:v9];
        [v7 addPlacesObject:v66];
      }

      v63 = [v61 countByEnumeratingWithState:&v102 objects:v120 count:16];
    }

    while (v63);
  }

  [v7 setPhotoTraits:0];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v67 = [v91 photoTraits];
  v68 = [v67 countByEnumeratingWithState:&v98 objects:v119 count:16];
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
          objc_enumerationMutation(v67);
        }

        v72 = [MOPhotoTraitMO managedObjectWithObject:*(*(&v98 + 1) + 8 * n) inManagedObjectContext:v9];
        [v7 addPhotoTraitsObject:v72];
      }

      v69 = [v67 countByEnumeratingWithState:&v98 objects:v119 count:16];
    }

    while (v69);
  }

  v73 = [v91 metaDataForRank];
  [v7 setMetaDataForRank:v73];

  [v7 setEvents:0];
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
        v80 = [v78 eventIdentifier];
        v81 = [NSPredicate predicateWithFormat:@"eventIdentifier = %@", v80];
        [v79 setPredicate:v81];

        v93 = 0;
        v82 = [v79 execute:&v93];
        v83 = v93;
        v84 = [v82 firstObject];

        if (!v83 && v84)
        {
          [v7 addEventsObject:v84];
        }
      }

      v75 = [obj countByEnumeratingWithState:&v94 objects:v118 count:16];
    }

    while (v75);
  }

  v85 = [v7 events];
  v86 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v85 count]);
  [v7 setEventCount:v86];

  v87 = [v91 clusterMetadata];
  v88 = [MOClusterMetadataMO managedObjectWithObject:v87 inManagedObjectContext:v9];
  [v7 setClusterMetadata:v88];

  v89 = [v91 outlierMetadata];
  v90 = [MOOutlierMetadataMO managedObjectWithObject:v89 inManagedObjectContext:v9];
  [v7 setOutlierMetadata:v90];
}

@end