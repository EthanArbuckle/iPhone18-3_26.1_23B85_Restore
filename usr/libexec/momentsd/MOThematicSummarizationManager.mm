@interface MOThematicSummarizationManager
- (MOThematicSummarizationManager)initWithUniverse:(id)universe;
- (void)generateThematicSummarizationBundles:(id)bundles withEmbeddings:(id)embeddings handler:(id)handler;
- (void)generateThematicSummarizationBundlesForType:(unint64_t)type withEventBundles:(id)bundles andEmbeddings:(id)embeddings handler:(id)handler;
- (void)updateSuggestionIDsForNewThematicSummarizationBundles:(id)bundles withExistingThematicSummarizationBundles:(id)summarizationBundles;
@end

@implementation MOThematicSummarizationManager

- (MOThematicSummarizationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v21.receiver = self;
  v21.super_class = MOThematicSummarizationManager;
  v5 = [(MOBundleClusteringManager *)&v21 initWithUniverse:universeCopy];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  if (v5)
  {
    v9 = [[MOThematicSummarizationUtility alloc] initWithUniverse:universeCopy];
    thematicSummarizationUtility = v5->_thematicSummarizationUtility;
    v5->_thematicSummarizationUtility = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    uTF8String = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);
    queue = v5->_queue;
    v5->_queue = v15;

    objc_storeStrong(&v5->_configurationManager, v8);
    configurationManager = v5->_configurationManager;
    if (configurationManager)
    {
      LODWORD(v17) = 1061158912;
      [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:@"overlappingSubBundleProportionThresholdKey" withFallback:v17];
      v5->_overlappingSubBundleProportionThreshold = v19;
    }
  }

  return v5;
}

- (void)generateThematicSummarizationBundles:(id)bundles withEmbeddings:(id)embeddings handler:(id)handler
{
  bundlesCopy = bundles;
  embeddingsCopy = embeddings;
  handlerCopy = handler;
  v32 = objc_opt_new();
  v36 = objc_opt_new();
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__7;
  v52 = __Block_byref_object_dispose__7;
  v53 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [&off_10036DA70 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v8)
  {
    v33 = *v45;
    do
    {
      v35 = v8;
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(&off_10036DA70);
        }

        intValue = [*(*(&v44 + 1) + 8 * i) intValue];
        v11 = intValue;
        v12 = [(MOThematicSummarizationUtility *)self->_thematicSummarizationUtility thematicSummarizationStringKeyFor:intValue];
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v55 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Current thematic summary type: %@ ", buf, 0xCu);
        }

        thematicSummarizationUtility = [(MOThematicSummarizationManager *)self thematicSummarizationUtility];
        v15 = [thematicSummarizationUtility clusteringParamsFor:intValue];

        v16 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = v15;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[generateThematicSummarizationBundles] Current clustering params: %@ ", buf, 0xCu);
        }

        v17 = embeddingsCopy;
        if (intValue != 1)
        {
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = __94__MOThematicSummarizationManager_generateThematicSummarizationBundles_withEmbeddings_handler___block_invoke;
          v42[3] = &unk_100337570;
          v43 = v36;
          v18 = [NSPredicate predicateWithBlock:v42];
          v19 = [v17 filteredArrayUsingPredicate:v18];

          v17 = v19;
        }

        v20 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v55 = v36;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Current subbundleIDs=%@", buf, 0xCu);
        }

        v21 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v17 count];
          *buf = 138412546;
          v55 = v12;
          v56 = 2048;
          v57 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Eligible input count for summary type %@ =%lu", buf, 0x16u);
        }

        v23 = [v17 count];
        if (v23 <= [v15 minPoints])
        {
          v25 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [v17 count];
            minPoints = [v15 minPoints];
            *buf = 134218240;
            v55 = v26;
            v56 = 2048;
            v57 = minPoints;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Filtered embedding count (%lu) is less than required sample size (%lu). Skip thematic summary generation", buf, 0x16u);
          }
        }

        else
        {
          [(MOBundleClusteringManager *)self initializeHDBSCANWithParams:v15];
          [(MOBundleClusteringManager *)self runHDBSCANClusteringOn:v17];
          if (![(MOBundleClusteringManager *)self isClusteringResultValid])
          {
            goto LABEL_24;
          }

          v24 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Generated valid clusters. Attempting to generate thematic summary bundles", buf, 2u);
          }

          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = __94__MOThematicSummarizationManager_generateThematicSummarizationBundles_withEmbeddings_handler___block_invoke_115;
          v37[3] = &unk_100337598;
          v38 = v12;
          v41 = &v48;
          v39 = v36;
          v40 = v32;
          [(MOThematicSummarizationManager *)self generateThematicSummarizationBundlesForType:v11 withEventBundles:bundlesCopy andEmbeddings:v17 handler:v37];

          v25 = v38;
        }

LABEL_24:
      }

      v8 = [&off_10036DA70 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v8);
  }

  v28 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [v32 count];
    *buf = 134217984;
    v55 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Total thematic summary bundle count: %lu", buf, 0xCu);
  }

  [v32 enumerateObjectsUsingBlock:&__block_literal_global_8];
  handlerCopy[2](handlerCopy, v32, v49[5]);
  _Block_object_dispose(&v48, 8);
}

uint64_t __94__MOThematicSummarizationManager_generateThematicSummarizationBundles_withEmbeddings_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 timeContextEmbedding];
  v5 = [v4 objectForKeyedSubscript:@"holiday"];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 bundleIdentifier];
    v9 = [v8 UUIDString];
    v6 = [v7 containsObject:v9] ^ 1;
  }

  return v6;
}

void __94__MOThematicSummarizationManager_generateThematicSummarizationBundles_withEmbeddings_handler___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Error while generating thematic summary %@: %@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v5 count];
    v11 = *(a1 + 32);
    *buf = 134218242;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Generated %lu summary bundles for %@", buf, 0x16u);
  }

  if ([v5 count])
  {
    v29 = v6;
    v30 = v5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v33;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [*(a1 + 40) mutableCopy];
          v19 = [v17 subBundleIDs];
          v20 = [NSSet setWithArray:v19];
          [v18 intersectSet:v20];

          v21 = [v18 count];
          v22 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
          if (v21)
          {
            if (v23)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Some of subbundles in this summary bundle already exist in previously generated summary bundles. Skip the summary from saving", buf, 2u);
            }
          }

          else
          {
            if (v23)
            {
              v24 = [v17 suggestionID];
              *buf = 138412290;
              v38 = v24;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] no subbundles of the current summary bundle overlap with those of already generated thematic summary bundles. Saving the current thematic summary with suggestionID=%@", buf, 0xCu);
            }

            [*(a1 + 48) addObject:v17];
            v25 = *(a1 + 40);
            v26 = [v17 subBundleIDs];
            [v25 addObjectsFromArray:v26];

            ++v14;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v27 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 32);
      *buf = 134218242;
      v38 = v14;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Added %lu thematic summary bundles for type %@", buf, 0x16u);
    }

    v6 = v29;
    v5 = v30;
  }
}

void __94__MOThematicSummarizationManager_generateThematicSummarizationBundles_withEmbeddings_handler___block_invoke_118(id a1, MOEventBundle *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __94__MOThematicSummarizationManager_generateThematicSummarizationBundles_withEmbeddings_handler___block_invoke_118_cold_1(v4, v5);
  }
}

- (void)generateThematicSummarizationBundlesForType:(unint64_t)type withEventBundles:(id)bundles andEmbeddings:(id)embeddings handler:(id)handler
{
  bundlesCopy = bundles;
  embeddingsCopy = embeddings;
  handlerCopy = handler;
  selfCopy = self;
  v235 = [(MOThematicSummarizationUtility *)self->_thematicSummarizationUtility thematicSummarizationStringKeyFor:type];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v274 = v235;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundlesForType] summary type %@", buf, 0xCu);
  }

  getClusterLabels = [(MOBundleClusteringManager *)self getClusterLabels];
  if (![getClusterLabels count])
  {
    v227 = [NSError alloc];
    v284 = NSLocalizedDescriptionKey;
    v285 = @"Cluster labels were not generated. Unable to create thematic summary bundles";
    v228 = &v285;
    v229 = &v284;
LABEL_149:
    v230 = [NSDictionary dictionaryWithObjects:v228 forKeys:v229 count:1];
    v14 = [v227 initWithDomain:@"MOThematicSummarizationManager" code:0 userInfo:v230];

    v231 = objc_opt_new();
    v221 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v231, v14);
    goto LABEL_155;
  }

  v12 = [getClusterLabels count];
  if (v12 != [embeddingsCopy count])
  {
    v227 = [NSError alloc];
    v282 = NSLocalizedDescriptionKey;
    v283 = @"Label count and embedding count do not match. Unable to create thematic summary bundles";
    v228 = &v283;
    v229 = &v282;
    goto LABEL_149;
  }

  v13 = [NSCountedSet setWithArray:getClusterLabels];
  v238 = objc_opt_new();
  v248 = +[NSDate date];
  v269 = 0u;
  v270 = 0u;
  v271 = 0u;
  v272 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v269 objects:v281 count:16];
  if (!v15)
  {
    goto LABEL_143;
  }

  v16 = v15;
  v264 = *v270;
  v246 = v14;
  v247 = getClusterLabels;
  typeCopy = type;
  do
  {
    v17 = 0;
    v256 = v16;
    do
    {
      if (*v270 != v264)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v269 + 1) + 8 * v17);
      if (([v18 isEqualToNumber:&off_1003692C8] & 1) == 0)
      {
        v265 = v17;
        v268[0] = _NSConcreteStackBlock;
        v268[1] = 3221225472;
        v268[2] = __117__MOThematicSummarizationManager_generateThematicSummarizationBundlesForType_withEventBundles_andEmbeddings_handler___block_invoke;
        v268[3] = &unk_100337600;
        v268[4] = v18;
        v263 = [getClusterLabels indexesOfObjectsPassingTest:v268];
        v19 = [embeddingsCopy objectsAtIndexes:?];
        v20 = objc_opt_new();
        v266[0] = _NSConcreteStackBlock;
        v266[1] = 3221225472;
        v266[2] = __117__MOThematicSummarizationManager_generateThematicSummarizationBundlesForType_withEventBundles_andEmbeddings_handler___block_invoke_2;
        v266[3] = &unk_100337628;
        v21 = v20;
        v267 = v21;
        [v19 enumerateObjectsUsingBlock:v266];
        v261 = v21;
        allObjects = [v21 allObjects];
        v23 = [NSPredicate predicateWithFormat:@"bundleIdentifier in %@", allObjects];

        v260 = v23;
        v259 = [bundlesCopy filteredArrayUsingPredicate:v23];
        v262 = v19;
        v24 = [MOBundleClusteringManager generateClusterBundleFrom:selfCopy withEmbeddings:"generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:" andCreationDate:? excludeResourceTypes:?];
        [v24 setInterfaceType:16];
        [v24 setBundleSuperType:10];
        [v24 setBundleSubType:{-[MOThematicSummarizationUtility bundleSubtypeFor:](selfCopy->_thematicSummarizationUtility, "bundleSubtypeFor:", type)}];
        v25 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          bundleSubType = [v24 bundleSubType];
          clusterMetadata = [v24 clusterMetadata];
          phenotype = [clusterMetadata phenotype];
          startDate = [v24 startDate];
          endDate = [v24 endDate];
          *buf = 134218755;
          v274 = bundleSubType;
          v275 = 2113;
          v276 = phenotype;
          v277 = 2112;
          *v278 = startDate;
          *&v278[8] = 2112;
          *&v278[10] = endDate;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Evaluating current pattern summary bundle: type:%lu phenotypes=%{private}@, dateRange=%@-%@", buf, 0x2Au);
        }

        subSuggestionIDs = [v24 subSuggestionIDs];
        v32 = [subSuggestionIDs count];

        if (!v32)
        {
          v46 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          v258 = v46;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            subSuggestionIDs2 = [v24 subSuggestionIDs];
            v47 = [subSuggestionIDs2 count];
            clusterMetadata2 = [v24 clusterMetadata];
            phenotype2 = [clusterMetadata2 phenotype];
            startDate2 = [v24 startDate];
            endDate2 = [v24 endDate];
            *buf = 134218755;
            v274 = v47;
            v275 = 2113;
            v276 = phenotype2;
            v277 = 2112;
            *v278 = startDate2;
            *&v278[8] = 2112;
            *&v278[10] = endDate2;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: no subsuggestions (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);

            goto LABEL_20;
          }

LABEL_71:
          type = typeCopy;
          v17 = v265;
          goto LABEL_72;
        }

        v33 = +[NSCalendar currentCalendar];
        startDate3 = [v24 startDate];
        endDate3 = [v24 endDate];
        v258 = v33;
        if (([v33 isDate:startDate3 inSameDayAsDate:endDate3]& 1) != 0)
        {
          clusterMetadata3 = [v24 clusterMetadata];
          phenotype3 = [clusterMetadata3 phenotype];
          v38 = [phenotype3 objectForKeyedSubscript:@"holiday"];

          if (!v38)
          {
            subSuggestionIDs2 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(subSuggestionIDs2, OS_LOG_TYPE_INFO))
            {
              subSuggestionIDs3 = [v24 subSuggestionIDs];
              v41 = [subSuggestionIDs3 count];
              clusterMetadata4 = [v24 clusterMetadata];
              phenotype4 = [clusterMetadata4 phenotype];
              startDate4 = [v24 startDate];
              endDate4 = [v24 endDate];
              *buf = 134218755;
              v274 = v41;
              v275 = 2113;
              v276 = phenotype4;
              v277 = 2112;
              *v278 = startDate4;
              *&v278[8] = 2112;
              *&v278[10] = endDate4;
              _os_log_impl(&_mh_execute_header, subSuggestionIDs2, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle:start and end dates are on the same date and it was not holiday summary (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);
            }

LABEL_20:

            goto LABEL_71;
          }
        }

        else
        {
        }

        clusterMetadata5 = [v24 clusterMetadata];
        phenotype5 = [clusterMetadata5 phenotype];
        v54 = [phenotype5 objectForKeyedSubscript:@"topLevelActivityType"];
        if (v54)
        {
          v249 = 1;
        }

        else
        {
          clusterMetadata6 = [v24 clusterMetadata];
          phenotype6 = [clusterMetadata6 phenotype];
          v57 = [phenotype6 objectForKeyedSubscript:@"secondLevelActivityType"];
          if (v57)
          {
            v249 = 1;
          }

          else
          {
            clusterMetadata7 = [v24 clusterMetadata];
            phenotype7 = [clusterMetadata7 phenotype];
            v60 = [phenotype7 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
            v249 = v60 != 0;
          }
        }

        clusterMetadata8 = [v24 clusterMetadata];
        phenotype8 = [clusterMetadata8 phenotype];
        v63 = [phenotype8 objectForKeyedSubscript:@"placeName"];
        if (v63)
        {
          v252 = 1;
        }

        else
        {
          clusterMetadata9 = [v24 clusterMetadata];
          phenotype9 = [clusterMetadata9 phenotype];
          v66 = [phenotype9 objectForKeyedSubscript:@"combinedPlaceType"];
          if (v66)
          {
            v252 = 1;
          }

          else
          {
            clusterMetadata10 = [v24 clusterMetadata];
            phenotype10 = [clusterMetadata10 phenotype];
            v68 = [phenotype10 objectForKeyedSubscript:@"enclosingAreaName"];
            if (v68)
            {
              v252 = 1;
            }

            else
            {
              clusterMetadata11 = [v24 clusterMetadata];
              phenotype11 = [clusterMetadata11 phenotype];
              v69 = [phenotype11 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
              v252 = v69 != 0;
            }
          }
        }

        clusterMetadata12 = [v24 clusterMetadata];
        phenotype12 = [clusterMetadata12 phenotype];
        v72 = [phenotype12 objectForKeyedSubscript:@"placeName"];
        if (v72)
        {
          v245 = 0;
        }

        else
        {
          clusterMetadata13 = [v24 clusterMetadata];
          phenotype13 = [clusterMetadata13 phenotype];
          v75 = [phenotype13 objectForKeyedSubscript:@"combinedPlaceType"];
          if (v75)
          {
            v245 = 0;
          }

          else
          {
            clusterMetadata14 = [v24 clusterMetadata];
            phenotype14 = [clusterMetadata14 phenotype];
            v78 = [phenotype14 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
            v245 = v78 == 0;
          }
        }

        clusterMetadata15 = [v24 clusterMetadata];
        phenotype15 = [clusterMetadata15 phenotype];
        v81 = [phenotype15 objectForKeyedSubscript:@"persons"];
        if (v81)
        {
          v82 = 1;
        }

        else
        {
          clusterMetadata16 = [v24 clusterMetadata];
          phenotype16 = [clusterMetadata16 phenotype];
          v85 = [phenotype16 objectForKeyedSubscript:@"withChild"];
          if (v85)
          {
            v86 = 1;
          }

          else
          {
            clusterMetadata17 = [v24 clusterMetadata];
            phenotype17 = [clusterMetadata17 phenotype];
            v87 = [phenotype17 objectForKeyedSubscript:@"withMyPet"];
            if (v87)
            {
              v86 = 1;
            }

            else
            {
              clusterMetadata18 = [v24 clusterMetadata];
              phenotype18 = [clusterMetadata18 phenotype];
              v88 = [phenotype18 objectForKeyedSubscript:@"withFamily"];
              if (v88)
              {
                v86 = 1;
              }

              else
              {
                clusterMetadata19 = [v24 clusterMetadata];
                phenotype19 = [clusterMetadata19 phenotype];
                v89 = [phenotype19 objectForKeyedSubscript:@"withCoworker"];
                v86 = v89 != 0;

                v88 = 0;
              }
            }
          }

          v82 = v86;
        }

        clusterMetadata20 = [v24 clusterMetadata];
        phenotype20 = [clusterMetadata20 phenotype];
        v92 = [phenotype20 objectForKeyedSubscript:@"holiday"];
        if (v92)
        {
          v93 = 1;
        }

        else
        {
          clusterMetadata21 = [v24 clusterMetadata];
          phenotype21 = [clusterMetadata21 phenotype];
          v96 = [phenotype21 objectForKeyedSubscript:@"celebration"];
          v93 = v96 != 0;
        }

        clusterMetadata22 = [v24 clusterMetadata];
        phenotype22 = [clusterMetadata22 phenotype];
        v99 = [phenotype22 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

        if ((((v249 || v252) | v82) & 1) == 0 && !v93 && !v99)
        {
          v100 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
          {
            subSuggestionIDs4 = [v24 subSuggestionIDs];
            v102 = [subSuggestionIDs4 count];
            clusterMetadata23 = [v24 clusterMetadata];
            phenotype23 = [clusterMetadata23 phenotype];
            startDate5 = [v24 startDate];
            endDate5 = [v24 endDate];
            *buf = 134218755;
            v274 = v102;
            v275 = 2113;
            v276 = phenotype23;
            v277 = 2112;
            *v278 = startDate5;
            *&v278[8] = 2112;
            *&v278[10] = endDate5;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: Summarized by only time context but nothing else. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);
          }

          goto LABEL_70;
        }

        clusterMetadata24 = [v24 clusterMetadata];
        phenotype24 = [clusterMetadata24 phenotype];
        v109 = [phenotype24 objectForKeyedSubscript:@"combinedPlaceType"];

        if (v109)
        {
          clusterMetadata25 = [v24 clusterMetadata];
          phenotype25 = [clusterMetadata25 phenotype];
          clusterMetadata27 = [phenotype25 objectForKeyedSubscript:@"combinedPlaceType"];

          lowercaseString = [clusterMetadata27 lowercaseString];
          LODWORD(phenotype25) = [lowercaseString isEqualToString:@"work"];

          if (phenotype25)
          {
            v114 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
            {
              subSuggestionIDs5 = [v24 subSuggestionIDs];
              v116 = [subSuggestionIDs5 count];
              clusterMetadata26 = [v24 clusterMetadata];
              phenotype26 = [clusterMetadata26 phenotype];
              startDate6 = [v24 startDate];
              endDate6 = [v24 endDate];
              *buf = 134218755;
              v274 = v116;
              v275 = 2113;
              v276 = phenotype26;
              v277 = 2112;
              *v278 = startDate6;
              *&v278[8] = 2112;
              *&v278[10] = endDate6;
              v121 = v114;
              v122 = "Skipping current pattern summary bundle: summarized by work location. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
              goto LABEL_68;
            }

            goto LABEL_69;
          }
        }

        clusterMetadata27 = [v24 clusterMetadata];
        phenotype27 = [clusterMetadata27 phenotype];
        v126 = [phenotype27 objectForKeyedSubscript:@"combinedPlaceType"];
        v243 = v82;
        if (!v126)
        {
LABEL_80:

          goto LABEL_81;
        }

        v127 = v126;
        clusterMetadata28 = [v24 clusterMetadata];
        phenotype28 = [clusterMetadata28 phenotype];
        v130 = [phenotype28 objectForKeyedSubscript:@"placeName"];

        if (!v130)
        {
          clusterMetadata29 = [v24 clusterMetadata];
          phenotype29 = [clusterMetadata29 phenotype];
          clusterMetadata27 = [phenotype29 objectForKeyedSubscript:@"combinedPlaceType"];

          phenotype27 = +[MOThematicSummarizationUtility userPlaceTypeStringEligibleForThematicSummary];
          if ([phenotype27 containsObject:clusterMetadata27])
          {
            goto LABEL_80;
          }

          v166 = +[MOThematicSummarizationUtility POICategoriesEligibleForThematicSummary];
          v167 = [v166 containsObject:clusterMetadata27];

          if ((v167 & 1) == 0)
          {
            v114 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
            {
              subSuggestionIDs5 = [v24 subSuggestionIDs];
              v168 = [subSuggestionIDs5 count];
              clusterMetadata26 = [v24 clusterMetadata];
              phenotype26 = [clusterMetadata26 phenotype];
              startDate6 = [v24 startDate];
              endDate6 = [v24 endDate];
              *buf = 134218755;
              v274 = v168;
              v275 = 2113;
              v276 = phenotype26;
              v277 = 2112;
              *v278 = startDate6;
              *&v278[8] = 2112;
              *&v278[10] = endDate6;
              v121 = v114;
              v122 = "Skipping current pattern summary bundle: Contains unsupported POI phenotype with no placeName phenotype. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
LABEL_68:
              _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, v122, buf, 0x2Au);
            }

LABEL_69:

LABEL_70:
            v14 = v246;
            getClusterLabels = v247;
            goto LABEL_71;
          }

LABEL_81:
        }

        clusterMetadata30 = [v24 clusterMetadata];
        phenotype30 = [clusterMetadata30 phenotype];
        v135 = [phenotype30 objectForKeyedSubscript:@"secondLevelActivityType"];

        clusterMetadata31 = [v24 clusterMetadata];
        phenotype31 = [clusterMetadata31 phenotype];
        v138 = phenotype31;
        if (v135)
        {
          v139 = [phenotype31 objectForKeyedSubscript:@"secondLevelActivityType"];

          v140 = +[MOThematicSummarizationUtility HKWorkoutActivityTypesNotEligibleForThematicSummary];
          v141 = [v140 containsObject:v139];

          if (v141)
          {
            v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              subSuggestionIDs6 = [v24 subSuggestionIDs];
              v144 = [subSuggestionIDs6 count];
              clusterMetadata32 = [v24 clusterMetadata];
              phenotype32 = [clusterMetadata32 phenotype];
              startDate7 = [v24 startDate];
              [v24 endDate];
              v149 = v148 = v139;
              *buf = 134218755;
              v274 = v144;
              v275 = 2113;
              v276 = phenotype32;
              v277 = 2112;
              *v278 = startDate7;
              *&v278[8] = 2112;
              *&v278[10] = v149;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: Contains unsupported HK type phenotype. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);

              v139 = v148;
            }

            v14 = v246;
            getClusterLabels = v247;
LABEL_87:
            type = typeCopy;
            v17 = v265;
LABEL_96:
            v124 = v261;

            v123 = v263;
LABEL_73:

            v16 = v256;
            goto LABEL_74;
          }

          v17 = v265;
          if ([v139 isEqualToString:@"flight"])
          {
            v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              subSuggestionIDs7 = [v24 subSuggestionIDs];
              v158 = [subSuggestionIDs7 count];
              clusterMetadata33 = [v24 clusterMetadata];
              phenotype33 = [clusterMetadata33 phenotype];
              startDate8 = [v24 startDate];
              [v24 endDate];
              v163 = v162 = v139;
              *buf = 134218755;
              v274 = v158;
              v275 = 2113;
              v276 = phenotype33;
              v277 = 2112;
              *v278 = startDate8;
              *&v278[8] = 2112;
              *&v278[10] = v163;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: Summary with flight action phenotype. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);

              v139 = v162;
              v17 = v265;
            }

            v14 = v246;
            getClusterLabels = v247;
            type = typeCopy;
            goto LABEL_96;
          }

          lowercaseString2 = [v139 lowercaseString];
          lowercaseString3 = [@"visit" lowercaseString];
          if (![lowercaseString2 isEqualToString:lowercaseString3])
          {
            goto LABEL_101;
          }

          clusterMetadata34 = [v24 clusterMetadata];
          phenotype34 = [clusterMetadata34 phenotype];
          v165 = [phenotype34 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
          if ((v165 != 0) | v243 & 1)
          {

LABEL_100:
            v17 = v265;
LABEL_101:

LABEL_112:
LABEL_113:
            type = typeCopy;
            if (typeCopy == 1)
            {
              clusterMetadata35 = [v24 clusterMetadata];
              phenotype35 = [clusterMetadata35 phenotype];
              v202 = [phenotype35 objectForKeyedSubscript:@"holiday"];
              v14 = v246;
              getClusterLabels = v247;
              if (v202)
              {

                v17 = v265;
                goto LABEL_125;
              }

              clusterMetadata36 = [v24 clusterMetadata];
              phenotype36 = [clusterMetadata36 phenotype];
              v205 = [phenotype36 objectForKeyedSubscript:@"celebration"];

              v17 = v265;
              if (v205)
              {
LABEL_125:
                v206 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
                {
                  subBundleIDs = [v24 subBundleIDs];
                  v207 = [subBundleIDs count];
                  clusterMetadata37 = [v24 clusterMetadata];
                  isFiltered = [clusterMetadata37 isFiltered];
                  clusterMetadata38 = [v24 clusterMetadata];
                  phenotype37 = [clusterMetadata38 phenotype];
                  startDate9 = [v24 startDate];
                  endDate7 = [v24 endDate];
                  *buf = 138413571;
                  v274 = v18;
                  v275 = 2048;
                  v276 = v207;
                  v277 = 1024;
                  *v278 = isFiltered;
                  *&v278[4] = 2113;
                  *&v278[6] = phenotype37;
                  *&v278[14] = 2112;
                  *&v278[16] = startDate9;
                  v279 = 2112;
                  v280 = endDate7;
                  _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_INFO, "Created a thematic bundle: LabelNo=%@,bundleCount=%lu,isFiltered=%d,phenotypes=%{private}@, dateRange=%@-%@", buf, 0x3Au);

                  v17 = v265;
                  v14 = v246;

                  getClusterLabels = v247;
                }

                [v238 addObject:v24];
              }

              else
              {
                v184 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                {
                  subSuggestionIDs8 = [v24 subSuggestionIDs];
                  v218 = [subSuggestionIDs8 count];
                  clusterMetadata39 = [v24 clusterMetadata];
                  phenotype38 = [clusterMetadata39 phenotype];
                  startDate10 = [v24 startDate];
                  endDate8 = [v24 endDate];
                  *buf = 134218755;
                  v274 = v218;
                  v275 = 2113;
                  v276 = phenotype38;
                  v277 = 2112;
                  *v278 = startDate10;
                  *&v278[8] = 2112;
                  *&v278[10] = endDate8;
                  v191 = v184;
                  v192 = "Skipped the current holiday summary bundle: holiday/celebration thematic summary should have holiday/celebration phenotype (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
LABEL_135:
                  _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_INFO, v192, buf, 0x2Au);

                  v17 = v265;
                }

LABEL_136:
              }

              type = typeCopy;
            }

            else
            {
              v14 = v246;
              getClusterLabels = v247;
              if (typeCopy != 6)
              {
                if (typeCopy == 5)
                {
                  clusterMetadata40 = [v24 clusterMetadata];
                  phenotype39 = [clusterMetadata40 phenotype];
                  v183 = [phenotype39 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

                  v17 = v265;
                  if (!v183)
                  {
                    v184 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                    if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                    {
                      subSuggestionIDs8 = [v24 subSuggestionIDs];
                      v186 = [subSuggestionIDs8 count];
                      clusterMetadata39 = [v24 clusterMetadata];
                      phenotype38 = [clusterMetadata39 phenotype];
                      startDate10 = [v24 startDate];
                      endDate8 = [v24 endDate];
                      *buf = 134218755;
                      v274 = v186;
                      v275 = 2113;
                      v276 = phenotype38;
                      v277 = 2112;
                      *v278 = startDate10;
                      *&v278[8] = 2112;
                      *&v278[10] = endDate8;
                      v191 = v184;
                      v192 = "Skipped the current photo subject summary bundle: notable photo trait thematic summary should have photo trait phenotype (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
                      goto LABEL_135;
                    }

                    goto LABEL_136;
                  }
                }

                goto LABEL_125;
              }

              v193 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
              if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
              {
                subSuggestionIDs9 = [v24 subSuggestionIDs];
                v195 = [subSuggestionIDs9 count];
                clusterMetadata41 = [v24 clusterMetadata];
                phenotype40 = [clusterMetadata41 phenotype];
                startDate11 = [v24 startDate];
                endDate9 = [v24 endDate];
                *buf = 134218755;
                v274 = v195;
                type = 6;
                v275 = 2113;
                v276 = phenotype40;
                v277 = 2112;
                *v278 = startDate11;
                *&v278[8] = 2112;
                *&v278[10] = endDate9;
                _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_INFO, "State of mind summary is not supported yet. Skipping bundle generation (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);

                v17 = v265;
              }
            }

LABEL_72:
            v123 = v263;
            v124 = v261;
            goto LABEL_73;
          }

          if (v99 != 0 || v93)
          {
LABEL_111:
            v17 = v265;
            goto LABEL_112;
          }

          if (v252)
          {
            clusterMetadata42 = [v24 clusterMetadata];
            phenotype41 = [clusterMetadata42 phenotype];
            v216 = [phenotype41 objectForKeyedSubscript:@"enclosingAreaName"];
            v217 = v216 != 0 && v245;

            if (v217 != 1)
            {
              goto LABEL_111;
            }

            v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            v14 = v246;
            getClusterLabels = v247;
            if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              goto LABEL_87;
            }

            goto LABEL_109;
          }

          v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          v14 = v246;
          getClusterLabels = v247;
          if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
          {
            goto LABEL_87;
          }

LABEL_140:
          subSuggestionIDs10 = [v24 subSuggestionIDs];
          v219 = [subSuggestionIDs10 count];
          clusterMetadata43 = [v24 clusterMetadata];
          phenotype42 = [clusterMetadata43 phenotype];
          startDate12 = [v24 startDate];
          [v24 endDate];
          v178 = v177 = v139;
          *buf = 134218755;
          v274 = v219;
          v275 = 2113;
          v276 = phenotype42;
          v277 = 2112;
          *v278 = startDate12;
          *&v278[8] = 2112;
          *&v278[10] = v178;
          v179 = v142;
          v180 = "Skipping current pattern summary bundle: visit summary with no location/social/photo/holiday context. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
        }

        else
        {
          v150 = [phenotype31 objectForKeyedSubscript:@"topLevelActivityType"];

          v17 = v265;
          if (!v150)
          {
            goto LABEL_113;
          }

          clusterMetadata44 = [v24 clusterMetadata];
          phenotype43 = [clusterMetadata44 phenotype];
          v139 = [phenotype43 objectForKeyedSubscript:@"topLevelActivityType"];

          if (![v139 isEqualToString:@"outing"])
          {
            goto LABEL_111;
          }

          lowercaseString2 = [v24 clusterMetadata];
          lowercaseString3 = [lowercaseString2 phenotype];
          v155 = [lowercaseString3 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
          if ((v155 != 0) | v243 & 1)
          {
            clusterMetadata34 = v155;
            goto LABEL_100;
          }

          if (v99 != 0 || v93)
          {
            goto LABEL_111;
          }

          v14 = v246;
          getClusterLabels = v247;
          if (!v252)
          {
            v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              goto LABEL_87;
            }

            goto LABEL_140;
          }

          clusterMetadata45 = [v24 clusterMetadata];
          phenotype44 = [clusterMetadata45 phenotype];
          v171 = [phenotype44 objectForKeyedSubscript:@"enclosingAreaName"];
          v172 = v171 != 0 && v245;

          if (v172 != 1)
          {
            goto LABEL_111;
          }

          v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
          {
            goto LABEL_87;
          }

LABEL_109:
          subSuggestionIDs10 = [v24 subSuggestionIDs];
          v173 = [subSuggestionIDs10 count];
          clusterMetadata43 = [v24 clusterMetadata];
          phenotype42 = [clusterMetadata43 phenotype];
          startDate12 = [v24 startDate];
          [v24 endDate];
          v178 = v177 = v139;
          *buf = 134218755;
          v274 = v173;
          v275 = 2113;
          v276 = phenotype42;
          v277 = 2112;
          *v278 = startDate12;
          *&v278[8] = 2112;
          *&v278[10] = v178;
          v179 = v142;
          v180 = "Skipping current pattern summary bundle: visit summary grouped by city with no social/photo/holiday context. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
        }

        _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_INFO, v180, buf, 0x2Au);

        v139 = v177;
        goto LABEL_87;
      }

LABEL_74:
      v17 = v17 + 1;
    }

    while (v16 != v17);
    v220 = [v14 countByEnumeratingWithState:&v269 objects:v281 count:16];
    v16 = v220;
  }

  while (v220);
LABEL_143:

  v221 = handlerCopy;
  if (handlerCopy)
  {
    v222 = [v238 count];
    v223 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
    v224 = os_log_type_enabled(v223, OS_LOG_TYPE_INFO);
    if (v222)
    {
      v225 = v238;
      if (v224)
      {
        v226 = [v238 count];
        *buf = 134217984;
        v274 = v226;
        _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_INFO, "Cluster bundle generation completed. cluster bundle count=%lu", buf, 0xCu);
        v225 = v238;
      }
    }

    else
    {
      if (v224)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_INFO, "No cluster bundles are available", buf, 2u);
      }

      v225 = 0;
    }

    v221 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v225, 0);
  }

  v231 = v238;
LABEL_155:
}

void __117__MOThematicSummarizationManager_generateThematicSummarizationBundlesForType_withEventBundles_andEmbeddings_handler___block_invoke_2(uint64_t a1, void *a2)
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

- (void)updateSuggestionIDsForNewThematicSummarizationBundles:(id)bundles withExistingThematicSummarizationBundles:(id)summarizationBundles
{
  bundlesCopy = bundles;
  summarizationBundlesCopy = summarizationBundles;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v86 = [bundlesCopy count];
    v87 = 2048;
    v88 = [summarizationBundlesCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "updateSuggestionIDsForNewThematicSummarizationBundles. new summary count=%lu, existing summary count=%lu", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = bundlesCopy;
  v67 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
  if (v67)
  {
    v65 = *v82;
    *&v8 = 138478851;
    v57 = v8;
    do
    {
      v9 = 0;
      do
      {
        if (*v82 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v68 = v9;
        v10 = *(*(&v81 + 1) + 8 * v9);
        v11 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          suggestionID = [v10 suggestionID];
          clusterMetadata = [v10 clusterMetadata];
          phenotype = [clusterMetadata phenotype];
          subBundleIDs = [v10 subBundleIDs];
          v16 = [subBundleIDs count];
          *buf = 138412803;
          v86 = suggestionID;
          v87 = 2113;
          v88 = phenotype;
          v89 = 2048;
          v90 = v16;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Searching for matching summary bundle from the DB for the current summary: suggestionID=%@, phenotype=%{private}@, subSuggestionIDCount=%lu", buf, 0x20u);
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = summarizationBundlesCopy;
        v17 = [v76 countByEnumeratingWithState:&v77 objects:v95 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v78;
          v70 = *v78;
          while (2)
          {
            v20 = 0;
            log = v18;
            do
            {
              if (*v78 != v19)
              {
                objc_enumerationMutation(v76);
              }

              v21 = *(*(&v77 + 1) + 8 * v20);
              suggestionID2 = [v21 suggestionID];
              uUIDString = [suggestionID2 UUIDString];
              v24 = [v7 containsObject:uUIDString];

              if (v24)
              {
                v25 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  suggestionID3 = [v21 suggestionID];
                  uUIDString2 = [suggestionID3 UUIDString];
                  *buf = 138412290;
                  v86 = uUIDString2;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Current suggestionID (%@) was already transferred to another newly created summary.", buf, 0xCu);
                }
              }

              else
              {
                v28 = v10;
                subBundleIDs2 = [v10 subBundleIDs];
                v25 = [NSSet setWithArray:subBundleIDs2];

                subBundleIDs3 = [v21 subBundleIDs];
                v31 = [NSSet setWithArray:subBundleIDs3];

                v32 = [v25 mutableCopy];
                [v32 intersectSet:v31];
                v33 = 0.0;
                v34 = 0.0;
                if ([v25 count])
                {
                  v35 = [v32 count];
                  v34 = v35 / [v25 count];
                }

                v36 = v7;
                if ([v31 count])
                {
                  v37 = [v32 count];
                  v33 = v37 / [v31 count];
                }

                v38 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  v44 = [v25 count];
                  v45 = [v31 count];
                  v46 = [v32 count];
                  *buf = 134219008;
                  v86 = v44;
                  v87 = 2048;
                  v88 = v45;
                  v89 = 2048;
                  v90 = v46;
                  v91 = 2048;
                  v92 = v34;
                  v93 = 2048;
                  v94 = v33;
                  _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "NewSubSuggestionIDCount=%lu,ExistingSubSuggestionIDCount=%lu, overlappingSubSuggestionIDCount=%lu, overlappingSubBundleProportionFromNew=%.3f,overlappingSubBundleProportionFromExisting=%.3f ", buf, 0x34u);
                }

                clusterMetadata2 = [v28 clusterMetadata];
                phenotype2 = [clusterMetadata2 phenotype];

                clusterMetadata3 = [v21 clusterMetadata];
                phenotype3 = [clusterMetadata3 phenotype];

                if ([phenotype2 isEqualToDictionary:phenotype3] && objc_msgSend(v32, "count"))
                {
                  v47 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    clusterMetadata4 = [v21 clusterMetadata];
                    logb = [clusterMetadata4 phenotype];
                    v61 = [v31 count];
                    v59 = [v32 count];
                    v64 = v28;
                    [v28 suggestionID];
                    v52 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    [v21 suggestionID];
                    v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = v57;
                    v86 = logb;
                    v87 = 2048;
                    v88 = v61;
                    v89 = 2048;
                    v90 = v59;
                    v91 = 2112;
                    v92 = v52;
                    v93 = 2112;
                    v94 = v53;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Matching summary bundle was found in DB\nexisting bundle phenotypes=%{private}@. totalSubSugggestionIDCount=%lu, overlappingSubSuggestionIDCount=%lu\nUpdate suggestionID from %@ to %@", buf, 0x34u);

                    v7 = v36;
                    v51 = v64;
                    goto LABEL_40;
                  }

                  v7 = v36;
LABEL_39:
                  v51 = v28;
                  goto LABEL_40;
                }

                if (v34 >= v33)
                {
                  v43 = v33;
                }

                else
                {
                  v43 = v34;
                }

                v7 = v36;
                if (v43 > self->_overlappingSubBundleProportionThreshold)
                {
                  v47 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    clusterMetadata5 = [v21 clusterMetadata];
                    [clusterMetadata5 phenotype];
                    v48 = loga = v47;
                    v60 = [v31 count];
                    v58 = [v32 count];
                    v63 = v28;
                    [v28 suggestionID];
                    v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    [v21 suggestionID];
                    v50 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = v57;
                    v86 = v48;
                    v87 = 2048;
                    v88 = v60;
                    v89 = 2048;
                    v90 = v58;
                    v91 = 2112;
                    v92 = v49;
                    v93 = 2112;
                    v94 = v50;
                    _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "Matching summary bundle was found in DB\nexisting bundle phenotypes=%{private}@. totalSubSugggestionIDCount=%lu, overlappingSubSuggestionIDCount=%lu\nUpdate suggestionID from %@ to %@", buf, 0x34u);

                    v7 = v36;
                    v51 = v63;

                    v47 = loga;
LABEL_40:

                    suggestionID4 = [v21 suggestionID];
                    [v51 setSuggestionID:suggestionID4];

                    suggestionID5 = [v21 suggestionID];
                    uUIDString3 = [suggestionID5 UUIDString];
                    [v7 addObject:uUIDString3];

                    goto LABEL_41;
                  }

                  goto LABEL_39;
                }

                v10 = v28;
                v19 = v70;
                v18 = log;
              }

              v20 = (v20 + 1);
            }

            while (v18 != v20);
            v18 = [v76 countByEnumeratingWithState:&v77 objects:v95 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_41:

        v9 = v68 + 1;
      }

      while ((v68 + 1) != v67);
      v67 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
    }

    while (v67);
  }
}

void __94__MOThematicSummarizationManager_generateThematicSummarizationBundles_withEmbeddings_handler___block_invoke_118_cold_1(void *a1, NSObject *a2)
{
  v4 = [a1 bundleSubType];
  v5 = [a1 subBundleIDs];
  v6 = [v5 count];
  v7 = [a1 clusterMetadata];
  v8 = [v7 phenotype];
  v9 = 134218499;
  v10 = v4;
  v11 = 2048;
  v12 = v6;
  v13 = 2113;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[generateThematicSummarizationBundles] bundle subtype=%lu, subbundlecount=%lu, phenotypes=%{private}@", &v9, 0x20u);
}

@end