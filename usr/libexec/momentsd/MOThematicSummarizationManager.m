@interface MOThematicSummarizationManager
- (MOThematicSummarizationManager)initWithUniverse:(id)a3;
- (void)generateThematicSummarizationBundles:(id)a3 withEmbeddings:(id)a4 handler:(id)a5;
- (void)generateThematicSummarizationBundlesForType:(unint64_t)a3 withEventBundles:(id)a4 andEmbeddings:(id)a5 handler:(id)a6;
- (void)updateSuggestionIDsForNewThematicSummarizationBundles:(id)a3 withExistingThematicSummarizationBundles:(id)a4;
@end

@implementation MOThematicSummarizationManager

- (MOThematicSummarizationManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MOThematicSummarizationManager;
  v5 = [(MOBundleClusteringManager *)&v21 initWithUniverse:v4];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 getService:v7];

  if (v5)
  {
    v9 = [[MOThematicSummarizationUtility alloc] initWithUniverse:v4];
    thematicSummarizationUtility = v5->_thematicSummarizationUtility;
    v5->_thematicSummarizationUtility = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
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

- (void)generateThematicSummarizationBundles:(id)a3 withEmbeddings:(id)a4 handler:(id)a5
{
  v31 = a3;
  v34 = a4;
  v30 = a5;
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

        v10 = [*(*(&v44 + 1) + 8 * i) intValue];
        v11 = v10;
        v12 = [(MOThematicSummarizationUtility *)self->_thematicSummarizationUtility thematicSummarizationStringKeyFor:v10];
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v55 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundles] Current thematic summary type: %@ ", buf, 0xCu);
        }

        v14 = [(MOThematicSummarizationManager *)self thematicSummarizationUtility];
        v15 = [v14 clusteringParamsFor:v10];

        v16 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = v15;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[generateThematicSummarizationBundles] Current clustering params: %@ ", buf, 0xCu);
        }

        v17 = v34;
        if (v10 != 1)
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
            v27 = [v15 minPoints];
            *buf = 134218240;
            v55 = v26;
            v56 = 2048;
            v57 = v27;
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
          [(MOThematicSummarizationManager *)self generateThematicSummarizationBundlesForType:v11 withEventBundles:v31 andEmbeddings:v17 handler:v37];

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
  v30[2](v30, v32, v49[5]);
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

- (void)generateThematicSummarizationBundlesForType:(unint64_t)a3 withEventBundles:(id)a4 andEmbeddings:(id)a5 handler:(id)a6
{
  v251 = a4;
  v255 = a5;
  v234 = a6;
  v250 = self;
  v235 = [(MOThematicSummarizationUtility *)self->_thematicSummarizationUtility thematicSummarizationStringKeyFor:a3];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v274 = v235;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[generateThematicSummarizationBundlesForType] summary type %@", buf, 0xCu);
  }

  v11 = [(MOBundleClusteringManager *)self getClusterLabels];
  if (![v11 count])
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
    v221 = v234;
    (*(v234 + 2))(v234, v231, v14);
    goto LABEL_155;
  }

  v12 = [v11 count];
  if (v12 != [v255 count])
  {
    v227 = [NSError alloc];
    v282 = NSLocalizedDescriptionKey;
    v283 = @"Label count and embedding count do not match. Unable to create thematic summary bundles";
    v228 = &v283;
    v229 = &v282;
    goto LABEL_149;
  }

  v13 = [NSCountedSet setWithArray:v11];
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
  v247 = v11;
  v257 = a3;
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
        v263 = [v11 indexesOfObjectsPassingTest:v268];
        v19 = [v255 objectsAtIndexes:?];
        v20 = objc_opt_new();
        v266[0] = _NSConcreteStackBlock;
        v266[1] = 3221225472;
        v266[2] = __117__MOThematicSummarizationManager_generateThematicSummarizationBundlesForType_withEventBundles_andEmbeddings_handler___block_invoke_2;
        v266[3] = &unk_100337628;
        v21 = v20;
        v267 = v21;
        [v19 enumerateObjectsUsingBlock:v266];
        v261 = v21;
        v22 = [v21 allObjects];
        v23 = [NSPredicate predicateWithFormat:@"bundleIdentifier in %@", v22];

        v260 = v23;
        v259 = [v251 filteredArrayUsingPredicate:v23];
        v262 = v19;
        v24 = [MOBundleClusteringManager generateClusterBundleFrom:v250 withEmbeddings:"generateClusterBundleFrom:withEmbeddings:andCreationDate:excludeResourceTypes:" andCreationDate:? excludeResourceTypes:?];
        [v24 setInterfaceType:16];
        [v24 setBundleSuperType:10];
        [v24 setBundleSubType:{-[MOThematicSummarizationUtility bundleSubtypeFor:](v250->_thematicSummarizationUtility, "bundleSubtypeFor:", a3)}];
        v25 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v24 bundleSubType];
          v27 = [v24 clusterMetadata];
          v28 = [v27 phenotype];
          v29 = [v24 startDate];
          v30 = [v24 endDate];
          *buf = 134218755;
          v274 = v26;
          v275 = 2113;
          v276 = v28;
          v277 = 2112;
          *v278 = v29;
          *&v278[8] = 2112;
          *&v278[10] = v30;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Evaluating current pattern summary bundle: type:%lu phenotypes=%{private}@, dateRange=%@-%@", buf, 0x2Au);
        }

        v31 = [v24 subSuggestionIDs];
        v32 = [v31 count];

        if (!v32)
        {
          v46 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          v258 = v46;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v39 = [v24 subSuggestionIDs];
            v47 = [v39 count];
            v48 = [v24 clusterMetadata];
            v49 = [v48 phenotype];
            v50 = [v24 startDate];
            v51 = [v24 endDate];
            *buf = 134218755;
            v274 = v47;
            v275 = 2113;
            v276 = v49;
            v277 = 2112;
            *v278 = v50;
            *&v278[8] = 2112;
            *&v278[10] = v51;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: no subsuggestions (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);

            goto LABEL_20;
          }

LABEL_71:
          a3 = v257;
          v17 = v265;
          goto LABEL_72;
        }

        v33 = +[NSCalendar currentCalendar];
        v34 = [v24 startDate];
        v35 = [v24 endDate];
        v258 = v33;
        if (([v33 isDate:v34 inSameDayAsDate:v35]& 1) != 0)
        {
          v36 = [v24 clusterMetadata];
          v37 = [v36 phenotype];
          v38 = [v37 objectForKeyedSubscript:@"holiday"];

          if (!v38)
          {
            v39 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = [v24 subSuggestionIDs];
              v41 = [v40 count];
              v42 = [v24 clusterMetadata];
              v43 = [v42 phenotype];
              v44 = [v24 startDate];
              v45 = [v24 endDate];
              *buf = 134218755;
              v274 = v41;
              v275 = 2113;
              v276 = v43;
              v277 = 2112;
              *v278 = v44;
              *&v278[8] = 2112;
              *&v278[10] = v45;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle:start and end dates are on the same date and it was not holiday summary (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);
            }

LABEL_20:

            goto LABEL_71;
          }
        }

        else
        {
        }

        v52 = [v24 clusterMetadata];
        v53 = [v52 phenotype];
        v54 = [v53 objectForKeyedSubscript:@"topLevelActivityType"];
        if (v54)
        {
          v249 = 1;
        }

        else
        {
          v55 = [v24 clusterMetadata];
          v56 = [v55 phenotype];
          v57 = [v56 objectForKeyedSubscript:@"secondLevelActivityType"];
          if (v57)
          {
            v249 = 1;
          }

          else
          {
            v58 = [v24 clusterMetadata];
            v59 = [v58 phenotype];
            v60 = [v59 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
            v249 = v60 != 0;
          }
        }

        v61 = [v24 clusterMetadata];
        v62 = [v61 phenotype];
        v63 = [v62 objectForKeyedSubscript:@"placeName"];
        if (v63)
        {
          v252 = 1;
        }

        else
        {
          v64 = [v24 clusterMetadata];
          v65 = [v64 phenotype];
          v66 = [v65 objectForKeyedSubscript:@"combinedPlaceType"];
          if (v66)
          {
            v252 = 1;
          }

          else
          {
            v244 = [v24 clusterMetadata];
            v67 = [v244 phenotype];
            v68 = [v67 objectForKeyedSubscript:@"enclosingAreaName"];
            if (v68)
            {
              v252 = 1;
            }

            else
            {
              v241 = [v24 clusterMetadata];
              v239 = [v241 phenotype];
              v69 = [v239 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
              v252 = v69 != 0;
            }
          }
        }

        v70 = [v24 clusterMetadata];
        v71 = [v70 phenotype];
        v72 = [v71 objectForKeyedSubscript:@"placeName"];
        if (v72)
        {
          v245 = 0;
        }

        else
        {
          v73 = [v24 clusterMetadata];
          v74 = [v73 phenotype];
          v75 = [v74 objectForKeyedSubscript:@"combinedPlaceType"];
          if (v75)
          {
            v245 = 0;
          }

          else
          {
            v76 = [v24 clusterMetadata];
            v77 = [v76 phenotype];
            v78 = [v77 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
            v245 = v78 == 0;
          }
        }

        v79 = [v24 clusterMetadata];
        v80 = [v79 phenotype];
        v81 = [v80 objectForKeyedSubscript:@"persons"];
        if (v81)
        {
          v82 = 1;
        }

        else
        {
          v83 = [v24 clusterMetadata];
          v84 = [v83 phenotype];
          v85 = [v84 objectForKeyedSubscript:@"withChild"];
          if (v85)
          {
            v86 = 1;
          }

          else
          {
            v242 = [v24 clusterMetadata];
            v240 = [v242 phenotype];
            v87 = [v240 objectForKeyedSubscript:@"withMyPet"];
            if (v87)
            {
              v86 = 1;
            }

            else
            {
              v237 = [v24 clusterMetadata];
              v236 = [v237 phenotype];
              v88 = [v236 objectForKeyedSubscript:@"withFamily"];
              if (v88)
              {
                v86 = 1;
              }

              else
              {
                v233 = [v24 clusterMetadata];
                v232 = [v233 phenotype];
                v89 = [v232 objectForKeyedSubscript:@"withCoworker"];
                v86 = v89 != 0;

                v88 = 0;
              }
            }
          }

          v82 = v86;
        }

        v90 = [v24 clusterMetadata];
        v91 = [v90 phenotype];
        v92 = [v91 objectForKeyedSubscript:@"holiday"];
        if (v92)
        {
          v93 = 1;
        }

        else
        {
          v94 = [v24 clusterMetadata];
          v95 = [v94 phenotype];
          v96 = [v95 objectForKeyedSubscript:@"celebration"];
          v93 = v96 != 0;
        }

        v97 = [v24 clusterMetadata];
        v98 = [v97 phenotype];
        v99 = [v98 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

        if ((((v249 || v252) | v82) & 1) == 0 && !v93 && !v99)
        {
          v100 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
          {
            v101 = [v24 subSuggestionIDs];
            v102 = [v101 count];
            v103 = [v24 clusterMetadata];
            v104 = [v103 phenotype];
            v105 = [v24 startDate];
            v106 = [v24 endDate];
            *buf = 134218755;
            v274 = v102;
            v275 = 2113;
            v276 = v104;
            v277 = 2112;
            *v278 = v105;
            *&v278[8] = 2112;
            *&v278[10] = v106;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: Summarized by only time context but nothing else. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);
          }

          goto LABEL_70;
        }

        v107 = [v24 clusterMetadata];
        v108 = [v107 phenotype];
        v109 = [v108 objectForKeyedSubscript:@"combinedPlaceType"];

        if (v109)
        {
          v110 = [v24 clusterMetadata];
          v111 = [v110 phenotype];
          v112 = [v111 objectForKeyedSubscript:@"combinedPlaceType"];

          v113 = [v112 lowercaseString];
          LODWORD(v111) = [v113 isEqualToString:@"work"];

          if (v111)
          {
            v114 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
            {
              v115 = [v24 subSuggestionIDs];
              v116 = [v115 count];
              v117 = [v24 clusterMetadata];
              v118 = [v117 phenotype];
              v119 = [v24 startDate];
              v120 = [v24 endDate];
              *buf = 134218755;
              v274 = v116;
              v275 = 2113;
              v276 = v118;
              v277 = 2112;
              *v278 = v119;
              *&v278[8] = 2112;
              *&v278[10] = v120;
              v121 = v114;
              v122 = "Skipping current pattern summary bundle: summarized by work location. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
              goto LABEL_68;
            }

            goto LABEL_69;
          }
        }

        v112 = [v24 clusterMetadata];
        v125 = [v112 phenotype];
        v126 = [v125 objectForKeyedSubscript:@"combinedPlaceType"];
        v243 = v82;
        if (!v126)
        {
LABEL_80:

          goto LABEL_81;
        }

        v127 = v126;
        v128 = [v24 clusterMetadata];
        v129 = [v128 phenotype];
        v130 = [v129 objectForKeyedSubscript:@"placeName"];

        if (!v130)
        {
          v131 = [v24 clusterMetadata];
          v132 = [v131 phenotype];
          v112 = [v132 objectForKeyedSubscript:@"combinedPlaceType"];

          v125 = +[MOThematicSummarizationUtility userPlaceTypeStringEligibleForThematicSummary];
          if ([v125 containsObject:v112])
          {
            goto LABEL_80;
          }

          v166 = +[MOThematicSummarizationUtility POICategoriesEligibleForThematicSummary];
          v167 = [v166 containsObject:v112];

          if ((v167 & 1) == 0)
          {
            v114 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
            {
              v115 = [v24 subSuggestionIDs];
              v168 = [v115 count];
              v117 = [v24 clusterMetadata];
              v118 = [v117 phenotype];
              v119 = [v24 startDate];
              v120 = [v24 endDate];
              *buf = 134218755;
              v274 = v168;
              v275 = 2113;
              v276 = v118;
              v277 = 2112;
              *v278 = v119;
              *&v278[8] = 2112;
              *&v278[10] = v120;
              v121 = v114;
              v122 = "Skipping current pattern summary bundle: Contains unsupported POI phenotype with no placeName phenotype. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
LABEL_68:
              _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, v122, buf, 0x2Au);
            }

LABEL_69:

LABEL_70:
            v14 = v246;
            v11 = v247;
            goto LABEL_71;
          }

LABEL_81:
        }

        v133 = [v24 clusterMetadata];
        v134 = [v133 phenotype];
        v135 = [v134 objectForKeyedSubscript:@"secondLevelActivityType"];

        v136 = [v24 clusterMetadata];
        v137 = [v136 phenotype];
        v138 = v137;
        if (v135)
        {
          v139 = [v137 objectForKeyedSubscript:@"secondLevelActivityType"];

          v140 = +[MOThematicSummarizationUtility HKWorkoutActivityTypesNotEligibleForThematicSummary];
          v141 = [v140 containsObject:v139];

          if (v141)
          {
            v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              v143 = [v24 subSuggestionIDs];
              v144 = [v143 count];
              v145 = [v24 clusterMetadata];
              v146 = [v145 phenotype];
              v147 = [v24 startDate];
              [v24 endDate];
              v149 = v148 = v139;
              *buf = 134218755;
              v274 = v144;
              v275 = 2113;
              v276 = v146;
              v277 = 2112;
              *v278 = v147;
              *&v278[8] = 2112;
              *&v278[10] = v149;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: Contains unsupported HK type phenotype. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);

              v139 = v148;
            }

            v14 = v246;
            v11 = v247;
LABEL_87:
            a3 = v257;
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
              v157 = [v24 subSuggestionIDs];
              v158 = [v157 count];
              v159 = [v24 clusterMetadata];
              v160 = [v159 phenotype];
              v161 = [v24 startDate];
              [v24 endDate];
              v163 = v162 = v139;
              *buf = 134218755;
              v274 = v158;
              v275 = 2113;
              v276 = v160;
              v277 = 2112;
              *v278 = v161;
              *&v278[8] = 2112;
              *&v278[10] = v163;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "Skipping current pattern summary bundle: Summary with flight action phenotype. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)", buf, 0x2Au);

              v139 = v162;
              v17 = v265;
            }

            v14 = v246;
            v11 = v247;
            a3 = v257;
            goto LABEL_96;
          }

          v153 = [v139 lowercaseString];
          v154 = [@"visit" lowercaseString];
          if (![v153 isEqualToString:v154])
          {
            goto LABEL_101;
          }

          v156 = [v24 clusterMetadata];
          v164 = [v156 phenotype];
          v165 = [v164 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
          if ((v165 != 0) | v243 & 1)
          {

LABEL_100:
            v17 = v265;
LABEL_101:

LABEL_112:
LABEL_113:
            a3 = v257;
            if (v257 == 1)
            {
              v200 = [v24 clusterMetadata];
              v201 = [v200 phenotype];
              v202 = [v201 objectForKeyedSubscript:@"holiday"];
              v14 = v246;
              v11 = v247;
              if (v202)
              {

                v17 = v265;
                goto LABEL_125;
              }

              v203 = [v24 clusterMetadata];
              v204 = [v203 phenotype];
              v205 = [v204 objectForKeyedSubscript:@"celebration"];

              v17 = v265;
              if (v205)
              {
LABEL_125:
                v206 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
                {
                  v254 = [v24 subBundleIDs];
                  v207 = [v254 count];
                  v208 = [v24 clusterMetadata];
                  v209 = [v208 isFiltered];
                  v210 = [v24 clusterMetadata];
                  v211 = [v210 phenotype];
                  v212 = [v24 startDate];
                  v213 = [v24 endDate];
                  *buf = 138413571;
                  v274 = v18;
                  v275 = 2048;
                  v276 = v207;
                  v277 = 1024;
                  *v278 = v209;
                  *&v278[4] = 2113;
                  *&v278[6] = v211;
                  *&v278[14] = 2112;
                  *&v278[16] = v212;
                  v279 = 2112;
                  v280 = v213;
                  _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_INFO, "Created a thematic bundle: LabelNo=%@,bundleCount=%lu,isFiltered=%d,phenotypes=%{private}@, dateRange=%@-%@", buf, 0x3Au);

                  v17 = v265;
                  v14 = v246;

                  v11 = v247;
                }

                [v238 addObject:v24];
              }

              else
              {
                v184 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                {
                  v185 = [v24 subSuggestionIDs];
                  v218 = [v185 count];
                  v187 = [v24 clusterMetadata];
                  v188 = [v187 phenotype];
                  v189 = [v24 startDate];
                  v190 = [v24 endDate];
                  *buf = 134218755;
                  v274 = v218;
                  v275 = 2113;
                  v276 = v188;
                  v277 = 2112;
                  *v278 = v189;
                  *&v278[8] = 2112;
                  *&v278[10] = v190;
                  v191 = v184;
                  v192 = "Skipped the current holiday summary bundle: holiday/celebration thematic summary should have holiday/celebration phenotype (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
LABEL_135:
                  _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_INFO, v192, buf, 0x2Au);

                  v17 = v265;
                }

LABEL_136:
              }

              a3 = v257;
            }

            else
            {
              v14 = v246;
              v11 = v247;
              if (v257 != 6)
              {
                if (v257 == 5)
                {
                  v181 = [v24 clusterMetadata];
                  v182 = [v181 phenotype];
                  v183 = [v182 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];

                  v17 = v265;
                  if (!v183)
                  {
                    v184 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                    if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                    {
                      v185 = [v24 subSuggestionIDs];
                      v186 = [v185 count];
                      v187 = [v24 clusterMetadata];
                      v188 = [v187 phenotype];
                      v189 = [v24 startDate];
                      v190 = [v24 endDate];
                      *buf = 134218755;
                      v274 = v186;
                      v275 = 2113;
                      v276 = v188;
                      v277 = 2112;
                      *v278 = v189;
                      *&v278[8] = 2112;
                      *&v278[10] = v190;
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
                v194 = [v24 subSuggestionIDs];
                v195 = [v194 count];
                v196 = [v24 clusterMetadata];
                v197 = [v196 phenotype];
                v198 = [v24 startDate];
                v199 = [v24 endDate];
                *buf = 134218755;
                v274 = v195;
                a3 = 6;
                v275 = 2113;
                v276 = v197;
                v277 = 2112;
                *v278 = v198;
                *&v278[8] = 2112;
                *&v278[10] = v199;
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
            v214 = [v24 clusterMetadata];
            v215 = [v214 phenotype];
            v216 = [v215 objectForKeyedSubscript:@"enclosingAreaName"];
            v217 = v216 != 0 && v245;

            if (v217 != 1)
            {
              goto LABEL_111;
            }

            v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            v14 = v246;
            v11 = v247;
            if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              goto LABEL_87;
            }

            goto LABEL_109;
          }

          v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
          v14 = v246;
          v11 = v247;
          if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
          {
            goto LABEL_87;
          }

LABEL_140:
          v253 = [v24 subSuggestionIDs];
          v219 = [v253 count];
          v174 = [v24 clusterMetadata];
          v175 = [v174 phenotype];
          v176 = [v24 startDate];
          [v24 endDate];
          v178 = v177 = v139;
          *buf = 134218755;
          v274 = v219;
          v275 = 2113;
          v276 = v175;
          v277 = 2112;
          *v278 = v176;
          *&v278[8] = 2112;
          *&v278[10] = v178;
          v179 = v142;
          v180 = "Skipping current pattern summary bundle: visit summary with no location/social/photo/holiday context. (subSuggestionCount=%lu, phenotypes=%{private}@, dateRange=%@-%@)";
        }

        else
        {
          v150 = [v137 objectForKeyedSubscript:@"topLevelActivityType"];

          v17 = v265;
          if (!v150)
          {
            goto LABEL_113;
          }

          v151 = [v24 clusterMetadata];
          v152 = [v151 phenotype];
          v139 = [v152 objectForKeyedSubscript:@"topLevelActivityType"];

          if (![v139 isEqualToString:@"outing"])
          {
            goto LABEL_111;
          }

          v153 = [v24 clusterMetadata];
          v154 = [v153 phenotype];
          v155 = [v154 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
          if ((v155 != 0) | v243 & 1)
          {
            v156 = v155;
            goto LABEL_100;
          }

          if (v99 != 0 || v93)
          {
            goto LABEL_111;
          }

          v14 = v246;
          v11 = v247;
          if (!v252)
          {
            v142 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
            if (!os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              goto LABEL_87;
            }

            goto LABEL_140;
          }

          v169 = [v24 clusterMetadata];
          v170 = [v169 phenotype];
          v171 = [v170 objectForKeyedSubscript:@"enclosingAreaName"];
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
          v253 = [v24 subSuggestionIDs];
          v173 = [v253 count];
          v174 = [v24 clusterMetadata];
          v175 = [v174 phenotype];
          v176 = [v24 startDate];
          [v24 endDate];
          v178 = v177 = v139;
          *buf = 134218755;
          v274 = v173;
          v275 = 2113;
          v276 = v175;
          v277 = 2112;
          *v278 = v176;
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

  v221 = v234;
  if (v234)
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

    v221 = v234;
    (*(v234 + 2))(v234, v225, 0);
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

- (void)updateSuggestionIDsForNewThematicSummarizationBundles:(id)a3 withExistingThematicSummarizationBundles:(id)a4
{
  v5 = a3;
  v66 = a4;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v86 = [v5 count];
    v87 = 2048;
    v88 = [v66 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "updateSuggestionIDsForNewThematicSummarizationBundles. new summary count=%lu, existing summary count=%lu", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v5;
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
          v12 = [v10 suggestionID];
          v13 = [v10 clusterMetadata];
          v14 = [v13 phenotype];
          v15 = [v10 subBundleIDs];
          v16 = [v15 count];
          *buf = 138412803;
          v86 = v12;
          v87 = 2113;
          v88 = v14;
          v89 = 2048;
          v90 = v16;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Searching for matching summary bundle from the DB for the current summary: suggestionID=%@, phenotype=%{private}@, subSuggestionIDCount=%lu", buf, 0x20u);
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v76 = v66;
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
              v22 = [v21 suggestionID];
              v23 = [v22 UUIDString];
              v24 = [v7 containsObject:v23];

              if (v24)
              {
                v25 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v26 = [v21 suggestionID];
                  v27 = [v26 UUIDString];
                  *buf = 138412290;
                  v86 = v27;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Current suggestionID (%@) was already transferred to another newly created summary.", buf, 0xCu);
                }
              }

              else
              {
                v28 = v10;
                v29 = [v10 subBundleIDs];
                v25 = [NSSet setWithArray:v29];

                v30 = [v21 subBundleIDs];
                v31 = [NSSet setWithArray:v30];

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

                v39 = [v28 clusterMetadata];
                v40 = [v39 phenotype];

                v41 = [v21 clusterMetadata];
                v42 = [v41 phenotype];

                if ([v40 isEqualToDictionary:v42] && objc_msgSend(v32, "count"))
                {
                  v47 = _mo_log_facility_get_os_log(&MOLogFacilityThematicSummarization);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    v72 = [v21 clusterMetadata];
                    logb = [v72 phenotype];
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
                    v71 = [v21 clusterMetadata];
                    [v71 phenotype];
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

                    v54 = [v21 suggestionID];
                    [v51 setSuggestionID:v54];

                    v55 = [v21 suggestionID];
                    v56 = [v55 UUIDString];
                    [v7 addObject:v56];

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