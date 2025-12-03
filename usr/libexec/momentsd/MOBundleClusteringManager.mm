@interface MOBundleClusteringManager
+ (BOOL)_containsCompleteEmbeddingDistanceWeightKeys:(id)keys;
+ (id)setEmbeddingWeightsWithConfigurationManager:(id)manager configurationManager:(id)configurationManager;
- (BOOL)isClusteringResultValid;
- (MOBundleClusteringManager)initWithUniverse:(id)universe;
- (MOPhotoManager)photoManager;
- (id)_convertContextvalueToString:(id)string forKey:(id)key;
- (id)_countValidKeysInHistogram:(id)histogram;
- (id)_phenotypeDimensionFor:(id)for withphenotypeDimensionDict:(id)dict;
- (id)generateClusterBundleFrom:(id)from withEmbeddings:(id)embeddings andCreationDate:(id)date excludeResourceTypes:(id)types;
- (id)getDefaultClusteringParams;
- (id)getDefaultDistanceWeight;
- (id)getEmbeddingsFromBundles:(id)bundles forEmbeddingType:(unint64_t)type;
- (void)annotateAnomalyBundles:(id)bundles withEmbeddings:(id)embeddings handler:(id)handler;
- (void)generateClusterBundles:(id)bundles withEmbeddings:(id)embeddings handler:(id)handler;
- (void)initializeHDBSCANWithParams:(id)params;
- (void)runHDBSCANClusteringOn:(id)on;
- (void)submitAnomalyBundleInternalAnalytics:(id)analytics withOnboardingStatus:(id)status andSubmissionDate:(id)date;
- (void)submitClusterBundleInternalAnalytics:(id)analytics withOnboardingStatus:(id)status andSubmissionDate:(id)date;
@end

@implementation MOBundleClusteringManager

- (MOBundleClusteringManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  v31.receiver = self;
  v31.super_class = MOBundleClusteringManager;
  v9 = [(MOBundleClusteringManager *)&v31 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("MOBundleClusteringManager", v10);
    v12 = *(v9 + 3);
    *(v9 + 3) = v11;

    objc_storeStrong(v9 + 5, v8);
    getDefaultClusteringParams = [v9 getDefaultClusteringParams];
    v14 = *(v9 + 7);
    *(v9 + 7) = getDefaultClusteringParams;

    v15 = [[MOHDBSCANClustering alloc] initWithParameters:*(v9 + 7)];
    v16 = *(v9 + 8);
    *(v9 + 8) = v15;

    objc_storeStrong(v9 + 4, universe);
    *(v9 + 72) = xmmword_100322FB0;
    *(v9 + 88) = vdupq_n_s64(2uLL);
    HIDWORD(v17) = 1034147594;
    *(v9 + 1) = 0x3DA3D70A3D4CCCCDLL;
    *(v9 + 4) = 1051260355;
    v18 = *(v9 + 5);
    if (v18)
    {
      LODWORD(v17) = 0.5;
      [v18 getFloatSettingForKey:@"MOClusteringParams_clusterPhenotypeContextRatioThreshold" withFallback:v17];
      *(v9 + 9) = v19;
      v20 = *(v9 + 10);
      *&v20 = v20;
      [*(v9 + 5) getFloatSettingForKey:@"MOClusteringParams_phenotypeArbirationCountThreshold" withFallback:v20];
      v22 = v21;
      *(v9 + 10) = v22;
      *&v22 = *(v9 + 11);
      [*(v9 + 5) getFloatSettingForKey:@"MOClusteringParams_clusterPhenotypeContextCountThreshold" withFallback:v22];
      *(v9 + 11) = v23;
      LODWORD(v24) = *(v9 + 2);
      [*(v9 + 5) getFloatSettingForKey:@"avgGoodnessScoreFilteringThreshold" withFallback:v24];
      *(v9 + 2) = v25;
      *(v9 + 12) = [*(v9 + 5) getIntegerSettingForKey:@"phenoTypeCategoryCountFilteringThreshold" withFallback:*(v9 + 24)];
      LODWORD(v26) = *(v9 + 3);
      [*(v9 + 5) getFloatSettingForKey:@"goodnessScoreAnomalySignificanceThreshold" withFallback:v26];
      *(v9 + 3) = v27;
      LODWORD(v28) = *(v9 + 4);
      [*(v9 + 5) getFloatSettingForKey:@"outlierScoreAnomalySignificanceThreshold" withFallback:v28];
      *(v9 + 4) = v29;
    }
  }

  return v9;
}

- (MOPhotoManager)photoManager
{
  photoManager = self->_photoManager;
  if (!photoManager)
  {
    universe = self->_universe;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MODaemonUniverse *)universe getService:v6];
    v8 = self->_photoManager;
    self->_photoManager = v7;

    photoManager = self->_photoManager;
  }

  return photoManager;
}

- (id)getEmbeddingsFromBundles:(id)bundles forEmbeddingType:(unint64_t)type
{
  bundlesCopy = bundles;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __71__MOBundleClusteringManager_getEmbeddingsFromBundles_forEmbeddingType___block_invoke;
  v8[3] = &unk_10033ABB8;
  typeCopy = type;
  v6 = objc_opt_new();
  v9 = v6;
  [bundlesCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __71__MOBundleClusteringManager_getEmbeddingsFromBundles_forEmbeddingType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MOEmbedding alloc] initWithEventBundle:v3 forEmbeddingType:*(a1 + 40)];
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __71__MOBundleClusteringManager_getEmbeddingsFromBundles_forEmbeddingType___block_invoke_cold_1(v4);
  }

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__MOBundleClusteringManager_getEmbeddingsFromBundles_forEmbeddingType___block_invoke_cold_2(v3);
    }
  }
}

- (void)runHDBSCANClusteringOn:(id)on
{
  onCopy = on;
  v5 = [onCopy count];
  p_clusteringParams = &self->_clusteringParams;
  if (v5 <= [(MOClusteringParams *)self->_clusteringParams minClusterSize])
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MOBundleClusteringManager *)onCopy runHDBSCANClusteringOn:?];
    }
  }

  else
  {
    [(MOHDBSCANClustering *)self->_hdbscanClustering runHDBSCANClusteringOn:onCopy];
  }
}

- (BOOL)isClusteringResultValid
{
  getClusterLabels = [(MOHDBSCANClustering *)self->_hdbscanClustering getClusterLabels];
  v3 = [NSCountedSet setWithArray:getClusterLabels];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)generateClusterBundles:(id)bundles withEmbeddings:(id)embeddings handler:(id)handler
{
  bundlesCopy = bundles;
  embeddingsCopy = embeddings;
  handlerCopy = handler;
  selfCopy = self;
  getClusterLabels = [(MOBundleClusteringManager *)self getClusterLabels];
  if (![getClusterLabels count])
  {
    v37 = [NSError alloc];
    v80 = NSLocalizedDescriptionKey;
    v81 = @"Cluster labels were not generated. Unable to create cluster bundles";
    v38 = &v81;
    v39 = &v80;
LABEL_25:
    v40 = [NSDictionary dictionaryWithObjects:v38 forKeys:v39 count:1];
    v14 = [v37 initWithDomain:@"MOBundleClusteringManager" code:0 userInfo:v40];

    v31 = objc_opt_new();
    handlerCopy[2](handlerCopy, v31, v14);
    goto LABEL_31;
  }

  v12 = [getClusterLabels count];
  if (v12 != [embeddingsCopy count])
  {
    v37 = [NSError alloc];
    v78 = NSLocalizedDescriptionKey;
    v79 = @"Label count and embedding count do not match. Unable to create cluster bundles";
    v38 = &v79;
    v39 = &v78;
    goto LABEL_25;
  }

  v41 = handlerCopy;
  v13 = [NSCountedSet setWithArray:getClusterLabels];
  v50 = objc_opt_new();
  v54 = +[NSDate date];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v62;
    v42 = embeddingsCopy;
    v43 = bundlesCopy;
    v52 = v14;
    v53 = getClusterLabels;
    v51 = *v62;
    do
    {
      v18 = 0;
      v56 = v16;
      do
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v61 + 1) + 8 * v18);
        if (([v19 isEqualToNumber:&off_100369FB8] & 1) == 0)
        {
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = __75__MOBundleClusteringManager_generateClusterBundles_withEmbeddings_handler___block_invoke;
          v60[3] = &unk_100337600;
          v60[4] = v19;
          v57 = [getClusterLabels indexesOfObjectsPassingTest:v60];
          v20 = [embeddingsCopy objectsAtIndexes:?];
          v21 = objc_opt_new();
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = __75__MOBundleClusteringManager_generateClusterBundles_withEmbeddings_handler___block_invoke_2;
          v58[3] = &unk_100337628;
          v22 = v21;
          v59 = v22;
          [v20 enumerateObjectsUsingBlock:v58];
          allObjects = [v22 allObjects];
          v24 = [NSPredicate predicateWithFormat:@"bundleIdentifier in %@", allObjects];

          v25 = [bundlesCopy filteredArrayUsingPredicate:v24];
          v26 = [(MOBundleClusteringManager *)selfCopy generateClusterBundleFrom:v25 withEmbeddings:v20 andCreationDate:v54 excludeResourceTypes:0];
          v27 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
          if (v26)
          {
            if (v28)
            {
              subBundleIDs = [v26 subBundleIDs];
              v46 = [subBundleIDs count];
              clusterMetadata = [v26 clusterMetadata];
              isFiltered = [clusterMetadata isFiltered];
              clusterMetadata2 = [v26 clusterMetadata];
              phenotype = [clusterMetadata2 phenotype];
              startDate = [v26 startDate];
              endDate = [v26 endDate];
              *buf = 138413571;
              v66 = v19;
              v67 = 2048;
              v68 = v46;
              v69 = 1024;
              v70 = isFiltered;
              v71 = 2113;
              v72 = phenotype;
              v73 = 2112;
              v74 = startDate;
              v75 = 2112;
              v76 = endDate;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Created a cluster bundle: LabelNo=%@,bundleCount=%lu,isFiltered=%d,phenotype=%{private}@, dateRange=%@-%@", buf, 0x3Au);

              bundlesCopy = v43;
              embeddingsCopy = v42;
            }

            [v50 addObject:v26];
          }

          else
          {
            if (v28)
            {
              *buf = 138412290;
              v66 = v19;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Cluster bundle for label %@ is nil. skip and proceed to the next clustering label", buf, 0xCu);
            }
          }

          v14 = v52;
          getClusterLabels = v53;
          v16 = v56;
          v17 = v51;
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v16);
  }

  handlerCopy = v41;
  v31 = v50;
  if (v41)
  {
    v32 = [v50 count];
    v33 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
    if (v32)
    {
      v35 = v50;
      if (v34)
      {
        v36 = [v50 count];
        *buf = 134217984;
        v66 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Cluster bundle generation completed. cluster bundle count=%lu", buf, 0xCu);
        v35 = v50;
      }
    }

    else
    {
      if (v34)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "No cluster bundle is available", buf, 2u);
      }

      v35 = 0;
    }

    v41[2](v41, v35, 0);
  }

LABEL_31:
}

void __75__MOBundleClusteringManager_generateClusterBundles_withEmbeddings_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleIdentifier];
    [v4 addObject:v5];
  }
}

- (void)annotateAnomalyBundles:(id)bundles withEmbeddings:(id)embeddings handler:(id)handler
{
  handlerCopy = handler;
  hdbscanClustering = self->_hdbscanClustering;
  embeddingsCopy = embeddings;
  bundlesCopy = bundles;
  getClusterLabels = [(MOHDBSCANClustering *)hdbscanClustering getClusterLabels];
  getOutlierScoreDict = [(MOHDBSCANClustering *)self->_hdbscanClustering getOutlierScoreDict];
  v14 = objc_opt_new();
  v30 = getClusterLabels;
  v15 = [getClusterLabels indexesOfObjectsPassingTest:&__block_literal_global_24];
  v16 = [embeddingsCopy objectsAtIndexes:v15];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = __75__MOBundleClusteringManager_annotateAnomalyBundles_withEmbeddings_handler___block_invoke_2;
  v35[3] = &unk_100337628;
  v17 = objc_opt_new();
  v36 = v17;
  [v16 enumerateObjectsUsingBlock:v35];
  allObjects = [v17 allObjects];
  v19 = [NSPredicate predicateWithFormat:@"bundleIdentifier in %@", allObjects];

  v20 = [bundlesCopy filteredArrayUsingPredicate:v19];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __75__MOBundleClusteringManager_annotateAnomalyBundles_withEmbeddings_handler___block_invoke_3;
  v31[3] = &unk_10033AC20;
  v32 = getOutlierScoreDict;
  selfCopy = self;
  v21 = v14;
  v34 = v21;
  v22 = getOutlierScoreDict;
  [v20 enumerateObjectsUsingBlock:v31];
  if (handlerCopy)
  {
    v23 = [v21 count];
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v25)
      {
        v26 = [v21 count];
        *buf = 134217984;
        v38 = v26;
        v27 = "Anomaly bundle annotation completed. Annotated anomaly bundle count=%lu";
        v28 = v24;
        v29 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v27, buf, v29);
      }
    }

    else if (v25)
    {
      *buf = 0;
      v27 = "No bundle was annotated with anomaly metadata.";
      v28 = v24;
      v29 = 2;
      goto LABEL_7;
    }

    handlerCopy[2](handlerCopy, v21, 0);
  }
}

void __75__MOBundleClusteringManager_annotateAnomalyBundles_withEmbeddings_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleIdentifier];
    [v4 addObject:v5];
  }
}

void __75__MOBundleClusteringManager_annotateAnomalyBundles_withEmbeddings_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  v6 = [v5 UUIDString];
  v7 = [v4 objectForKeyedSubscript:v6];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 rankingDictionary];
  v11 = [v10 objectForKeyedSubscript:@"bundleGoodnessScore"];
  [v11 floatValue];
  v13 = v12;
  v14 = v12;

  v15 = *(a1 + 40);
  v17 = v9 > *(v15 + 16) && v13 > *(v15 + 12);
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v24 = [v3 bundleIdentifier];
    v25 = 138413058;
    v26 = v24;
    v27 = 1024;
    v28 = v17;
    v29 = 2048;
    v30 = v14;
    v31 = 2048;
    v32 = v9;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Anomaly bundle %@ significance: isSignificant %d, bundleGoodnessScore %.3f, outlierScore %.3f", &v25, 0x26u);
  }

  v19 = [MOOutlierMetadata alloc];
  v20 = [v3 bundleIdentifier];
  v21 = +[NSDate date];
  v22 = [(MOOutlierMetadata *)v19 initWithIdentifier:v20 updateDate:v21 isSignificant:v17 outlierScore:v9 outlierScoreThreshold:*(*(a1 + 40) + 16) bundleGoodnessScore:v14 bundleGoodnessScoreThreshold:*(*(a1 + 40) + 12)];

  [v3 setOutlierMetadata:v22];
  v23 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __75__MOBundleClusteringManager_annotateAnomalyBundles_withEmbeddings_handler___block_invoke_3_cold_1(v3);
  }

  [*(a1 + 48) addObject:v3];
}

- (id)generateClusterBundleFrom:(id)from withEmbeddings:(id)embeddings andCreationDate:(id)date excludeResourceTypes:(id)types
{
  fromCopy = from;
  embeddingsCopy = embeddings;
  dateCopy = date;
  typesCopy = types;
  v9 = [MOEventBundle alloc];
  v10 = +[NSUUID UUID];
  v11 = [(MOEventBundle *)v9 initWithBundleIdentifier:v10 creationDate:dateCopy];

  v518 = v11;
  bundleIdentifier = [(MOEventBundle *)v11 bundleIdentifier];
  [(MOEventBundle *)v518 setSuggestionID:bundleIdentifier];

  creationDate = [(MOEventBundle *)v518 creationDate];
  v14 = [creationDate dateByAddingTimeInterval:2419200.0];
  [(MOEventBundle *)v518 setExpirationDate:v14];

  [(MOEventBundle *)v518 setInterfaceType:15];
  [(MOEventBundle *)v518 setBundleSuperType:9];
  [(MOEventBundle *)v518 setBundleSubType:910];
  v549 = [fromCopy count];
  v703[0] = _NSConcreteStackBlock;
  v703[1] = 3221225472;
  v703[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke;
  v703[3] = &unk_100337628;
  v520 = objc_opt_new();
  v704 = v520;
  [embeddingsCopy enumerateObjectsUsingBlock:v703];
  v752[0] = @"topLevelActivityType";
  v752[1] = @"secondLevelActivityType";
  v752[2] = @"activityTypeFromPhotoTraits";
  v15 = [NSArray arrayWithObjects:v752 count:3];
  v751[0] = @"isWeekend";
  v751[1] = @"timeTag";
  v751[2] = @"dayOfWeek";
  v519 = [NSArray arrayWithObjects:v751 count:3];
  v750[0] = @"placeName";
  v750[1] = @"combinedPlaceType";
  v750[2] = @"enclosingAreaName";
  v750[3] = @"placeTypeFromPhotoTraits";
  v517 = [NSArray arrayWithObjects:v750 count:4];
  v749[0] = @"withFamily";
  v749[1] = @"withCoworker";
  v749[2] = @"withFriend";
  v749[3] = @"withChild";
  v749[4] = @"withMyPet";
  v521 = [NSArray arrayWithObjects:v749 count:5];
  v516 = [v521 arrayByAddingObject:?];
  v748[0] = @"holiday";
  v748[1] = @"celebration";
  v748[2] = @"socialEventFromPhotoTraits";
  v748[3] = @"otherSubjectFromPhotoTraits";
  v515 = [NSArray arrayWithObjects:v748 count:4];
  v746[0] = @"activityContext";
  v746[1] = @"timeContext";
  v747[0] = v15;
  v747[1] = v519;
  v746[2] = @"locationContext";
  v746[3] = @"peopleContext";
  v747[2] = v517;
  v747[3] = v516;
  v746[4] = @"photoTraitContext";
  v747[4] = v515;
  v559 = [NSDictionary dictionaryWithObjects:v747 forKeys:v746 count:5];
  v508 = v15;
  v16 = [v508 arrayByAddingObjectsFromArray:v519];

  v17 = [v16 arrayByAddingObjectsFromArray:v517];

  v18 = [v17 arrayByAddingObjectsFromArray:v516];

  v19 = [v18 arrayByAddingObjectsFromArray:v515];

  v514 = objc_opt_new();
  v575 = objc_opt_new();
  v562 = objc_opt_new();
  v553 = objc_opt_new();
  v548 = objc_opt_new();
  v702 = 0u;
  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  obj = v19;
  v541 = [obj countByEnumeratingWithState:&v699 objects:v745 count:16];
  if (!v541)
  {
    v20 = 0;
    goto LABEL_164;
  }

  v20 = 0;
  v537 = *v700;
  v21 = v549;
  do
  {
    v22 = 0;
    do
    {
      if (*v700 != v537)
      {
        v23 = v22;
        objc_enumerationMutation(obj);
        v22 = v23;
      }

      v543 = v22;
      v582 = *(*(&v699 + 1) + 8 * v22);
      v24 = [v582 isEqualToString:@"persons"];
      v585 = objc_opt_new();

      if (!v24)
      {
        v685[0] = _NSConcreteStackBlock;
        v685[1] = 3221225472;
        v685[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_333;
        v685[3] = &unk_10033AC48;
        v685[4] = self;
        v685[5] = v582;
        v66 = v585;
        v686 = v66;
        [v520 enumerateObjectsUsingBlock:v685];
        v67 = [v66 keysSortedByValueUsingComparator:&__block_literal_global_337];
        [v67 firstObject];
        v579 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v68 = [v66 objectForKeyedSubscript:*&v579];
        *&v571 = COERCE_DOUBLE([v68 count]);

        v69 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v115 = [v66 description];
          *v732 = 138413315;
          *&v732[4] = v582;
          *&v732[12] = 2113;
          *&v732[14] = v115;
          *&v732[22] = 2113;
          v733 = v67;
          v734 = 2113;
          v735 = v579;
          v736 = 2048;
          v737 = *&v571;
          _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Current featureKey:%@, subBundleIDsGroupedByFeatureValues:%{private}@, sortedFeatureValuesByFrequency:%{private}@, mostFrequentFeatureValue:%{private}@, count:%lu", v732, 0x34u);
        }

        if ([v582 isEqualToString:@"topLevelActivityType"])
        {
          v70 = objc_opt_new();
          v684 = 0u;
          v683 = 0u;
          v682 = 0u;
          v681 = 0u;
          v71 = v67;
          v72 = [v71 countByEnumeratingWithState:&v681 objects:v731 count:16];
          if (v72)
          {
            v73 = *v682;
            do
            {
              for (i = 0; i != v72; i = i + 1)
              {
                if (*v682 != v73)
                {
                  objc_enumerationMutation(v71);
                }

                v75 = *(*(&v681 + 1) + 8 * i);
                v76 = [v66 objectForKeyedSubscript:v75];
                v77 = [v76 count] < self->_clusterPhenotypeMinimumCountThreshold;

                if (!v77)
                {
                  v78 = [v66 objectForKeyedSubscript:v75];
                  v79 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v78 count]);
                  [v70 setObject:v79 forKeyedSubscript:v75];
                }
              }

              v72 = [v71 countByEnumeratingWithState:&v681 objects:v731 count:16];
            }

            while (v72);
          }

          v80 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            *v732 = 138477827;
            *&v732[4] = v70;
            _os_log_debug_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, "TopLevelActivityType phenotypeCandidatesWithValueCounts before filtering:%{private}@", v732, 0xCu);
          }

          if ([v70 count] >= 2)
          {
            v81 = [v70 objectForKeyedSubscript:@"outing"];
            if (v81)
            {
              v82 = [v70 objectForKeyedSubscript:@"outing"];
              [v82 doubleValue];
              v84 = v83 / v21 < self->_clusterPhenotypeArbirationThreshold;

              if (v84)
              {
                v85 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                {
                  v148 = [v70 objectForKeyedSubscript:@"outing"];
                  [v148 doubleValue];
                  clusterPhenotypeArbirationThreshold = self->_clusterPhenotypeArbirationThreshold;
                  *v732 = 134218240;
                  *&v732[4] = v150 / v21;
                  *&v732[12] = 2048;
                  *&v732[14] = clusterPhenotypeArbirationThreshold;
                  _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "Pruning outing from top level activity phenotype candidate since its proportion (%.3f) is lower than threshold %.3f", v732, 0x16u);
                }

                v86 = @"outing";
                goto LABEL_104;
              }
            }

            v104 = [v70 objectForKeyedSubscript:@"time_at_home"];
            if (v104)
            {
              v105 = [v70 objectForKeyedSubscript:@"time_at_home"];
              [v105 doubleValue];
              v107 = v106 / v21 < self->_clusterPhenotypeArbirationThreshold;

              if (v107)
              {
                v85 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                {
                  v151 = [v70 objectForKeyedSubscript:@"time_at_home"];
                  [v151 doubleValue];
                  v152 = self->_clusterPhenotypeArbirationThreshold;
                  *v732 = 134218240;
                  *&v732[4] = v153 / v21;
                  *&v732[12] = 2048;
                  *&v732[14] = v152;
                  _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "Pruning timeAthome from top level activity phenotype candidate since its proportion (%.3f) is less than threshold %.3f", v732, 0x16u);
                }

                v86 = @"time_at_home";
LABEL_104:

                [v70 removeObjectForKey:v86];
              }
            }
          }

          if ([v70 count])
          {
            v108 = [v70 keysSortedByValueUsingComparator:&__block_literal_global_342];
            [v108 firstObject];
            v103 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

            v109 = [v70 objectForKeyedSubscript:*&v103];
            intValue = [v109 intValue];

            v111 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
            {
              *v732 = 138477827;
              *&v732[4] = v103;
              v112 = v111;
              v113 = "TopLevelActivityType selected phenotype:%{private}@";
              goto LABEL_160;
            }

            goto LABEL_118;
          }

LABEL_119:
          v103 = v579;
          goto LABEL_120;
        }

        if (![v582 isEqualToString:@"secondLevelActivityType"])
        {
          v103 = v579;
          goto LABEL_121;
        }

        v70 = objc_opt_new();
        v680 = 0u;
        v679 = 0u;
        v678 = 0u;
        v677 = 0u;
        v87 = v67;
        v88 = [v87 countByEnumeratingWithState:&v677 objects:v730 count:16];
        if (v88)
        {
          v89 = *v678;
          do
          {
            for (j = 0; j != v88; j = j + 1)
            {
              if (*v678 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = *(*(&v677 + 1) + 8 * j);
              v92 = [v66 objectForKeyedSubscript:v91];
              v93 = [v92 count] < self->_clusterPhenotypeMinimumCountThreshold;

              if (!v93)
              {
                v94 = [v66 objectForKeyedSubscript:v91];
                v95 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v94 count]);
                [v70 setObject:v95 forKeyedSubscript:v91];
              }
            }

            v88 = [v87 countByEnumeratingWithState:&v677 objects:v730 count:16];
          }

          while (v88);
        }

        v96 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          *v732 = 138412290;
          *&v732[4] = v70;
          _os_log_debug_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "SecondLevelActivityType phenotypeCandidatesWithValueCounts before filtering:%@", v732, 0xCu);
        }

        if ([v70 count] < 2)
        {
          goto LABEL_116;
        }

        v97 = [v562 objectForKeyedSubscript:@"topLevelActivityType"];
        if (([v97 isEqualToString:@"outing"] & 1) != 0 || (objc_msgSend(v70, "objectForKeyedSubscript:", @"visit"), (v98 = objc_claimAutoreleasedReturnValue()) == 0))
        {
        }

        else
        {
          v99 = [v70 objectForKeyedSubscript:@"visit"];
          [v99 doubleValue];
          v101 = v100 / v21 < self->_clusterPhenotypeArbirationThreshold;

          if (v101)
          {
            v102 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
            {
              v154 = [v70 objectForKeyedSubscript:@"visit"];
              [v154 doubleValue];
              v155 = self->_clusterPhenotypeArbirationThreshold;
              *v732 = 134218240;
              *&v732[4] = v156 / v21;
              *&v732[12] = 2048;
              *&v732[14] = v155;
              _os_log_debug_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEBUG, "Pruning visit from second level activity phenotype candidate since its proportion (%.3f) is lower than threshold %.3f", v732, 0x16u);
            }

            [v70 removeObjectForKey:@"visit"];
LABEL_116:
            if (![v70 count])
            {
              goto LABEL_119;
            }

            v108 = [v70 keysSortedByValueUsingComparator:&__block_literal_global_354];
            [v108 firstObject];
            v103 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

            v121 = [v70 objectForKeyedSubscript:*&v103];
            intValue = [v121 intValue];

            v111 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
            {
              *v732 = 138477827;
              *&v732[4] = v103;
              v112 = v111;
              v113 = "SecondLevelActivityType selected phenotype:%{private}@";
LABEL_160:
              _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, v113, v732, 0xCu);
            }

LABEL_118:

            v571 = intValue;
LABEL_120:

LABEL_121:
            v122 = +[NSNull null];
            if ([*&v103 isEqual:v122] & 1) != 0 || (objc_msgSend(*&v103, "isEqualToString:", @"unavailable"))
            {
LABEL_123:
            }

            else
            {
              v142 = v571 < self->_clusterPhenotypeMinimumCountThreshold;

              if (!v142)
              {
                if ([v521 containsObject:v582])
                {
                  if (![*&v103 BOOLValue])
                  {
                    goto LABEL_124;
                  }

                  [v562 setObject:*&v103 forKeyedSubscript:v582];
                  v143 = [v66 objectForKeyedSubscript:*&v103];
                  [v553 setObject:v143 forKeyedSubscript:v582];

                  v122 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                  if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_123;
                  }
                }

                else if ([v582 isEqualToString:@"combinedPlaceType"])
                {
                  if ([*&v103 isEqualToString:@"RTMapItemPOICategoryUndefined"])
                  {
                    goto LABEL_124;
                  }

                  [v562 setObject:*&v103 forKeyedSubscript:v582];
                  v144 = [v66 objectForKeyedSubscript:*&v103];
                  [v553 setObject:v144 forKeyedSubscript:v582];

                  v122 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                  if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_123;
                  }
                }

                else
                {
                  [v562 setObject:*&v103 forKeyedSubscript:v582];
                  v145 = [v66 objectForKeyedSubscript:*&v103];
                  [v553 setObject:v145 forKeyedSubscript:v582];

                  v122 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                  if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_123;
                  }
                }

                v146 = [v562 objectForKeyedSubscript:v582];
                v147 = [v553 objectForKeyedSubscript:v582];
                *v732 = 138412803;
                *&v732[4] = v582;
                *&v732[12] = 2113;
                *&v732[14] = v146;
                *&v732[22] = 2112;
                v733 = v147;
                _os_log_debug_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEBUG, " %@ Phenotype was found: %{private}@. subbundles:%@", v732, 0x20u);

                goto LABEL_123;
              }
            }

LABEL_124:

            goto LABEL_125;
          }
        }

        v114 = [v562 objectForKeyedSubscript:@"topLevelActivityType"];
        if ([v114 isEqualToString:@"time_at_home"] || (objc_msgSend(v70, "objectForKeyedSubscript:", @"Photos at Home"), (v116 = objc_claimAutoreleasedReturnValue()) == 0))
        {
        }

        else
        {
          v117 = [v70 objectForKeyedSubscript:@"Photos at Home"];
          [v117 doubleValue];
          v119 = v118 / v21 < self->_clusterPhenotypeArbirationThreshold;

          if (v119)
          {
            v120 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
            {
              v157 = [v70 objectForKeyedSubscript:@"Photos at Home"];
              [v157 doubleValue];
              v158 = self->_clusterPhenotypeArbirationThreshold;
              *v732 = 134218240;
              *&v732[4] = v159 / v21;
              *&v732[12] = 2048;
              *&v732[14] = v158;
              _os_log_debug_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEBUG, "Pruning P@H from second level activity phenotype candidate since its proportion (%.3f) is lower than threshold %.3f", v732, 0x16u);
            }

            [v70 removeObjectForKey:@"Photos at Home"];
          }
        }

        goto LABEL_116;
      }

      v25 = objc_opt_new();
      v698 = 0u;
      v697 = 0u;
      v696 = 0u;
      v695 = 0u;
      v556 = v520;
      v568 = [v556 countByEnumeratingWithState:&v695 objects:v744 count:16];
      if (!v568)
      {
        goto LABEL_34;
      }

      v563 = *v696;
      do
      {
        v26 = 0;
        do
        {
          if (*v696 != v563)
          {
            v27 = v26;
            objc_enumerationMutation(v556);
            v26 = v27;
          }

          v570 = v26;
          v28 = *(*(&v695 + 1) + 8 * v26);
          v577 = [v28 objectForKeyedSubscript:@"persons"];
          v29 = [v28 objectForKeyedSubscript:@"bundleID"];
          v30 = +[NSNull null];
          if ([v577 isEqual:v30])
          {

LABEL_28:
            v46 = [v585 objectForKeyedSubscript:@"unavailable"];
            v47 = [v46 count] == 0;

            if (v47)
            {
              v741 = v29;
              v32 = [NSArray arrayWithObjects:&v741 count:1];
            }

            else
            {
              v48 = [v585 objectForKeyedSubscript:@"unavailable"];
              v32 = [v48 mutableCopy];

              [v32 addObject:v29];
            }

            [v585 setObject:v32 forKeyedSubscript:@"unavailable"];
            goto LABEL_32;
          }

          v31 = [v577 count] == 0;

          if (v31)
          {
            goto LABEL_28;
          }

          v694 = 0u;
          v693 = 0u;
          v692 = 0u;
          v691 = 0u;
          v32 = v577;
          v33 = [v32 countByEnumeratingWithState:&v691 objects:v743 count:16];
          if (v33)
          {
            v34 = *v692;
            do
            {
              for (k = 0; k != v33; k = k + 1)
              {
                if (*v692 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                v36 = *(*(&v691 + 1) + 8 * k);
                name = [v36 name];
                v38 = [name length] == 0;

                if (!v38)
                {
                  name2 = [v36 name];
                  v40 = [v585 objectForKeyedSubscript:name2];
                  v41 = [v40 count] == 0;

                  if (v41)
                  {
                    v742 = v29;
                    v44 = [NSArray arrayWithObjects:&v742 count:1];
                  }

                  else
                  {
                    name3 = [v36 name];
                    v43 = [v585 objectForKeyedSubscript:name3];
                    v44 = [v43 mutableCopy];

                    [v44 addObject:v29];
                  }

                  name4 = [v36 name];
                  [v585 setObject:v44 forKeyedSubscript:name4];

                  [v25 addObject:v36];
                }
              }

              v33 = [v32 countByEnumeratingWithState:&v691 objects:v743 count:16];
            }

            while (v33);
          }

LABEL_32:

          v26 = v570 + 1;
        }

        while ((v570 + 1) != v568);
        v568 = [v556 countByEnumeratingWithState:&v695 objects:v744 count:16];
      }

      while (v568);
LABEL_34:

      v49 = objc_opt_new();
      v690 = 0u;
      v689 = 0u;
      v688 = 0u;
      v687 = 0u;
      v50 = v585;
      v578 = [v50 countByEnumeratingWithState:&v687 objects:v740 count:16];
      if (v578)
      {
        v51 = *v688;
        do
        {
          for (m = 0; m != v578; m = m + 1)
          {
            if (*v688 != v51)
            {
              objc_enumerationMutation(v50);
            }

            v53 = *(*(&v687 + 1) + 8 * m);
            if (([v53 isEqualToString:@"unavailable"] & 1) == 0)
            {
              v54 = [v50 objectForKeyedSubscript:v53];
              v55 = [v54 count];

              v56 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                mask = [v53 mask];
                *v732 = 138478339;
                *&v732[4] = mask;
                *&v732[12] = 2048;
                *&v732[14] = v55;
                *&v732[22] = 2048;
                v733 = v549;
                _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Current contactName:%{private}@, count:%lu, totalSubBundleCount:%lu", v732, 0x20u);
              }

              if (v55 >= self->_clusterPhenotypeMinimumCountThreshold)
              {
                v57 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  [MOBundleClusteringManager generateClusterBundleFrom:v53 withEmbeddings:? andCreationDate:? excludeResourceTypes:?];
                }

                if ([v49 length])
                {
                  v58 = [NSString stringWithFormat:@"%@%@", v49, v53];

                  v49 = v58;
                }

                else
                {
                  v58 = v53;
                }

                v59 = [v582 stringByAppendingFormat:@"_%@", v53];
                v60 = [v50 objectForKeyedSubscript:v53];
                [v553 setObject:v60 forKeyedSubscript:v59];

                v61 = [NSPredicate predicateWithFormat:@"name==%@", v53];
                v62 = [v25 filteredSetUsingPredicate:v61];
                if ([v62 count])
                {
                  allObjects = [v62 allObjects];
                  [v548 addObjectsFromArray:allObjects];

                  v64 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                  {
                    *v732 = 138412546;
                    *&v732[4] = v62;
                    *&v732[12] = 2112;
                    *&v732[14] = v548;
                    _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Added current persons %@ to allPersonPhenotype%@", v732, 0x16u);
                  }
                }

                else
                {
                  v64 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                  {
                    [MOBundleClusteringManager generateClusterBundleFrom:v53 withEmbeddings:? andCreationDate:? excludeResourceTypes:?];
                  }
                }

                v49 = v58;
              }
            }
          }

          v578 = [v50 countByEnumeratingWithState:&v687 objects:v740 count:16];
        }

        while (v578);
      }

      if ([v49 length])
      {
        [v562 setObject:v49 forKeyedSubscript:v582];
      }

      [v514 setObject:v50 forKeyedSubscript:v582];

LABEL_125:
      if ([v521 containsObject:v582])
      {
        v676 = 0u;
        v675 = 0u;
        v674 = 0u;
        v673 = 0u;
        v123 = v585;
        v124 = [v123 countByEnumeratingWithState:&v673 objects:v729 count:16];
        if (v124)
        {
          v125 = *v674;
          do
          {
            for (n = 0; n != v124; n = n + 1)
            {
              if (*v674 != v125)
              {
                objc_enumerationMutation(v123);
              }

              v127 = *(*(&v673 + 1) + 8 * n);
              stringValue = [&off_100369FD0 stringValue];
              v129 = [v127 isEqualToString:stringValue];

              if (v129)
              {
                v130 = [v575 objectForKeyedSubscript:v582];
                v131 = [v130 count] == 0;

                if (v131)
                {
                  v132 = [v123 objectForKeyedSubscript:v127];
                  [v575 setObject:v132 forKeyedSubscript:v582];
                }

                else
                {
                  v132 = [v575 objectForKeyedSubscript:v582];
                  v133 = [v123 objectForKeyedSubscript:v127];
                  v134 = [v132 arrayByAddingObjectsFromArray:v133];
                  [v575 setObject:v134 forKeyedSubscript:v582];
                }
              }

              else
              {
                v132 = [@"not" stringByAppendingString:v582];
                v135 = [v575 objectForKeyedSubscript:v132];
                v136 = [v135 count] == 0;

                if (v136)
                {
                  v137 = [v123 objectForKeyedSubscript:v127];
                  [v575 setObject:v137 forKeyedSubscript:v132];
                }

                else
                {
                  v137 = [v575 objectForKeyedSubscript:v132];
                  v138 = [v123 objectForKeyedSubscript:v127];
                  v139 = [v137 arrayByAddingObjectsFromArray:v138];
                  [v575 setObject:v139 forKeyedSubscript:v132];
                }
              }
            }

            v124 = [v123 countByEnumeratingWithState:&v673 objects:v729 count:16];
          }

          while (v124);
        }

        v140 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
        {
          *v732 = 138478083;
          *&v732[4] = v582;
          *&v732[12] = 2113;
          *&v732[14] = v575;
          v141 = v140;
          goto LABEL_156;
        }
      }

      else
      {
        [v514 setObject:v585 forKeyedSubscript:v582];
        v140 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
        {
          *v732 = 138478083;
          *&v732[4] = v582;
          *&v732[12] = 2113;
          *&v732[14] = v585;
          v141 = v140;
LABEL_156:
          _os_log_debug_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEBUG, "subBundleIDsGroupedByFeatureValues for %{private}@: %{private}@", v732, 0x16u);
        }
      }

      v22 = v543 + 1;
      v20 = v585;
    }

    while ((v543 + 1) != v541);
    v160 = [obj countByEnumeratingWithState:&v699 objects:v745 count:16];
    v541 = v160;
    v20 = v585;
  }

  while (v160);
LABEL_164:
  v586 = v20;

  v161 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:];
  }

  v576 = objc_opt_new();
  v561 = [v553 copy];
  allKeys = [v553 allKeys];
  v671[0] = _NSConcreteStackBlock;
  v671[1] = 3221225472;
  v671[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_363;
  v671[3] = &unk_10033AD10;
  v542 = v553;
  v672 = v542;
  v162 = [allKeys sortedArrayUsingComparator:v671];
  v163 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:];
  }

  v519 = [NSPredicate predicateWithFormat:@"SELF IN %@", v519];
  v5192 = [NSPredicate predicateWithFormat:@"NOT(SELF IN %@)", v519];
  v503 = [v162 filteredArrayUsingPredicate:v519];
  v502 = [v162 filteredArrayUsingPredicate:v5192];
  v164 = [v502 arrayByAddingObjectsFromArray:v503];

  v165 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:];
  }

  v569 = objc_opt_new();
  v670 = 0u;
  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v545 = v164;
  v166 = [v545 countByEnumeratingWithState:&v667 objects:v728 count:16];
  if (v166)
  {
    v583 = *v668;
    do
    {
      v167 = 0;
      do
      {
        if (*v668 != v583)
        {
          objc_enumerationMutation(v545);
        }

        v168 = *(*(&v667 + 1) + 8 * v167);
        v169 = [(MOBundleClusteringManager *)self _phenotypeDimensionFor:v168 withphenotypeDimensionDict:v559];
        v170 = [v561 objectForKeyedSubscript:v168];
        v171 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
        {
          v192 = [v562 objectForKeyedSubscript:v168];
          v193 = COERCE_DOUBLE([v170 count]);
          *v732 = 138478595;
          *&v732[4] = v169;
          *&v732[12] = 2113;
          *&v732[14] = v168;
          *&v732[22] = 2113;
          v733 = v192;
          v734 = 2048;
          v735 = v193;
          _os_log_debug_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEBUG, "Current phenotype: dimension=%{private}@, Key=%{private}@, value=%{private}@, subBundleCount=%lu", v732, 0x2Au);
        }

        if ([v569 count])
        {
          v172 = [v576 mutableCopy];
          v173 = [NSSet setWithArray:v170];
          [v172 intersectSet:v173];

          v174 = [v172 count];
          v175 = [v576 count];
          v176 = [v569 count] > self->_phenotypeSpecificityThreshold;
          v177 = [v172 count];
          clusterPhenotypeMinimumCountThreshold = self->_clusterPhenotypeMinimumCountThreshold;
          if (v176)
          {
            if (v177 >= clusterPhenotypeMinimumCountThreshold)
            {
              v179 = [v576 count];
              if ((v179 - [v172 count]) < 2)
              {
                v191 = v172;

                if (v169)
                {
                  [v569 addObject:v169];
                }

                lastObject = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_211;
                }

                goto LABEL_207;
              }
            }

            v180 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
            {
              v198 = [v576 count];
              v199 = [v172 count];
              *v732 = 134218499;
              *&v732[4] = v198;
              *&v732[12] = 2113;
              *&v732[14] = v168;
              *&v732[22] = 2048;
              v733 = v199;
              _os_log_debug_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEBUG, "Minimum phenotype dimension requirement was already satisfied with %lu subbundles. Adding the current phenotype value %{private}@ drops subbundle count to %lu. Dropping the current phenotype", v732, 0x20u);
            }

            [v542 removeObjectForKey:v168];
            [v562 removeObjectForKey:v168];
            if ([v168 containsString:@"persons"])
            {
              v181 = [v168 componentsSeparatedByString:@"_"];
              lastObject = [v181 lastObject];

              v183 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
              {
                *v732 = 138477827;
                *&v732[4] = lastObject;
                _os_log_debug_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEBUG, "Dropping person dimension for %{private}@", v732, 0xCu);
              }

              goto LABEL_186;
            }
          }

          else
          {
            v188 = v174 / v175;
            if (v177 >= clusterPhenotypeMinimumCountThreshold && self->_clusterPhenotypeMinimumRatioThreshold <= v188)
            {
              v191 = v172;

              if (v169)
              {
                [v569 addObject:v169];
              }

              lastObject = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEBUG))
              {
LABEL_211:
                v200 = [v569 count];
                *v732 = 134218243;
                *&v732[4] = v200;
                *&v732[12] = 2113;
                *&v732[14] = v191;
                _os_log_debug_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_DEBUG, "Phenotype selected. count=%lu phenotypeSubBundleIDs= %{private}@", v732, 0x16u);
              }

LABEL_207:
              v576 = v191;
              goto LABEL_208;
            }

            v189 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
            {
              v195 = [v562 objectForKeyedSubscript:v168];
              v196 = self->_clusterPhenotypeMinimumCountThreshold;
              clusterPhenotypeMinimumRatioThreshold = self->_clusterPhenotypeMinimumRatioThreshold;
              *v732 = 138478851;
              *&v732[4] = v168;
              *&v732[12] = 2113;
              *&v732[14] = v195;
              *&v732[22] = 2048;
              v733 = v196;
              v734 = 2048;
              v735 = v188;
              v736 = 2048;
              v737 = clusterPhenotypeMinimumRatioThreshold;
              _os_log_debug_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEBUG, "The intersection between selected subbundles and subbundles with the current phenotype (key,value)=(%{private}@,%{private}@) is less than threshold %lu, or the ratio between intersection and current subbundles %.3f is less than thres %.3f Dropping the current phenotype", v732, 0x34u);
            }

            [v542 removeObjectForKey:v168];
            [v562 removeObjectForKey:v168];
            if ([v168 containsString:@"persons"])
            {
              v190 = [v168 componentsSeparatedByString:@"_"];
              lastObject = [v190 lastObject];

              v183 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
              {
                *v732 = 138477827;
                *&v732[4] = lastObject;
                _os_log_debug_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEBUG, "Dropping person dimension for %{private}@", v732, 0xCu);
              }

LABEL_186:

              v184 = [v562 objectForKeyedSubscript:@"persons"];
              v185 = [v184 stringByReplacingOccurrencesOfString:lastObject withString:&stru_1003416B0];
              [v562 setObject:v185 forKeyedSubscript:@"persons"];

              v182 = [NSPredicate predicateWithFormat:@"name != %@", lastObject];
              [v548 filterUsingPredicate:v182];

LABEL_208:
            }
          }
        }

        else
        {
          v187 = [NSMutableSet setWithArray:v170];

          if (v169)
          {
            [v569 addObject:v169];
          }

          v172 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
          if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
          {
            v194 = [v569 count];
            *v732 = 134218243;
            *&v732[4] = v194;
            *&v732[12] = 2113;
            *&v732[14] = v187;
            _os_log_debug_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEBUG, "Phenotype selected. count=%lu phenotypeSubBundleIDs= %{private}@", v732, 0x16u);
          }

          v576 = v187;
        }

        v167 = v167 + 1;
      }

      while (v166 != v167);
      v201 = [v545 countByEnumeratingWithState:&v667 objects:v728 count:16];
      v166 = v201;
    }

    while (v201);
  }

  v202 = [v562 objectForKeyedSubscript:@"persons"];

  if (v202)
  {
    v203 = [v562 objectForKeyedSubscript:@"persons"];
    if (![v203 length])
    {
      [v562 removeObjectForKey:@"persons"];
    }
  }

  v204 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:];
  }

  allObjects2 = [v576 allObjects];
  v205 = [NSPredicate predicateWithFormat:@"bundleIdentifier in %@", allObjects2];

  v507 = [fromCopy filteredArrayUsingPredicate:v205];
  v206 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager generateClusterBundleFrom:fromCopy withEmbeddings:v507 andCreationDate:? excludeResourceTypes:?];
  }

  if ([v507 count] < self->_clusterPhenotypeMinimumCountThreshold)
  {
    v207 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
    {
      *v732 = 0;
      _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_INFO, "Not enough subBundles after prunning. Skip cluster bundle generation.", v732, 2u);
    }

    v208 = 0;
    goto LABEL_364;
  }

  v209 = [v507 valueForKeyPath:@"@min.startDate"];
  [(MOEventBundle *)v518 setStartDate:v209];

  v210 = [v507 valueForKeyPath:@"@max.startDate"];
  [(MOEventBundle *)v518 setEndDate:v210];

  v524 = objc_opt_new();
  v523 = objc_opt_new();
  v532 = objc_opt_new();
  v536 = [v548 valueForKeyPath:@"localIdentifier"];
  v531 = objc_opt_new();
  v584 = objc_opt_new();
  v211 = [v562 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
  if (v211 || ([v562 objectForKeyedSubscript:@"socialEventFromPhotoTraits"], (v211 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v562, "objectForKeyedSubscript:", @"placeTypeFromPhotoTraits"), (v211 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_229;
  }

  v338 = [v562 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
  v339 = v338 == 0;

  if (!v339)
  {
LABEL_229:
    v212 = [v562 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

    if (v212)
    {
      v213 = [v562 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
      if ([(__CFString *)v213 length])
      {
        [v584 addObject:v213];
      }
    }

    else
    {
      v213 = &stru_1003416B0;
    }

    v214 = [v562 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];

    if (v214)
    {
      v215 = [v562 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];

      if ([v215 length])
      {
        [v584 addObject:v215];
      }
    }

    else
    {
      v215 = v213;
    }

    v216 = [v562 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

    if (v216)
    {
      v217 = [v562 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

      if ([v217 length])
      {
        [v584 addObject:v217];
      }
    }

    else
    {
      v217 = v215;
    }

    v218 = [v562 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];

    if (v218)
    {
      v219 = [v562 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];

      if ([v219 length])
      {
        [v584 addObject:v219];
      }
    }

    else
    {
      v219 = v217;
    }

    v220 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
    {
      [MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:];
    }
  }

  v511 = objc_opt_new();
  v544 = objc_opt_new();
  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v221 = v507;
  v222 = [v221 countByEnumeratingWithState:&v663 objects:v727 count:16];
  if (v222)
  {
    v223 = *v664;
    do
    {
      for (ii = 0; ii != v222; ii = ii + 1)
      {
        if (*v664 != v223)
        {
          objc_enumerationMutation(v221);
        }

        resources = [*(*(&v663 + 1) + 8 * ii) resources];
        v226 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [resources count]);
        [v544 addObject:v226];
      }

      v222 = [v221 countByEnumeratingWithState:&v663 objects:v727 count:16];
    }

    while (v222);
  }

  v227 = [v544 valueForKeyPath:@"@min.intValue"];
  intValue2 = [v227 intValue];

  v229 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v229, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:];
  }

  v662 = 0u;
  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v522 = v221;
  v526 = [v522 countByEnumeratingWithState:&v659 objects:v726 count:16];
  v500 = 1;
  if (v526)
  {
    v533 = 0;
    v525 = *v660;
    do
    {
      v230 = 0;
      do
      {
        if (*v660 != v525)
        {
          v231 = v230;
          objc_enumerationMutation(v522);
          v230 = v231;
        }

        v527 = v230;
        v564 = *(*(&v659 + 1) + 8 * v230);
        bundleIdentifier2 = [v564 bundleIdentifier];

        if (bundleIdentifier2)
        {
          bundleIdentifier3 = [v564 bundleIdentifier];
          uUIDString = [bundleIdentifier3 UUIDString];
          [v524 addObject:uUIDString];
        }

        suggestionID = [v564 suggestionID];

        if (suggestionID)
        {
          suggestionID2 = [v564 suggestionID];
          uUIDString2 = [suggestionID2 UUIDString];
          [v523 addObject:uUIDString2];
        }

        v572 = objc_opt_new();
        if ([v584 count])
        {
          photoTraits = [v564 photoTraits];
          v239 = [photoTraits count] == 0;

          if (!v239)
          {
            v240 = objc_opt_new();
            v658 = 0u;
            v657 = 0u;
            v656 = 0u;
            v655 = 0u;
            photoTraits2 = [v564 photoTraits];
            v242 = [photoTraits2 countByEnumeratingWithState:&v655 objects:v725 count:16];
            if (v242)
            {
              v243 = *v656;
              do
              {
                for (jj = 0; jj != v242; jj = jj + 1)
                {
                  if (*v656 != v243)
                  {
                    objc_enumerationMutation(photoTraits2);
                  }

                  v245 = *(*(&v655 + 1) + 8 * jj);
                  name5 = [v245 name];
                  lowercaseString = [name5 lowercaseString];
                  v248 = [v584 containsObject:lowercaseString];

                  if (v248)
                  {
                    [v240 addObject:v245];
                  }
                }

                v242 = [photoTraits2 countByEnumeratingWithState:&v655 objects:v725 count:16];
              }

              while (v242);
            }

            v249 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(v249, OS_LOG_TYPE_DEBUG))
            {
              v296 = [v240 count];
              *v732 = 138478083;
              *&v732[4] = v584;
              *&v732[12] = 2048;
              *&v732[14] = v296;
              _os_log_debug_impl(&_mh_execute_header, v249, OS_LOG_TYPE_DEBUG, "photo trait phenotypes= %{private}@, phenotypePhotoTraits count=%lu", v732, 0x16u);
            }

            if ([v240 count])
            {
              v654 = 0u;
              v653 = 0u;
              v652 = 0u;
              v651 = 0u;
              v250 = v240;
              v251 = [v250 countByEnumeratingWithState:&v651 objects:v724 count:16];
              if (v251)
              {
                v252 = *v652;
                do
                {
                  for (kk = 0; kk != v251; kk = kk + 1)
                  {
                    if (*v652 != v252)
                    {
                      objc_enumerationMutation(v250);
                    }

                    relevantAssetUUIDs = [*(*(&v651 + 1) + 8 * kk) relevantAssetUUIDs];
                    [v572 addObjectsFromArray:relevantAssetUUIDs];
                  }

                  v251 = [v250 countByEnumeratingWithState:&v651 objects:v724 count:16];
                }

                while (v251);
              }

              v255 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
              {
                *v732 = 138478083;
                *&v732[4] = v584;
                *&v732[12] = 2112;
                *&v732[14] = v572;
                _os_log_debug_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEBUG, "relevant asset uuids for photo trait phenotypes %{private}@=%@", v732, 0x16u);
              }

              [v511 addObjectsFromArray:v250];
            }
          }
        }

        resources2 = [v564 resources];
        v257 = [resources2 count] == 0;

        if (!v257)
        {
          v650 = 0u;
          v649 = 0u;
          v648 = 0u;
          v647 = 0u;
          resources3 = [v564 resources];
          v554 = [resources3 countByEnumeratingWithState:&v647 objects:v723 count:16];
          if (!v554)
          {
            goto LABEL_355;
          }

          v557 = 0;
          v550 = *v648;
LABEL_294:
          v565 = 0;
LABEL_295:
          if (*v648 != v550)
          {
            objc_enumerationMutation(resources3);
          }

          v258 = *(*(&v647 + 1) + 8 * v565);
          if (typesCopy)
          {
            v259 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(&v647 + 1) + 8 * v565) type]);
            v260 = [typesCopy containsObject:v259];

            if (v260)
            {
              v261 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
              {
                [MOBundleClusteringManager generateClusterBundleFrom:v722 withEmbeddings:v258 andCreationDate:? excludeResourceTypes:?];
              }

              goto LABEL_301;
            }
          }

          if (v557 <= (intValue2 + 1))
          {
            if ([v258 type] != 2)
            {
              v276 = [v562 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

              if (!v276)
              {
                [v532 addObject:v258];
                v277 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                ++v557;
                if (os_log_type_enabled(v277, OS_LOG_TYPE_INFO))
                {
                  type = [v258 type];
                  *v732 = 134218496;
                  *&v732[4] = type;
                  *&v732[12] = 2048;
                  *&v732[14] = v557;
                  *&v732[22] = 2048;
                  v733 = (intValue2 + 1);
                  _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_INFO, "Adding resource type %lu. addedResourceCount=%lu, maxResourceCountPerSubBundle=%lu", v732, 0x20u);
                }

                goto LABEL_349;
              }

              v261 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
              {
                *v732 = 0;
                _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_INFO, "Dropping non photo resource for photo subject based summary", v732, 2u);
              }

LABEL_301:

              goto LABEL_349;
            }

            *v732 = 0;
            *&v732[8] = v732;
            *&v732[16] = 0x2020000000;
            LOBYTE(v733) = 1;
            if (![v584 count])
            {
              goto LABEL_332;
            }

            assets = [v258 assets];
            v263 = [assets length] == 0;

            if (v263)
            {
              goto LABEL_332;
            }

            v646 = 0u;
            v645 = 0u;
            v644 = 0u;
            v643 = 0u;
            v264 = v572;
            v265 = [v264 countByEnumeratingWithState:&v643 objects:v721 count:16];
            if (!v265)
            {

LABEL_329:
              *(*&v732[8] + 24) = 0;
              v279 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
              if (os_log_type_enabled(v279, OS_LOG_TYPE_INFO))
              {
                assets2 = [v258 assets];
                *buf = 138412547;
                v716 = assets2;
                v717 = 2113;
                v718 = v584;
                _os_log_impl(&_mh_execute_header, v279, OS_LOG_TYPE_INFO, "Current photo asset (UUID:%@) does not contain phenotype traits (%{private}@). Drop this photo asset from summary", buf, 0x16u);
              }

LABEL_332:
              v275 = 0;
              goto LABEL_333;
            }

            v266 = 0;
            v267 = *v644;
            while (1)
            {
              for (mm = 0; mm != v265; mm = mm + 1)
              {
                if (*v644 != v267)
                {
                  objc_enumerationMutation(v264);
                }

                v269 = *(*(&v643 + 1) + 8 * mm);
                assets3 = [v258 assets];
                if ([v269 containsString:assets3])
                {
                }

                else
                {
                  assets4 = [v258 assets];
                  v272 = [assets4 containsString:v269];

                  if (!v272)
                  {
                    continue;
                  }
                }

                v273 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v273, OS_LOG_TYPE_INFO))
                {
                  assets5 = [v258 assets];
                  *buf = 138412547;
                  v716 = assets5;
                  v717 = 2113;
                  v718 = v584;
                  _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_INFO, "Current photo asset (UUID:%@) contains phenotype traits (%{private}@). Adding this photo asset to resources", buf, 0x16u);
                }

                v266 = 1;
              }

              v265 = [v264 countByEnumeratingWithState:&v643 objects:v721 count:16];
              if (!v265)
              {

                if ((v266 & 1) == 0)
                {
                  goto LABEL_329;
                }

                v275 = 1;
LABEL_333:
                if ([v536 count])
                {
                  assets6 = [v258 assets];
                  v282 = [assets6 length] == 0;

                  if (!v282)
                  {
                    v283 = dispatch_semaphore_create(0);
                    photoManager = [(MOBundleClusteringManager *)self photoManager];
                    assets7 = [v258 assets];
                    v634[0] = _NSConcreteStackBlock;
                    v634[1] = 3221225472;
                    v634[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_393;
                    v634[3] = &unk_10033AD38;
                    v641 = v732;
                    v635 = v536;
                    v286 = v584;
                    v642 = v275;
                    v636 = v286;
                    v637 = v258;
                    v638 = v562;
                    v639 = v531;
                    v287 = v283;
                    v640 = v287;
                    [photoManager fetchAssetUsingID:assets7 handler:v634];

                    v288 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptProvider/Clustering/MOBundleClusteringManager.m", 859, "[MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:]"];
                    v633 = 0;
                    v289 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v287, &v633, v288, 30.0);
                    v290 = v633;
                    if (!v289)
                    {
                      v291 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
                      if (os_log_type_enabled(v291, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v716 = v288;
                        _os_log_error_impl(&_mh_execute_header, v291, OS_LOG_TYPE_ERROR, "Semaphore wait failed with context: %@", buf, 0xCu);
                      }
                    }

                    if (v290)
                    {
                      v292 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                      if (os_log_type_enabled(v292, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v716 = v290;
                        _os_log_error_impl(&_mh_execute_header, v292, OS_LOG_TYPE_ERROR, "Photo manager Task timed out. Error:%@", buf, 0xCu);
                      }
                    }
                  }
                }

                if (*(*&v732[8] + 24) == 1)
                {
                  [v532 addObject:v258];
                  v293 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                  ++v557;
                  if (os_log_type_enabled(v293, OS_LOG_TYPE_INFO))
                  {
                    assets8 = [v258 assets];
                    *buf = 138412802;
                    v716 = assets8;
                    v717 = 2048;
                    v718 = v557;
                    v719 = 2048;
                    v720 = (intValue2 + 1);
                    _os_log_impl(&_mh_execute_header, v293, OS_LOG_TYPE_INFO, "Adding photo asset (UUID:%@) to resources. addedResourceCount=%lu, maxResourceCountPerSubBundle=%lu", buf, 0x20u);
                  }

                  ++v533;
                }

                _Block_object_dispose(v732, 8);
LABEL_349:
                if (++v565 == v554)
                {
                  v554 = [resources3 countByEnumeratingWithState:&v647 objects:v723 count:16];
                  if (!v554)
                  {
                    goto LABEL_355;
                  }

                  goto LABEL_294;
                }

                goto LABEL_295;
              }
            }
          }

          v295 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
          if (os_log_type_enabled(v295, OS_LOG_TYPE_INFO))
          {
            *v732 = 134218240;
            *&v732[4] = v557;
            *&v732[12] = 2048;
            *&v732[14] = (intValue2 + 1);
            _os_log_impl(&_mh_execute_header, v295, OS_LOG_TYPE_INFO, "Added resources from the current subbundle exceeded max limit (added resource count=%lu, max limit=%lu). Continue to the next subbundle", v732, 0x16u);
          }

LABEL_355:
        }

        v230 = v527 + 1;
      }

      while ((v527 + 1) != v526);
      v526 = [v522 countByEnumeratingWithState:&v659 objects:v726 count:16];
    }

    while (v526);
    v500 = v533 == 0;
  }

  if ([v584 count] != 0 && v500)
  {
    v297 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    if (os_log_type_enabled(v297, OS_LOG_TYPE_INFO))
    {
      *v732 = 0;
      _os_log_impl(&_mh_execute_header, v297, OS_LOG_TYPE_INFO, "No remaining photo resource for photo trait summary. Not enough subBundles after prunning. Skip cluster bundle generation.", v732, 2u);
    }

    v208 = 0;
    goto LABEL_363;
  }

  [(MOEventBundle *)v518 setSubBundleIDs:v524];
  [(MOEventBundle *)v518 setSubSuggestionIDs:v523];
  [(MOEventBundle *)v518 setResources:v532];
  v558 = objc_opt_new();
  v555 = objc_opt_new();
  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v551 = v522;
  v299 = [v551 countByEnumeratingWithState:&v629 objects:v714 count:16];
  if (v299)
  {
    v300 = *v630;
    do
    {
      for (nn = 0; nn != v299; nn = nn + 1)
      {
        if (*v630 != v300)
        {
          objc_enumerationMutation(v551);
        }

        v302 = *(*(&v629 + 1) + 8 * nn);
        events = [v302 events];
        [v558 addObjectsFromArray:events];

        persons = [v302 persons];
        v305 = [persons count] == 0;

        if (!v305)
        {
          persons2 = [v302 persons];
          [v555 addObjectsFromArray:persons2];
        }
      }

      v299 = [v551 countByEnumeratingWithState:&v629 objects:v714 count:16];
    }

    while (v299);
  }

  allObjects3 = [v558 allObjects];
  [(MOEventBundle *)v518 setEvents:allObjects3];

  allObjects4 = [v555 allObjects];
  [(MOEventBundle *)v518 setPersons:allObjects4];

  v528 = objc_opt_new();
  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v539 = v514;
  v534 = [v539 countByEnumeratingWithState:&v625 objects:v713 count:16];
  if (v534)
  {
    v529 = *v626;
    do
    {
      v309 = 0;
      do
      {
        if (*v626 != v529)
        {
          v310 = v309;
          objc_enumerationMutation(v539);
          v309 = v310;
        }

        v311 = v309;
        v546 = *(*(&v625 + 1) + 8 * v309);
        v312 = [v539 objectForKeyedSubscript:?];
        v580 = objc_opt_new();
        v624 = 0u;
        v623 = 0u;
        v622 = 0u;
        v621 = 0u;
        v313 = v312;
        v314 = [v313 countByEnumeratingWithState:&v621 objects:v712 count:16];
        if (v314)
        {
          v315 = *v622;
          do
          {
            for (i1 = 0; i1 != v314; i1 = i1 + 1)
            {
              if (*v622 != v315)
              {
                objc_enumerationMutation(v313);
              }

              v317 = *(*(&v621 + 1) + 8 * i1);
              v318 = [v313 objectForKeyedSubscript:v317];
              v319 = [v318 count] == 0;

              if (!v319)
              {
                v320 = [v313 objectForKeyedSubscript:v317];
                v321 = [NSMutableSet setWithArray:v320];

                v322 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v322, OS_LOG_TYPE_DEBUG))
                {
                  *v732 = 138478083;
                  *&v732[4] = v317;
                  *&v732[12] = 2112;
                  *&v732[14] = v321;
                  _os_log_debug_impl(&_mh_execute_header, v322, OS_LOG_TYPE_DEBUG, "Current featureValue %{private}@, SubBundleIDs %@", v732, 0x16u);
                }

                [v321 intersectSet:v576];
                v323 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v323, OS_LOG_TYPE_DEBUG))
                {
                  *v732 = 138412290;
                  *&v732[4] = v321;
                  _os_log_debug_impl(&_mh_execute_header, v323, OS_LOG_TYPE_DEBUG, "Intersection between feature value subbundles and phenotype subbundles %@", v732, 0xCu);
                }

                if ([v321 count])
                {
                  v324 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v321 count]);
                  [v580 setObject:v324 forKeyedSubscript:v317];
                }
              }
            }

            v314 = [v313 countByEnumeratingWithState:&v621 objects:v712 count:16];
          }

          while (v314);
        }

        if ([v580 count])
        {
          [v528 setObject:v580 forKeyedSubscript:v546];
        }

        v309 = v311 + 1;
      }

      while ((v311 + 1) != v534);
      v534 = [v539 countByEnumeratingWithState:&v625 objects:v713 count:16];
    }

    while (v534);
  }

  v573 = objc_opt_new();
  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v325 = v575;
  v326 = [v325 countByEnumeratingWithState:&v617 objects:v711 count:16];
  if (v326)
  {
    v327 = *v618;
    do
    {
      for (i2 = 0; i2 != v326; i2 = i2 + 1)
      {
        if (*v618 != v327)
        {
          objc_enumerationMutation(v325);
        }

        v329 = *(*(&v617 + 1) + 8 * i2);
        v330 = [v325 objectForKeyedSubscript:v329];
        v331 = [v330 count] == 0;

        if (!v331)
        {
          v332 = [v325 objectForKeyedSubscript:v329];
          v333 = [NSMutableSet setWithArray:v332];

          [v333 intersectSet:v576];
          if ([v333 count])
          {
            v334 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v333 count]);
            [v573 setObject:v334 forKeyedSubscript:v329];
          }
        }
      }

      v326 = [v325 countByEnumeratingWithState:&v617 objects:v711 count:16];
    }

    while (v326);
  }

  v335 = objc_opt_new();
  v614[0] = _NSConcreteStackBlock;
  v614[1] = 3221225472;
  v614[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_403;
  v614[3] = &unk_10033AD60;
  v615 = v576;
  v530 = v335;
  v616 = v530;
  [v520 enumerateObjectsUsingBlock:v614];
  v336 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
  if (v336)
  {
    v337 = [v530 count] > 1;
  }

  else
  {
    v340 = [v562 objectForKeyedSubscript:@"timeTag"];
    if (v340)
    {
      v337 = [v530 count] > 1;
    }

    else
    {
      v341 = [v562 objectForKeyedSubscript:@"isWeekend"];
      if (v341)
      {
        v337 = [v530 count] > 1;
      }

      else
      {
        v337 = 0;
      }
    }
  }

  v342 = [v562 objectForKeyedSubscript:@"topLevelActivityType"];
  if (v342)
  {

    goto LABEL_425;
  }

  v343 = [v562 objectForKeyedSubscript:@"secondLevelActivityType"];
  v344 = v343 == 0;

  if (!v344)
  {
LABEL_425:
    v345 = objc_opt_new();
    v346 = [v562 objectForKeyedSubscript:@"topLevelActivityType"];

    if (v346)
    {
      v347 = [v562 objectForKeyedSubscript:@"topLevelActivityType"];

      if ([v347 isEqualToString:@"outing"])
      {
        if (v337)
        {
          v348 = 901;
        }

        else
        {
          v348 = 905;
        }

        v349 = 2;
        goto LABEL_447;
      }

      if ([v347 isEqualToString:@"activity"])
      {
        if (v337)
        {
          v348 = 902;
        }

        else
        {
          v348 = 906;
        }

        v349 = 4;
        goto LABEL_447;
      }

      if ([v347 isEqualToString:@"contact"])
      {
        if (v337)
        {
          v348 = 903;
        }

        else
        {
          v348 = 907;
        }

        v349 = 5;
        goto LABEL_447;
      }

      if ([v347 isEqualToString:@"time_at_home"])
      {
        if (v337)
        {
          v348 = 904;
        }

        else
        {
          v348 = 909;
        }

        v349 = 1;
LABEL_447:
        [(MOEventBundle *)v518 setBundleSubType:v348];
      }

      else
      {
        v349 = 0;
      }

      v345 = v347;
    }

    else
    {
      v349 = 0;
    }

    v350 = [v562 objectForKeyedSubscript:@"secondLevelActivityType"];

    if (v350)
    {
      v351 = [v562 objectForKeyedSubscript:@"secondLevelActivityType"];

      v345 = v351;
    }

    v352 = [[MOAction alloc] initWithActionName:v345 actionType:v349];
    [(MOEventBundle *)v518 setAction:v352];
  }

  v581 = objc_opt_new();
  v353 = objc_opt_new();
  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v552 = v551;
  v354 = [v552 countByEnumeratingWithState:&v610 objects:v710 count:16];
  if (v354)
  {
    v566 = *v611;
    do
    {
      for (i3 = 0; i3 != v354; i3 = i3 + 1)
      {
        if (*v611 != v566)
        {
          objc_enumerationMutation(v552);
        }

        v356 = *(*(&v610 + 1) + 8 * i3);
        actions = [v356 actions];
        v358 = [actions count] == 0;

        if (!v358)
        {
          v609 = 0u;
          v608 = 0u;
          v607 = 0u;
          v606 = 0u;
          actions2 = [v356 actions];
          v360 = [actions2 countByEnumeratingWithState:&v606 objects:v709 count:16];
          if (v360)
          {
            v361 = *v607;
            do
            {
              for (i4 = 0; i4 != v360; i4 = i4 + 1)
              {
                if (*v607 != v361)
                {
                  objc_enumerationMutation(actions2);
                }

                v363 = *(*(&v606 + 1) + 8 * i4);
                actionName = [v363 actionName];
                v365 = [v353 containsObject:actionName];

                if ((v365 & 1) == 0)
                {
                  [v581 addObject:v363];
                  actionName2 = [v363 actionName];
                  [v353 addObject:actionName2];
                }
              }

              v360 = [actions2 countByEnumeratingWithState:&v606 objects:v709 count:16];
            }

            while (v360);
          }
        }
      }

      v354 = [v552 countByEnumeratingWithState:&v610 objects:v710 count:16];
    }

    while (v354);
  }

  if ([v581 count])
  {
    [(MOEventBundle *)v518 setActions:v581];
  }

  v367 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
  if (v367 || ([v562 objectForKeyedSubscript:@"timeTag"], (v367 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_475;
  }

  v398 = [v562 objectForKeyedSubscript:@"isWeekend"];
  v399 = v398 == 0;

  if (!v399)
  {
LABEL_475:
    v368 = [v562 objectForKeyedSubscript:@"timeTag"];
    v369 = [v368 intValue] == 0;

    if (v369)
    {
      v391 = [v562 objectForKeyedSubscript:@"dayOfWeek"];

      if (v391)
      {
        v392 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
        v393 = [v392 isEqualToString:@"sunday"];

        if (v393)
        {
          v372 = 102;
        }

        else
        {
          v405 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
          v406 = [v405 isEqualToString:@"monday"];

          if (v406)
          {
            v372 = 103;
          }

          else
          {
            v409 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
            v410 = [v409 isEqualToString:@"tuesday"];

            if (v410)
            {
              v372 = 104;
            }

            else
            {
              v492 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
              v493 = [v492 isEqualToString:@"wednesday"];

              if (v493)
              {
                v372 = 105;
              }

              else
              {
                v494 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
                v495 = [v494 isEqualToString:@"thursday"];

                if (v495)
                {
                  v372 = 106;
                }

                else
                {
                  v496 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
                  v497 = [v496 isEqualToString:@"friday"];

                  if (v497)
                  {
                    v372 = 107;
                  }

                  else
                  {
                    v498 = [v562 objectForKeyedSubscript:@"dayOfWeek"];
                    v499 = [v498 isEqualToString:@"saturday"];

                    if (v499)
                    {
                      v372 = 108;
                    }

                    else
                    {
                      v372 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v402 = [v562 objectForKeyedSubscript:@"isWeekend"];

        if (v402)
        {
          v403 = [v562 objectForKeyedSubscript:@"isWeekend"];
          bOOLValue = [v403 BOOLValue];

          if (bOOLValue)
          {
            v372 = 10001;
          }

          else
          {
            v372 = 10000;
          }
        }

        else
        {
          v372 = 0;
        }
      }
    }

    else
    {
      v370 = [v562 objectForKeyedSubscript:@"timeTag"];
      intValue3 = [v370 intValue];

      v372 = intValue3;
    }

    v373 = [MOTime timeStringFromTimeTag:v372];
    if (v373)
    {
      [v562 setObject:v373 forKeyedSubscript:@"timeString"];
      v374 = +[NSCalendar currentCalendar];
      v375 = [MOTime alloc];
      v376 = +[NSDate date];
      [v376 timeIntervalSinceReferenceDate];
      v378 = v377;
      timeZone = [v374 timeZone];
      name6 = [timeZone name];
      v381 = [(MOTime *)v375 initWithTimestamp:v373 timeString:name6 timeZone:v372 timeTag:v378];

      [(MOEventBundle *)v518 setTime:v381];
    }
  }

  v382 = [v562 objectForKeyedSubscript:@"placeName"];
  if (v382 || ([v562 objectForKeyedSubscript:@"combinedPlaceType"], (v382 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_483;
  }

  v400 = [v562 objectForKeyedSubscript:@"enclosingAreaName"];
  v401 = v400 == 0;

  if (!v401)
  {
LABEL_483:
    v383 = [MOPlace alloc];
    v384 = +[NSUUID UUID];
    v385 = [(MOPlace *)v383 initWithIdentifier:v384];

    v386 = [v562 objectForKeyedSubscript:@"placeName"];
    [(MOPlace *)v385 setPlaceName:v386];

    v387 = [v562 objectForKeyedSubscript:@"enclosingAreaName"];
    [(MOPlace *)v385 setEnclosingArea:v387];

    v388 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];

    if (v388)
    {
      v389 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
      v390 = [v389 isEqualToString:@"Home"];

      if (v390)
      {
        [(MOPlace *)v385 setPlaceUserType:1];
      }

      else
      {
        v394 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
        v395 = [v394 isEqualToString:@"Work"];

        if (v395)
        {
          [(MOPlace *)v385 setPlaceUserType:2];
        }

        else
        {
          v396 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
          v397 = [v396 isEqualToString:@"School"];

          if (v397)
          {
            [(MOPlace *)v385 setPlaceUserType:3];
          }

          else
          {
            v407 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
            v408 = [v407 isEqualToString:@"Gym"];

            if (v408)
            {
              [(MOPlace *)v385 setPlaceUserType:4];
            }

            else
            {
              [(MOPlace *)v385 setPlaceUserType:0];
              v411 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
              [(MOPlace *)v385 setPoiCategory:v411];
            }
          }
        }
      }
    }

    [(MOEventBundle *)v518 setPlace:v385];
  }

  v412 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
  if (v412)
  {
    allObjects5 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
    if ([allObjects5 isEqualToString:@"Home"])
    {
      goto LABEL_555;
    }

    v414 = [v562 objectForKeyedSubscript:@"combinedPlaceType"];
    v415 = [v414 isEqualToString:@"Work"];

    if (v415)
    {
      goto LABEL_557;
    }
  }

  v412 = objc_opt_new();
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v535 = v552;
  v547 = [v535 countByEnumeratingWithState:&v602 objects:v708 count:16];
  if (!v547)
  {
    goto LABEL_553;
  }

  v416 = 0;
  v417 = 0;
  v540 = *v603;
  while (2)
  {
    v418 = 0;
    while (2)
    {
      if (*v603 != v540)
      {
        v419 = v418;
        objc_enumerationMutation(v535);
        v418 = v419;
      }

      v567 = v418;
      v420 = *(*(&v602 + 1) + 8 * v418);
      place = [v420 place];

      if (place)
      {
        if (v416)
        {
          place2 = [v420 place];
          v423 = [place2 placeUserType] == 1;

          if (v423)
          {
            places2 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(places2, OS_LOG_TYPE_DEBUG))
            {
              [MOBundleClusteringManager generateClusterBundleFrom:v732 withEmbeddings:&v732[1] andCreationDate:? excludeResourceTypes:?];
            }

            v416 = 1;
            goto LABEL_550;
          }
        }

        if (v417)
        {
          place3 = [v420 place];
          v426 = [place3 placeUserType] == 2;

          if (v426)
          {
            places2 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
            if (os_log_type_enabled(places2, OS_LOG_TYPE_DEBUG))
            {
              [MOBundleClusteringManager generateClusterBundleFrom:buf withEmbeddings:&buf[1] andCreationDate:? excludeResourceTypes:?];
            }

            v417 = 1;
            goto LABEL_550;
          }
        }

        place4 = [v420 place];
        [v412 addObject:place4];

        place5 = [v420 place];
        v429 = [place5 placeUserType] == 1;

        place6 = [v420 place];
        v431 = [place6 placeUserType] == 2;

        v416 |= v429;
        v417 |= v431;
      }

      places = [v420 places];
      v433 = [places count] == 0;

      if (!v433)
      {
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        places2 = [v420 places];
        v434 = [places2 countByEnumeratingWithState:&v598 objects:v707 count:16];
        if (v434)
        {
          v435 = *v599;
          do
          {
            for (i5 = 0; i5 != v434; i5 = i5 + 1)
            {
              if (*v599 != v435)
              {
                objc_enumerationMutation(places2);
              }

              v437 = *(*(&v598 + 1) + 8 * i5);
              if ((v416 & 1) != 0 && [*(*(&v598 + 1) + 8 * i5) placeUserType] == 1)
              {
                v438 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v438, OS_LOG_TYPE_DEBUG))
                {
                  [MOBundleClusteringManager generateClusterBundleFrom:v597 withEmbeddings:? andCreationDate:? excludeResourceTypes:?];
                }

                v416 = 1;
              }

              else if ((v417 & 1) != 0 && [v437 placeUserType] == 2)
              {
                v439 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
                if (os_log_type_enabled(v439, OS_LOG_TYPE_DEBUG))
                {
                  [MOBundleClusteringManager generateClusterBundleFrom:v595 withEmbeddings:? andCreationDate:? excludeResourceTypes:?];
                }

                v417 = 1;
              }

              else
              {
                [v412 addObject:v437];
                v416 |= [v437 placeUserType] == 1;
                v417 |= [v437 placeUserType] == 2;
              }
            }

            v434 = [places2 countByEnumeratingWithState:&v598 objects:v707 count:16];
          }

          while (v434);
        }

LABEL_550:
      }

      v418 = v567 + 1;
      if ((v567 + 1) != v547)
      {
        continue;
      }

      break;
    }

    v547 = [v535 countByEnumeratingWithState:&v602 objects:v708 count:16];
    if (v547)
    {
      continue;
    }

    break;
  }

LABEL_553:

  if ([v412 count])
  {
    allObjects5 = [v412 allObjects];
    [(MOEventBundle *)v518 setPlaces:allObjects5];
LABEL_555:
  }

LABEL_557:
  v440 = objc_opt_new();
  if ([v548 count])
  {
    v591[0] = _NSConcreteStackBlock;
    v591[1] = 3221225472;
    v591[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_441;
    v591[3] = &unk_10033AD88;
    v592 = v531;
    v593 = v440;
    [v548 enumerateObjectsUsingBlock:v591];
  }

  if ([v511 count])
  {
    [(MOEventBundle *)v518 setPhotoTraits:v511];
  }

  v441 = [v562 count];
  phenotypeSpecificityThreshold = self->_phenotypeSpecificityThreshold;
  v443 = [v562 objectForKeyedSubscript:@"topLevelActivityType"];
  if (v443)
  {
    v444 = 0;
  }

  else
  {
    v445 = [v562 objectForKeyedSubscript:@"secondLevelActivityType"];
    v444 = v445 == 0;
  }

  v589[0] = _NSConcreteStackBlock;
  v589[1] = 3221225472;
  v589[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_2_443;
  v589[3] = &unk_10033ADB0;
  v446 = objc_opt_new();
  v590 = v446;
  [v552 enumerateObjectsUsingBlock:v589];
  if ([v446 count])
  {
    v447 = [v446 valueForKeyPath:@"@avg.self"];
    [v447 floatValue];
    v449 = v448;

    v705 = @"bundleGoodnessScore";
    *&v450 = v449;
    v451 = [NSNumber numberWithFloat:v450];
    v706 = v451;
    v452 = [NSDictionary dictionaryWithObjects:&v706 forKeys:&v705 count:1];

    [(MOEventBundle *)v518 setRankingDictionary:v452];
    v453 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    if (os_log_type_enabled(v453, OS_LOG_TYPE_DEBUG))
    {
      [MOBundleClusteringManager generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:];
    }

    v454 = v449 <= self->_avgGoodnessScoreFilteringThreshold;
  }

  else
  {
    v454 = 1;
  }

  v455 = v441 < phenotypeSpecificityThreshold || v444 || v454;
  v456 = [MOClusterMetadata alloc];
  v457 = +[NSUUID UUID];
  v458 = [(MOClusterMetadata *)v456 initWithIdentifier:v457 phenoType:v562];

  [(MOClusterMetadata *)v458 setIsFiltered:v455 & 1];
  v587[0] = _NSConcreteStackBlock;
  v587[1] = 3221225472;
  v587[2] = __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_448;
  v587[3] = &unk_10033ADB0;
  v459 = objc_opt_new();
  v588 = v459;
  [fromCopy enumerateObjectsUsingBlock:v587];
  v460 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v460, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager generateClusterBundleFrom:v459 withEmbeddings:? andCreationDate:? excludeResourceTypes:?];
  }

  if ([v459 count])
  {
    [(MOClusterMetadata *)v458 setSubSuggestionIDsBeforePruning:v459];
  }

  if ([v440 count])
  {
    allObjects6 = [v440 allObjects];
    [(MOClusterMetadata *)v458 setPhenotypePersonUUIDs:allObjects6];
  }

  v462 = [v528 objectForKeyedSubscript:@"topLevelActivityType"];

  if (v462)
  {
    v463 = [v528 objectForKeyedSubscript:@"topLevelActivityType"];
    [(MOClusterMetadata *)v458 setTopLevelActivityHistogram:v463];
  }

  v464 = [v528 objectForKeyedSubscript:@"secondLevelActivityType"];

  if (v464)
  {
    v465 = [v528 objectForKeyedSubscript:@"secondLevelActivityType"];
    [(MOClusterMetadata *)v458 setSecondLevelActivityHistogram:v465];
  }

  v466 = [v528 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];

  if (v466)
  {
    v467 = [v528 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
    [(MOClusterMetadata *)v458 setActivityTypeFromPhotoTraitsHistogram:v467];
  }

  v468 = [v528 objectForKeyedSubscript:@"timeTag"];

  if (v468)
  {
    v469 = [v528 objectForKeyedSubscript:@"timeTag"];
    [(MOClusterMetadata *)v458 setTimeTagHistogram:v469];
  }

  v470 = [v528 objectForKeyedSubscript:@"dayOfWeek"];

  if (v470)
  {
    v471 = [v528 objectForKeyedSubscript:@"dayOfWeek"];
    [(MOClusterMetadata *)v458 setDayOfWeekHistogram:v471];
  }

  v472 = [v528 objectForKeyedSubscript:@"holiday"];

  if (v472)
  {
    v473 = [v528 objectForKeyedSubscript:@"holiday"];
    [(MOClusterMetadata *)v458 setHolidayHistogram:v473];
  }

  v474 = [v528 objectForKeyedSubscript:@"celebration"];

  if (v474)
  {
    v475 = [v528 objectForKeyedSubscript:@"celebration"];
    [(MOClusterMetadata *)v458 setCelebrationHistogram:v475];
  }

  v476 = [v528 objectForKeyedSubscript:@"placeName"];

  if (v476)
  {
    v477 = [v528 objectForKeyedSubscript:@"placeName"];
    [(MOClusterMetadata *)v458 setPlaceNameHistogram:v477];
  }

  v478 = [v528 objectForKeyedSubscript:@"combinedPlaceType"];

  if (v478)
  {
    v479 = [v528 objectForKeyedSubscript:@"combinedPlaceType"];
    [(MOClusterMetadata *)v458 setCombinedPlaceTypeHistogram:v479];
  }

  v480 = [v528 objectForKeyedSubscript:@"enclosingAreaName"];

  if (v480)
  {
    v481 = [v528 objectForKeyedSubscript:@"enclosingAreaName"];
    [(MOClusterMetadata *)v458 setEnclosingPlaceNameHistogram:v481];
  }

  v482 = [v528 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

  if (v482)
  {
    v483 = [v528 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
    [(MOClusterMetadata *)v458 setPlaceTypeFromPhotoTraitsHistogram:v483];
  }

  v484 = [v528 objectForKeyedSubscript:@"persons"];

  if (v484)
  {
    v485 = [v528 objectForKeyedSubscript:@"persons"];
    [(MOClusterMetadata *)v458 setContactNamesHistogram:v485];
  }

  v486 = [v528 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];

  if (v486)
  {
    v487 = [v528 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
    [(MOClusterMetadata *)v458 setSocialEventFromPhotoTraitsHistogram:v487];
  }

  v488 = [v528 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

  if (v488)
  {
    v489 = [v528 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
    [(MOClusterMetadata *)v458 setOtherSubjectFromPhotoTraitsHistogram:v489];
  }

  v490 = [v528 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];

  if (v490)
  {
    v491 = [v528 objectForKeyedSubscript:kMOStateOfMindContextEmbeddingValenceValues];
    [(MOClusterMetadata *)v458 setStateOfMindValenceHistogram:v491];
  }

  [(MOClusterMetadata *)v458 setPersonRelationshipHistogram:v573];
  if ([v446 count])
  {
    [(MOClusterMetadata *)v458 setSubBundleGoodnessScores:v446];
  }

  if ([v530 count])
  {
    [(MOClusterMetadata *)v458 setWeekOfYearHistogram:v530];
  }

  [(MOEventBundle *)v518 setClusterMetadata:v458];
  v208 = v518;

  v297 = v558;
LABEL_363:

  v207 = v524;
LABEL_364:

  return v208;
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 summaryDictionary];
  [v2 addObject:v3];
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_333(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v3 _convertContextvalueToString:v6 forKey:*(a1 + 40)];

  v8 = [v5 objectForKeyedSubscript:@"bundleID"];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [*(a1 + 48) objectForKeyedSubscript:v7];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [*(a1 + 48) objectForKeyedSubscript:v7];
      v13 = [v12 mutableCopy];

      [v13 addObject:v8];
      [*(a1 + 48) setObject:v13 forKeyedSubscript:v7];
    }

    else
    {
      v15 = v8;
      v14 = [NSArray arrayWithObjects:&v15 count:1];
      [*(a1 + 48) setObject:v14 forKeyedSubscript:v7];
    }
  }
}

int64_t __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_2(id a1, NSArray *a2, NSArray *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSArray *)v4 count];
  if (v6 >= [(NSArray *)v5 count])
  {
    v8 = [(NSArray *)v4 count];
    if (v8 <= [(NSArray *)v5 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

int64_t __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_339(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSNumber *)v4 intValue];
  if (v6 >= [(NSNumber *)v5 intValue])
  {
    v8 = [(NSNumber *)v4 intValue];
    if (v8 <= [(NSNumber *)v5 intValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

int64_t __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_352(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSNumber *)v4 intValue];
  if (v6 >= [(NSNumber *)v5 intValue])
  {
    v8 = [(NSNumber *)v4 intValue];
    if (v8 <= [(NSNumber *)v5 intValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

BOOL __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_363(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 count];
  v10 = v9 < [v8 count];

  return v10;
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_393(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      v7 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_393_cold_2();
      }

      goto LABEL_24;
    }

    v45 = a1;
    v8 = [PHPerson fetchPersonsInAsset:v5 options:0];
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_393_cold_1(v5, v8);
    }

    v46 = v5;

    v10 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v53 objects:v69 count:16];
    v48 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = *v54;
      v47 = v10;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v53 + 1) + 8 * i);
          v17 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v49 = [v16 type];
            v50 = [v16 localIdentifier];
            v52 = [v16 name];
            v19 = [v52 mask];
            v51 = [v16 displayName];
            v20 = [v51 mask];
            v21 = [v16 personUri];
            v22 = [v16 contactMatchingDictionary];
            v23 = [v22 description];
            *buf = 134219267;
            v58 = v49;
            v59 = 2112;
            v60 = v50;
            v61 = 2113;
            v62 = v19;
            v63 = 2113;
            v64 = v20;
            v65 = 2113;
            v66 = v21;
            v67 = 2113;
            v68 = v23;
            v24 = v23;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "person type=%ld, localIdentifer=%@, name=%{private}@, displayName=%{private}@, personURI=%{private}@, contactMatchingDictionary=%{private}@", buf, 0x3Eu);

            v11 = v48;
            v10 = v47;
          }

          v18 = [v16 localIdentifier];
          [v10 addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v13);
    }

    a1 = v45;
    [v10 intersectSet:*(v45 + 32)];
    if ([v10 count])
    {
      if (![*(v45 + 40) count])
      {
        v37 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
        v5 = v46;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [*(v45 + 48) assets];
          v39 = [*(v45 + 56) objectForKeyedSubscript:@"persons"];
          *buf = 138412547;
          v58 = v38;
          v59 = 2113;
          v60 = v39;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[Non-photoTrait based summary] Current photo asset (UUID:%@) contains phenotype person(s): %{private}@. Adding it to resources", buf, 0x16u);
        }

        *(*(*(v45 + 80) + 8) + 24) = 1;
        v40 = *(v45 + 64);
        v41 = [v10 allObjects];
        [v40 addObjectsFromArray:v41];

        v6 = 0;
        v11 = v48;
        goto LABEL_39;
      }

      v25 = *(v45 + 88);
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v25 == 1)
      {
        if (v27)
        {
          v28 = [*(v45 + 48) assets];
          v29 = [*(v45 + 56) objectForKeyedSubscript:@"persons"];
          *buf = 138412547;
          v58 = v28;
          v59 = 2113;
          v60 = v29;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[Photo trait based summary] Current photo asset (UUID:%@) contains phenotype person(s) and photo trait phenotype: %{private}@. Adding it to resources", buf, 0x16u);
        }

        *(*(*(v45 + 80) + 8) + 24) = 1;
        v30 = *(v45 + 64);
        v31 = [v10 allObjects];
        [v30 addObjectsFromArray:v31];

        goto LABEL_38;
      }

      if (!v27)
      {
LABEL_37:

        *(*(*(v45 + 80) + 8) + 24) = 0;
LABEL_38:
        v5 = v46;
        v6 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v42 = [*(v45 + 48) assets];
      v43 = [*(v45 + 56) objectForKeyedSubscript:@"persons"];
      *buf = 138412547;
      v58 = v42;
      v59 = 2113;
      v60 = v43;
      v44 = "[Photo trait based summary] Current photo asset (UUID:%@) contains  phenotype person(s) (%{private}@) but not phenotype photo trait. Dropping this photo resource";
    }

    else
    {
      v32 = *(v45 + 88);
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
      v33 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v32 == 1)
      {
        if (v33)
        {
          v34 = [*(v45 + 48) assets];
          v35 = [*(v45 + 56) objectForKeyedSubscript:@"persons"];
          v36 = *(v45 + 40);
          *buf = 138412803;
          v58 = v34;
          v59 = 2113;
          v60 = v35;
          v61 = 2113;
          v62 = v36;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Current photo asset (UUID:%@) does not contain phenotype person(s): %{private}@. However it contains photo trait phenotype(s): (%{private}@. Hold dropping this photo asset ", buf, 0x20u);
        }

        *(*(*(v45 + 80) + 8) + 24) = 1;
        goto LABEL_38;
      }

      if (!v33)
      {
        goto LABEL_37;
      }

      v42 = [*(v45 + 48) assets];
      v43 = [*(v45 + 56) objectForKeyedSubscript:@"persons"];
      *buf = 138412547;
      v58 = v42;
      v59 = 2113;
      v60 = v43;
      v44 = "Current photo asset (UUID:%@) does not contain phenotype person(s) nor photo trait phenotype: %{private}@. Drop this photo asset from summary";
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v44, buf, 0x16u);

    goto LABEL_37;
  }

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v58 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[photoManager fetchAssetUsingID] error=%{private}@. Drop this photo asset from the summary.", buf, 0xCu);
  }

LABEL_24:

  *(*(*(a1 + 80) + 8) + 24) = 0;
LABEL_40:
  dispatch_semaphore_signal(*(a1 + 72));
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_403(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 objectForKeyedSubscript:@"weekOfYear"];
  if (v3)
  {
    v4 = v3;
    v5 = [v12 objectForKeyedSubscript:@"bundleID"];
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      v8 = [v12 objectForKeyedSubscript:@"bundleID"];
      LODWORD(v7) = [v7 containsObject:v8];

      if (!v7)
      {
        goto LABEL_6;
      }

      v9 = [v12 objectForKeyedSubscript:@"weekOfYear"];
      v4 = [v9 stringValue];

      v10 = [*(a1 + 40) objectForKeyedSubscript:v4];
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 intValue] + 1);
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v4];
    }
  }

LABEL_6:
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_441(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 contactIdentifier];

  if (v3)
  {
    v4 = [v10 localIdentifier];
    if (!v4 || (v5 = v4, v6 = *(a1 + 32), [v10 localIdentifier], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "containsObject:", v7), v7, v5, v6))
    {
      v8 = *(a1 + 40);
      v9 = [v10 contactIdentifier];
      [v8 addObject:v9];
    }
  }
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_2_443(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 rankingDictionary];
  v4 = [v3 objectForKeyedSubscript:@"bundleGoodnessScore"];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v8 rankingDictionary];
    v7 = [v6 objectForKeyedSubscript:@"bundleGoodnessScore"];
    [v5 addObject:v7];
  }
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_448(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 suggestionID];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v7 suggestionID];
    v6 = [v5 UUIDString];
    [v4 addObject:v6];
  }
}

- (void)initializeHDBSCANWithParams:(id)params
{
  paramsCopy = params;
  [(MOBundleClusteringManager *)self _setClusteringParams:paramsCopy];
  v5 = [[MOHDBSCANClustering alloc] initWithParameters:paramsCopy];
  hdbscanClustering = self->_hdbscanClustering;
  self->_hdbscanClustering = v5;

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MOBundleClusteringManager initializeHDBSCANWithParams:paramsCopy];
  }
}

- (id)_convertContextvalueToString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (!stringCopy)
  {
    goto LABEL_3;
  }

  v7 = +[NSNull null];
  v8 = [stringCopy isEqual:v7];

  if (v8)
  {
    goto LABEL_3;
  }

  if (@"timeTag" != keyCopy)
  {
    if (![(__CFString *)keyCopy isEqualToString:@"secondLevelActivityType"])
    {
      [(__CFString *)keyCopy isEqualToString:@"combinedPlaceType"];
    }

    stringValue = [stringCopy stringValue];
    goto LABEL_8;
  }

  v10 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [stringCopy intValue]);
  if (!v10)
  {
LABEL_3:
    stringValue = @"unavailable";
LABEL_8:
    v10 = stringValue;
  }

  return v10;
}

- (void)submitClusterBundleInternalAnalytics:(id)analytics withOnboardingStatus:(id)status andSubmissionDate:(id)date
{
  analyticsCopy = analytics;
  statusCopy = status;
  dateCopy = date;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v181 = [analyticsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%lu cluster bundles are ready for CoreAnalytics donation", buf, 0xCu);
  }

  v159 = +[NSCalendar currentCalendar];
  v9 = [v159 components:764 fromDate:dateCopy];
  year = [v9 year];
  month = [v9 month];
  v165 = [v9 day];
  hour = [v9 hour];
  v158 = v9;
  minute = [v9 minute];
  v168 = [MOMetric binsFromStart:&off_100369FB8 toEnd:&off_10036E540 gap:&off_10036E550];
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  obj = analyticsCopy;
  v171 = [obj countByEnumeratingWithState:&v176 objects:v184 count:16];
  if (v171)
  {
    v162 = *v177;
    do
    {
      v10 = 0;
      do
      {
        if (*v177 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v173 = v10;
        v11 = *(*(&v176 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:statusCopy];
        v13 = [NSNumber numberWithInteger:year];
        [v12 setObject:v13 forKeyedSubscript:@"submissionTimeYear"];

        v14 = [NSNumber numberWithInteger:month];
        [v12 setObject:v14 forKeyedSubscript:@"submissionTimeMonth"];

        v15 = [NSNumber numberWithInteger:v165];
        [v12 setObject:v15 forKeyedSubscript:@"submissionTimeDay"];

        v16 = [NSNumber numberWithInteger:hour];
        [v12 setObject:v16 forKeyedSubscript:@"submissionTimeHour"];

        v17 = [NSNumber numberWithInteger:minute];
        [v12 setObject:v17 forKeyedSubscript:@"submissionTimeMinute"];

        bundleIdentifier = [v11 bundleIdentifier];
        v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleIdentifier hash]);
        [v12 setObject:v19 forKeyedSubscript:@"bundleId"];

        suggestionID = [v11 suggestionID];
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [suggestionID hash]);
        [v12 setObject:v21 forKeyedSubscript:@"suggestionId"];

        v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 bundleSubType]);
        [v12 setObject:v22 forKeyedSubscript:@"bundleSubType"];

        subSuggestionIDs = [v11 subSuggestionIDs];
        v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [subSuggestionIDs count]);
        [v12 setObject:v24 forKeyedSubscript:@"subBundleCount"];

        startDate = [v11 startDate];
        [dateCopy timeIntervalSinceDate:startDate];
        v26 = [NSNumber numberWithDouble:?];
        v27 = [MOMetric binForNumber:v26 bins:v168];
        [v12 setObject:v27 forKeyedSubscript:@"startTimeBucketed"];

        endDate = [v11 endDate];
        [dateCopy timeIntervalSinceDate:endDate];
        v29 = [NSNumber numberWithDouble:?];
        v30 = [MOMetric binForNumber:v29 bins:v168];
        [v12 setObject:v30 forKeyedSubscript:@"endTimeBucketed"];

        clusterMetadata = [v11 clusterMetadata];

        if (clusterMetadata)
        {
          clusterMetadata2 = [v11 clusterMetadata];
          subSuggestionIDsBeforePruning = [clusterMetadata2 subSuggestionIDsBeforePruning];
          v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [subSuggestionIDsBeforePruning count]);
          [v12 setObject:v34 forKeyedSubscript:@"subBundleCountBeforePruning"];

          clusterMetadata3 = [v11 clusterMetadata];
          phenotype = [clusterMetadata3 phenotype];

          v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [phenotype count]);
          [v12 setObject:v37 forKeyedSubscript:@"phenotypeFieldCount"];

          v38 = [phenotype objectForKeyedSubscript:@"topLevelActivityType"];

          if (v38)
          {
            v39 = [phenotype objectForKeyedSubscript:@"topLevelActivityType"];
            v40 = [NSNumber numberWithUnsignedInteger:[MOEventBundle getSuperTypeEnum:v39]];
            [v12 setObject:v40 forKeyedSubscript:@"topLevelActivityPhenotype"];
          }

          v41 = [phenotype objectForKeyedSubscript:@"secondLevelActivityType"];
          if (v41)
          {
            v42 = &__kCFBooleanTrue;
          }

          else
          {
            v42 = &__kCFBooleanFalse;
          }

          [v12 setObject:v42 forKeyedSubscript:@"secondLevelActivityPhenotypeExists"];

          v43 = [phenotype objectForKeyedSubscript:@"isWeekend"];
          v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v43 BOOLValue]);
          [v12 setObject:v44 forKeyedSubscript:@"isWeekend"];

          v45 = [phenotype objectForKeyedSubscript:@"dayOfWeek"];
          if (v45)
          {
            v46 = &__kCFBooleanTrue;
          }

          else
          {
            v46 = &__kCFBooleanFalse;
          }

          [v12 setObject:v46 forKeyedSubscript:@"dayOfWeekPhenotypeExists"];

          v47 = [phenotype objectForKeyedSubscript:@"timeTag"];
          if (v47)
          {
            v48 = &__kCFBooleanTrue;
          }

          else
          {
            v48 = &__kCFBooleanFalse;
          }

          [v12 setObject:v48 forKeyedSubscript:@"timeTagPhenotypeExists"];

          v49 = [phenotype objectForKeyedSubscript:@"combinedPlaceType"];

          if (v49)
          {
            v50 = [phenotype objectForKeyedSubscript:@"combinedPlaceType"];
            [v12 setObject:v50 forKeyedSubscript:@"combinedPlaceType"];
          }

          v51 = [phenotype objectForKeyedSubscript:@"placeName"];
          if (v51)
          {
            v52 = &__kCFBooleanTrue;
          }

          else
          {
            v52 = &__kCFBooleanFalse;
          }

          [v12 setObject:v52 forKeyedSubscript:@"placeNamePhenotypeExists"];

          v53 = [phenotype objectForKeyedSubscript:@"enclosingAreaName"];
          if (v53)
          {
            v54 = &__kCFBooleanTrue;
          }

          else
          {
            v54 = &__kCFBooleanFalse;
          }

          [v12 setObject:v54 forKeyedSubscript:@"enclosingAreaPhenotypeExists"];

          persons = [v11 persons];
          v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [persons count]);
          [v12 setObject:v56 forKeyedSubscript:@"personPhenotypeCount"];

          v57 = [phenotype objectForKeyedSubscript:@"withFamily"];

          if (v57)
          {
            [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"withFamily"];
          }

          v58 = [phenotype objectForKeyedSubscript:@"withCoworker"];

          if (v58)
          {
            [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"withCoworker"];
          }

          v59 = [phenotype objectForKeyedSubscript:@"withFriend"];

          if (v59)
          {
            [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"withFriend"];
          }

          v60 = [phenotype objectForKeyedSubscript:@"withChild"];

          if (v60)
          {
            [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"withChild"];
          }

          v61 = [phenotype objectForKeyedSubscript:@"withMyPet"];

          if (v61)
          {
            [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"withMyPet"];
          }

          v62 = [phenotype objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];

          if (v62)
          {
            v63 = [phenotype objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
            [v12 setObject:v63 forKeyedSubscript:@"activityTypeFromPhotoTraits"];
          }

          v64 = [phenotype objectForKeyedSubscript:@"holiday"];

          if (v64)
          {
            v65 = [phenotype objectForKeyedSubscript:@"holiday"];
            [v12 setObject:v65 forKeyedSubscript:@"holiday"];
          }

          v66 = [phenotype objectForKeyedSubscript:@"celebration"];

          if (v66)
          {
            v67 = [phenotype objectForKeyedSubscript:@"celebration"];
            [v12 setObject:v67 forKeyedSubscript:@"celebration"];
          }

          v68 = [phenotype objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];

          if (v68)
          {
            v69 = [phenotype objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
            [v12 setObject:v69 forKeyedSubscript:@"placeTypeFromPhotoTraits"];
          }

          v70 = [phenotype objectForKeyedSubscript:@"socialEventFromPhotoTraits"];

          if (v70)
          {
            v71 = [phenotype objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
            [v12 setObject:v71 forKeyedSubscript:@"socialEventFromPhotoTraits"];
          }

          v72 = [phenotype objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

          if (v72)
          {
            v73 = [phenotype objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
            [v12 setObject:v73 forKeyedSubscript:@"otherSubjectFromPhotoTraits"];
          }

          clusterMetadata4 = [v11 clusterMetadata];
          topLevelActivityHistogram = [clusterMetadata4 topLevelActivityHistogram];
          [topLevelActivityHistogram count];

          clusterMetadata5 = [v11 clusterMetadata];
          topLevelActivityHistogram2 = [clusterMetadata5 topLevelActivityHistogram];
          v78 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:topLevelActivityHistogram2];
          [v12 setObject:v78 forKeyedSubscript:@"uniqueTopLevelActivityCount"];

          clusterMetadata6 = [v11 clusterMetadata];
          secondLevelActivityHistogram = [clusterMetadata6 secondLevelActivityHistogram];
          [secondLevelActivityHistogram count];

          clusterMetadata7 = [v11 clusterMetadata];
          secondLevelActivityHistogram2 = [clusterMetadata7 secondLevelActivityHistogram];
          v83 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:secondLevelActivityHistogram2];
          [v12 setObject:v83 forKeyedSubscript:@"uniqueSecondLevelActivityCount"];

          clusterMetadata8 = [v11 clusterMetadata];
          activityTypeFromPhotoTraitsHistogram = [clusterMetadata8 activityTypeFromPhotoTraitsHistogram];
          [activityTypeFromPhotoTraitsHistogram count];

          clusterMetadata9 = [v11 clusterMetadata];
          activityTypeFromPhotoTraitsHistogram2 = [clusterMetadata9 activityTypeFromPhotoTraitsHistogram];
          v88 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:activityTypeFromPhotoTraitsHistogram2];
          [v12 setObject:v88 forKeyedSubscript:@"activityTypeFromPhotoTraitsCount"];

          clusterMetadata10 = [v11 clusterMetadata];
          timeTagHistogram = [clusterMetadata10 timeTagHistogram];
          [timeTagHistogram count];

          clusterMetadata11 = [v11 clusterMetadata];
          timeTagHistogram2 = [clusterMetadata11 timeTagHistogram];
          v93 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:timeTagHistogram2];
          [v12 setObject:v93 forKeyedSubscript:@"timeTagCount"];

          clusterMetadata12 = [v11 clusterMetadata];
          dayOfWeekHistogram = [clusterMetadata12 dayOfWeekHistogram];
          [dayOfWeekHistogram count];

          clusterMetadata13 = [v11 clusterMetadata];
          dayOfWeekHistogram2 = [clusterMetadata13 dayOfWeekHistogram];
          v98 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:dayOfWeekHistogram2];
          [v12 setObject:v98 forKeyedSubscript:@"dayOfWeekCount"];

          clusterMetadata14 = [v11 clusterMetadata];
          weekOfYearHistogram = [clusterMetadata14 weekOfYearHistogram];
          [weekOfYearHistogram count];

          clusterMetadata15 = [v11 clusterMetadata];
          weekOfYearHistogram2 = [clusterMetadata15 weekOfYearHistogram];
          v103 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:weekOfYearHistogram2];
          [v12 setObject:v103 forKeyedSubscript:@"weekOfYearCount"];

          clusterMetadata16 = [v11 clusterMetadata];
          holidayHistogram = [clusterMetadata16 holidayHistogram];
          [holidayHistogram count];

          clusterMetadata17 = [v11 clusterMetadata];
          holidayHistogram2 = [clusterMetadata17 holidayHistogram];
          v108 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:holidayHistogram2];
          [v12 setObject:v108 forKeyedSubscript:@"holidayCount"];

          clusterMetadata18 = [v11 clusterMetadata];
          celebrationHistogram = [clusterMetadata18 celebrationHistogram];
          [celebrationHistogram count];

          clusterMetadata19 = [v11 clusterMetadata];
          celebrationHistogram2 = [clusterMetadata19 celebrationHistogram];
          v113 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:celebrationHistogram2];
          [v12 setObject:v113 forKeyedSubscript:@"celebrationCount"];

          clusterMetadata20 = [v11 clusterMetadata];
          placeNameHistogram = [clusterMetadata20 placeNameHistogram];
          [placeNameHistogram count];

          clusterMetadata21 = [v11 clusterMetadata];
          placeNameHistogram2 = [clusterMetadata21 placeNameHistogram];
          v118 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:placeNameHistogram2];
          [v12 setObject:v118 forKeyedSubscript:@"placeNameCount"];

          clusterMetadata22 = [v11 clusterMetadata];
          combinedPlaceTypeHistogram = [clusterMetadata22 combinedPlaceTypeHistogram];
          [combinedPlaceTypeHistogram count];

          clusterMetadata23 = [v11 clusterMetadata];
          combinedPlaceTypeHistogram2 = [clusterMetadata23 combinedPlaceTypeHistogram];
          v123 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:combinedPlaceTypeHistogram2];
          [v12 setObject:v123 forKeyedSubscript:@"combinedPlaceTypeCount"];

          clusterMetadata24 = [v11 clusterMetadata];
          enclosingPlaceNameHistogram = [clusterMetadata24 enclosingPlaceNameHistogram];
          [enclosingPlaceNameHistogram count];

          clusterMetadata25 = [v11 clusterMetadata];
          enclosingPlaceNameHistogram2 = [clusterMetadata25 enclosingPlaceNameHistogram];
          v128 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:enclosingPlaceNameHistogram2];
          [v12 setObject:v128 forKeyedSubscript:@"enclosingPlaceNameCount"];

          clusterMetadata26 = [v11 clusterMetadata];
          placeTypeFromPhotoTraitsHistogram = [clusterMetadata26 placeTypeFromPhotoTraitsHistogram];
          [placeTypeFromPhotoTraitsHistogram count];

          clusterMetadata27 = [v11 clusterMetadata];
          placeTypeFromPhotoTraitsHistogram2 = [clusterMetadata27 placeTypeFromPhotoTraitsHistogram];
          v133 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:placeTypeFromPhotoTraitsHistogram2];
          [v12 setObject:v133 forKeyedSubscript:@"placeTypeFromPhotoTraitsCount"];

          clusterMetadata28 = [v11 clusterMetadata];
          contactNamesHistogram = [clusterMetadata28 contactNamesHistogram];
          [contactNamesHistogram count];

          clusterMetadata29 = [v11 clusterMetadata];
          contactNamesHistogram2 = [clusterMetadata29 contactNamesHistogram];
          v138 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:contactNamesHistogram2];
          [v12 setObject:v138 forKeyedSubscript:@"contactNamesCount"];

          clusterMetadata30 = [v11 clusterMetadata];
          personRelationshipHistogram = [clusterMetadata30 personRelationshipHistogram];
          [personRelationshipHistogram count];

          clusterMetadata31 = [v11 clusterMetadata];
          personRelationshipHistogram2 = [clusterMetadata31 personRelationshipHistogram];
          v143 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:personRelationshipHistogram2];
          [v12 setObject:v143 forKeyedSubscript:@"personRelationshipCount"];

          clusterMetadata32 = [v11 clusterMetadata];
          socialEventFromPhotoTraitsHistogram = [clusterMetadata32 socialEventFromPhotoTraitsHistogram];
          [socialEventFromPhotoTraitsHistogram count];

          clusterMetadata33 = [v11 clusterMetadata];
          socialEventFromPhotoTraitsHistogram2 = [clusterMetadata33 socialEventFromPhotoTraitsHistogram];
          v148 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:socialEventFromPhotoTraitsHistogram2];
          [v12 setObject:v148 forKeyedSubscript:@"socialEventFromPhotoTraitsCount"];

          clusterMetadata34 = [v11 clusterMetadata];
          otherSubjectFromPhotoTraitsHistogram = [clusterMetadata34 otherSubjectFromPhotoTraitsHistogram];
          [otherSubjectFromPhotoTraitsHistogram count];

          clusterMetadata35 = [v11 clusterMetadata];
          otherSubjectFromPhotoTraitsHistogram2 = [clusterMetadata35 otherSubjectFromPhotoTraitsHistogram];
          v153 = [(MOBundleClusteringManager *)self _countValidKeysInHistogram:otherSubjectFromPhotoTraitsHistogram2];
          [v12 setObject:v153 forKeyedSubscript:@"otherSubjectFromPhotoTraitsCount"];
        }

        if ([v12 count])
        {
          v154 = v12;
          AnalyticsSendEventLazy();
          v155 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412547;
            v181 = @"com.apple.Moments.MOClusterBundle";
            v182 = 2113;
            v183 = v154;
            _os_log_debug_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEBUG, "Submitted coreAnalytics payload to %@: %{private}@", buf, 0x16u);
          }

          v156 = v154;
        }

        else
        {
          v156 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
          {
            [MOBundleClusteringManager submitClusterBundleInternalAnalytics:v175 withOnboardingStatus:? andSubmissionDate:?];
          }
        }

        objc_autoreleasePoolPop(context);
        v10 = v173 + 1;
      }

      while (v171 != (v173 + 1));
      v171 = [obj countByEnumeratingWithState:&v176 objects:v184 count:16];
    }

    while (v171);
  }

  v157 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_INFO, "Completed cluster Bundle CoreAnalytics submission.", buf, 2u);
  }
}

- (void)submitAnomalyBundleInternalAnalytics:(id)analytics withOnboardingStatus:(id)status andSubmissionDate:(id)date
{
  analyticsCopy = analytics;
  statusCopy = status;
  dateCopy = date;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v65 = [analyticsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%lu anomaly bundles are ready for CoreAnalytics donation", buf, 0xCu);
  }

  v45 = +[NSCalendar currentCalendar];
  v9 = [v45 components:764 fromDate:dateCopy];
  year = [v9 year];
  month = [v9 month];
  v50 = [v9 day];
  hour = [v9 hour];
  minute = [v9 minute];
  v53 = [MOMetric binsFromStart:&off_100369FB8 toEnd:&off_10036E540 gap:&off_10036E550];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = analyticsCopy;
  v56 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v56)
  {
    v47 = *v61;
    do
    {
      v10 = 0;
      do
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v60 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [MOEngagementAndSuggestionAnalyticsManager generateDefaultAnalyticsPayloadWithOnboardingStatus:statusCopy];
        v13 = [NSNumber numberWithInteger:year];
        [v12 setObject:v13 forKeyedSubscript:@"submissionTimeYear"];

        v14 = [NSNumber numberWithInteger:month];
        [v12 setObject:v14 forKeyedSubscript:@"submissionTimeMonth"];

        v15 = [NSNumber numberWithInteger:v50];
        [v12 setObject:v15 forKeyedSubscript:@"submissionTimeDay"];

        v16 = [NSNumber numberWithInteger:hour];
        [v12 setObject:v16 forKeyedSubscript:@"submissionTimeHour"];

        v17 = [NSNumber numberWithInteger:minute];
        [v12 setObject:v17 forKeyedSubscript:@"submissionTimeMinute"];

        LODWORD(v18) = 1176256512;
        v19 = [NSNumber numberWithFloat:v18];
        [v12 setObject:v19 forKeyedSubscript:@"scalingFactorForFloatValue"];

        bundleIdentifier = [v11 bundleIdentifier];
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleIdentifier hash]);
        [v12 setObject:v21 forKeyedSubscript:@"bundleId"];

        suggestionID = [v11 suggestionID];
        v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [suggestionID hash]);
        [v12 setObject:v23 forKeyedSubscript:@"suggestionId"];

        v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 bundleSubType]);
        [v12 setObject:v24 forKeyedSubscript:@"bundleSubType"];

        v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 bundleSuperType]);
        [v12 setObject:v25 forKeyedSubscript:@"bundleSuperType"];

        startDate = [v11 startDate];
        [dateCopy timeIntervalSinceDate:startDate];
        v27 = [NSNumber numberWithDouble:?];
        v28 = [MOMetric binForNumber:v27 bins:v53];
        [v12 setObject:v28 forKeyedSubscript:@"startTimeBucketed"];

        endDate = [v11 endDate];
        [dateCopy timeIntervalSinceDate:endDate];
        v30 = [NSNumber numberWithDouble:?];
        v31 = [MOMetric binForNumber:v30 bins:v53];
        [v12 setObject:v31 forKeyedSubscript:@"endTimeBucketed"];

        outlierMetadata = [v11 outlierMetadata];

        if (outlierMetadata)
        {
          outlierMetadata2 = [v11 outlierMetadata];
          v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [outlierMetadata2 isSignificant]);
          [v12 setObject:v34 forKeyedSubscript:@"anomalyIsSignificant"];

          outlierMetadata3 = [v11 outlierMetadata];
          [outlierMetadata3 outlierScore];
          v37 = [NSNumber numberWithDouble:v36 * 10000.0];
          [v12 setObject:v37 forKeyedSubscript:@"outlierScore"];

          outlierMetadata4 = [v11 outlierMetadata];
          [outlierMetadata4 bundleGoodnessScore];
          v40 = [NSNumber numberWithDouble:v39 * 10000.0];
          [v12 setObject:v40 forKeyedSubscript:@"bundleGoodnessScore"];
        }

        if ([v12 count])
        {
          v41 = v12;
          AnalyticsSendEventLazy();
          v42 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412547;
            v65 = @"com.apple.Moments.MOAnomalyBundle";
            v66 = 2113;
            v67 = v41;
            _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Submitted coreAnalytics payload to %@: %{private}@", buf, 0x16u);
          }

          v43 = v41;
        }

        else
        {
          v43 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [MOBundleClusteringManager submitAnomalyBundleInternalAnalytics:v59 withOnboardingStatus:? andSubmissionDate:?];
          }
        }

        v44 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Completed Anomaly Bundle CoreAnalytics submission.", buf, 2u);
        }

        objc_autoreleasePoolPop(context);
        v10 = v10 + 1;
      }

      while (v56 != v10);
      v56 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v56);
  }
}

- (id)_countValidKeysInHistogram:(id)histogram
{
  allKeys = [histogram allKeys];
  v4 = [allKeys mutableCopy];

  [v4 removeObject:@"unknown"];
  [v4 removeObject:@"unavailable"];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);

  return v5;
}

- (id)_phenotypeDimensionFor:(id)for withphenotypeDimensionDict:(id)dict
{
  forCopy = for;
  dictCopy = dict;
  v7 = dictCopy;
  v8 = 0;
  if (forCopy && dictCopy)
  {
    if (![dictCopy count])
    {
      goto LABEL_14;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:{v14, v17}];
          if ([v15 containsObject:forCopy])
          {
            v8 = v14;

            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if ([forCopy containsString:@"persons"])
    {
      v8 = @"peopleContext";
    }

    else
    {
LABEL_14:
      v8 = 0;
    }
  }

LABEL_16:

  return v8;
}

- (id)getDefaultClusteringParams
{
  getDefaultDistanceWeight = [(MOBundleClusteringManager *)self getDefaultDistanceWeight];
  configurationManager = self->_configurationManager;
  if (configurationManager)
  {
    v5 = [(MOConfigurationManagerBase *)configurationManager getIntegerSettingForKey:@"MOClusteringParams_minPoints" withFallback:3];
    v6 = [(MOConfigurationManagerBase *)self->_configurationManager getIntegerSettingForKey:@"MOClusteringParams_minClusterSize" withFallback:3];
  }

  else
  {
    v5 = 3;
    v6 = 3;
  }

  v7 = [[MOClusteringParams alloc] initWithembeddingDistanceWeights:getDefaultDistanceWeight minPoints:v5 minClusterSize:v6];

  return v7;
}

- (id)getDefaultDistanceWeight
{
  v3 = objc_opt_new();
  [v3 setObject:&off_10036E560 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&off_10036E570 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&off_10036E580 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&off_10036E590 forKeyedSubscript:@"embeddingDistWeight_socialContext"];
  [v3 setObject:&off_10036E5A0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindContext"];
  [v3 setObject:&off_10036E5A0 forKeyedSubscript:@"embeddingDistWeight_extraContext"];
  [v3 setObject:&off_10036E560 forKeyedSubscript:@"embeddingDistWeight_topLevelActivityType"];
  [v3 setObject:&off_10036E5B0 forKeyedSubscript:@"embeddingDistWeight_secondLevelActivityType"];
  [v3 setObject:&off_10036E590 forKeyedSubscript:@"embeddingDistWeight_activityTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E590 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&off_10036E5C0 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&off_10036E580 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&off_10036E570 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&off_10036E5D0 forKeyedSubscript:@"embeddingDistWeight_holiday"];
  [v3 setObject:&off_10036E5A0 forKeyedSubscript:@"embeddingDistWeight_celebration"];
  [v3 setObject:&off_10036E560 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&off_10036E580 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&off_10036E570 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&off_10036E590 forKeyedSubscript:@"embeddingDistWeight_placeTypeFromPhotoTraits"];
  [v3 setObject:&off_10036E590 forKeyedSubscript:@"embeddingDistWeight_contactNames"];
  [v3 setObject:&off_10036E5C0 forKeyedSubscript:@"embeddingDistWeight_IsWithContact"];
  [v3 setObject:&off_10036E5E0 forKeyedSubscript:@"embeddingDistWeight_isWithFamily"];
  [v3 setObject:&off_10036E5D0 forKeyedSubscript:@"embeddingDistWeight_isWithCoworker"];
  [v3 setObject:&off_10036E5E0 forKeyedSubscript:@"embeddingDistWeight_isWithFriend"];
  [v3 setObject:&off_10036E590 forKeyedSubscript:@"embeddingDistWeight_isWithChild"];
  [v3 setObject:&off_10036E5E0 forKeyedSubscript:@"embeddingDistWeight_isWithMyPet"];
  [v3 setObject:&off_10036E5D0 forKeyedSubscript:@"embeddingDistWeight_SocialEventFromPhotoTraits "];
  [v3 setObject:&off_10036E5F0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindValence"];
  [v3 setObject:&off_10036E5E0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindDomains"];
  [v3 setObject:&off_10036E5E0 forKeyedSubscript:@"embeddingDistWeight_stateOfMindLabels"];
  [v3 setObject:&off_10036E600 forKeyedSubscript:@"embeddingDistWeight_otherSubjectFromPhotoTraits"];
  v4 = [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v3 configurationManager:self->_configurationManager];

  return v4;
}

+ (id)setEmbeddingWeightsWithConfigurationManager:(id)manager configurationManager:(id)configurationManager
{
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityBundleClusteringManager);
  v10 = v9;
  if (configurationManagerCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:configurationManager:];
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __94__MOBundleClusteringManager_setEmbeddingWeightsWithConfigurationManager_configurationManager___block_invoke;
    v18[3] = &unk_10033AE00;
    v11 = objc_opt_new();
    v19 = v11;
    v20 = configurationManagerCopy;
    [managerCopy enumerateKeysAndObjectsUsingBlock:v18];
    if (![MOBundleClusteringManager _containsCompleteEmbeddingDistanceWeightKeys:v11])
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:v11 configurationManager:?];
      }

      v13 = +[NSAssertionHandler currentHandler];
      allKeys = [v11 allKeys];
      [v13 handleFailureInMethod:a2 object:self file:@"MOBundleClusteringManager.m" lineNumber:1698 description:{@"Default embeddingDistanceWeightDict is missing some keys. Current keys:%@ (in %s:%d)", allKeys, "+[MOBundleClusteringManager setEmbeddingWeightsWithConfigurationManager:configurationManager:]", 1698}];
    }

    v15 = v20;
    v16 = v11;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Configuration manager is not set. Return default weights", buf, 2u);
    }

    v16 = managerCopy;
  }

  return v16;
}

void __94__MOBundleClusteringManager_setEmbeddingWeightsWithConfigurationManager_configurationManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  [a3 floatValue];
  [v5 getFloatSettingForKey:v6 withFallback:?];
  v7 = [NSNumber numberWithFloat:?];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (BOOL)_containsCompleteEmbeddingDistanceWeightKeys:(id)keys
{
  keysCopy = keys;
  v17[0] = @"embeddingDistWeight_activityContext";
  v17[1] = @"embeddingDistWeight_timeContext";
  v17[2] = @"embeddingDistWeight_locationContext";
  v17[3] = @"embeddingDistWeight_socialContext";
  v17[4] = @"embeddingDistWeight_stateOfMindContext";
  v17[5] = @"embeddingDistWeight_extraContext";
  v17[6] = @"embeddingDistWeight_topLevelActivityType";
  v17[7] = @"embeddingDistWeight_secondLevelActivityType";
  v17[8] = @"embeddingDistWeight_activityTypeFromPhotoTraits";
  v17[9] = @"embeddingDistWeight_normalizedDuration";
  v17[10] = @"embeddingDistWeight_timeOfDay";
  v17[11] = @"embeddingDistWeight_dayOfWeek";
  v17[12] = @"embeddingDistWeight_isWeekend";
  v17[13] = @"embeddingDistWeight_holiday";
  v17[14] = @"embeddingDistWeight_celebration";
  v17[15] = @"embeddingDistWeight_placeName";
  v17[16] = @"embeddingDistWeight_placeType";
  v17[17] = @"embeddingDistWeight_geoProximity";
  v17[18] = @"embeddingDistWeight_placeTypeFromPhotoTraits";
  v17[19] = @"embeddingDistWeight_contactNames";
  v17[20] = @"embeddingDistWeight_IsWithContact";
  v17[21] = @"embeddingDistWeight_isWithFamily";
  v17[22] = @"embeddingDistWeight_isWithCoworker";
  v17[23] = @"embeddingDistWeight_isWithFriend";
  v17[24] = @"embeddingDistWeight_isWithChild";
  v17[25] = @"embeddingDistWeight_isWithMyPet";
  v17[26] = @"embeddingDistWeight_SocialEventFromPhotoTraits ";
  v17[27] = @"embeddingDistWeight_stateOfMindValence";
  v17[28] = @"embeddingDistWeight_stateOfMindDomains";
  v17[29] = @"embeddingDistWeight_stateOfMindLabels";
  v17[30] = @"embeddingDistWeight_otherSubjectFromPhotoTraits";
  [NSArray arrayWithObjects:v17 count:31];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [keysCopy objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];

        if (!v9)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

void __71__MOBundleClusteringManager_getEmbeddingsFromBundles_forEmbeddingType___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __71__MOBundleClusteringManager_getEmbeddingsFromBundles_forEmbeddingType___block_invoke_cold_2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)runHDBSCANClusteringOn:(void *)a1 .cold.1(void *a1, id *a2)
{
  [a1 count];
  [*a2 minClusterSize];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __75__MOBundleClusteringManager_annotateAnomalyBundles_withEmbeddings_handler___block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)generateClusterBundleFrom:(uint64_t)a1 withEmbeddings:(uint64_t)a2 andCreationDate:excludeResourceTypes:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 138477827;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, v5, v6, "ContactName %{private}@ was picked as phenotype");
}

- (void)generateClusterBundleFrom:(uint64_t)a1 withEmbeddings:(uint64_t)a2 andCreationDate:excludeResourceTypes:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 138477827;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, v5, v6, "Could not find person object for %{private}@. Ignoring from propagating to bundle.persons");
}

- (void)generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)generateClusterBundleFrom:(void *)a1 withEmbeddings:(void *)a2 andCreationDate:excludeResourceTypes:.cold.7(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:.cold.9()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)generateClusterBundleFrom:(uint64_t)a1 withEmbeddings:(uint64_t)a2 andCreationDate:excludeResourceTypes:.cold.10(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, v5, v6, "Excluding resource of type %lu from cluster bundle");
}

- (void)generateClusterBundleFrom:(_BYTE *)a1 withEmbeddings:(_BYTE *)a2 andCreationDate:excludeResourceTypes:.cold.11(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_1_10(a1, a2);
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)generateClusterBundleFrom:(_BYTE *)a1 withEmbeddings:(_BYTE *)a2 andCreationDate:excludeResourceTypes:.cold.12(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_1_10(a1, a2);
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:.cold.15()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)generateClusterBundleFrom:(void *)a1 withEmbeddings:andCreationDate:excludeResourceTypes:.cold.16(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __107__MOBundleClusteringManager_generateClusterBundleFrom_withEmbeddings_andCreationDate_excludeResourceTypes___block_invoke_393_cold_1(void *a1, void *a2)
{
  v3 = [a1 description];
  v4 = [a2 description];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)initializeHDBSCANWithParams:(void *)a1 .cold.1(void *a1)
{
  v7 = [a1 embeddingDistanceWeights];
  [a1 minPoints];
  [a1 minClusterSize];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

+ (void)setEmbeddingWeightsWithConfigurationManager:configurationManager:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)setEmbeddingWeightsWithConfigurationManager:(void *)a1 configurationManager:.cold.2(void *a1)
{
  v1 = [a1 allKeys];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

@end