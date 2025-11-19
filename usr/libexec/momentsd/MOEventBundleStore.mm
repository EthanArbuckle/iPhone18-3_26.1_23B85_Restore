@interface MOEventBundleStore
+ (BOOL)_isResourceTypeAllowedForResource:(id)a3;
+ (BOOL)_recordDedupeKey:(id)a3 alreadySeenKeys:(id)a4;
+ (BOOL)_recordResource:(id)a3 alreadySeenKeys:(id)a4;
+ (BOOL)isExtendedLogEnabled;
- (MOEventBundleStore)initWithPersistenceManager:(id)a3 andConfigurationManager:(id)a4;
- (MOEventBundleStore)initWithUniverse:(id)a3;
- (MOEventBundleStoreEngagementDelegate)engagementDelegate;
- (id)_updateLongTermBundles:(id)a3 context:(id)a4;
- (void)_submitRankingParamsAnalytics:(id)a3 withSubmissionDate:(id)a4;
- (void)fetchBundleTypeDistributionFromStoreWithHandler:(id)a3;
- (void)fetchEventBundleWithGranularity:(unint64_t)a3 interfaceTypes:(id)a4 CompletionHandler:(id)a5;
- (void)fetchEventBundleWithOptions:(id)a3 CompletionHandler:(id)a4;
- (void)fetchEventBundlesWithPredicate:(id)a3 completionHandler:(id)a4;
- (void)getEventBundleStartedWithInterval:(id)a3 interfaceTypes:(id)a4 CompletionHandler:(id)a5;
- (void)getRankingParamsandCompletionHandler:(id)a3;
- (void)purgeDanglingEventBundlesWithHandler:(id)a3;
- (void)purgeDeletedEventBundlesWithCompletionHandler:(id)a3;
- (void)purgeEventBundlesWithNoEventsAssociatedWithCompletionHandler:(id)a3;
- (void)purgeEventBundlesWithRehydrationFailureCount:(int)a3 andHandler:(id)a4;
- (void)purgeExpiredEventBundlesWithCompletionHandler:(id)a3;
- (void)purgeInvalidEvergreenBundlesWithCompletionHandler:(id)a3;
- (void)removeAllBundlesWithCompletionHandler:(id)a3;
- (void)removeEventBundles:(id)a3 CompletionHandler:(id)a4;
- (void)removeEventBundlesStartedWithinInterval:(id)a3 CompletionHandler:(id)a4;
- (void)reset;
- (void)storeEventBundles:(id)a3 CompletionHandler:(id)a4;
- (void)storeRankingParams:(id)a3 forContext:(id)a4 forEvergreenScore:(BOOL)a5;
- (void)updateEventBundles:(id)a3 CompletionHandler:(id)a4;
@end

@implementation MOEventBundleStore

+ (BOOL)isExtendedLogEnabled
{
  +[MODefaultsManager momentsDaemonDefaults];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__MOEventBundleStore_isExtendedLogEnabled__block_invoke;
  v7 = block[3] = &unk_100335F40;
  v2 = isExtendedLogEnabled_onceToken_0;
  v3 = v7;
  if (v2 != -1)
  {
    dispatch_once(&isExtendedLogEnabled_onceToken_0, block);
  }

  v4 = isExtendedLogEnabled_result_0;

  return v4;
}

BOOL __42__MOEventBundleStore_isExtendedLogEnabled__block_invoke(uint64_t a1)
{
  result = [MODefaultsManager isExtendedLogEnabled:@"LoggingOverrideExtendedEventBundleScoreLogging" forDetaultsManager:*(a1 + 32)];
  isExtendedLogEnabled_result_0 = result;
  return result;
}

- (MOEventBundleStore)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 getService:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v4 getService:v9];

  v11 = [(MOEventBundleStore *)self initWithPersistenceManager:v7 andConfigurationManager:v10];
  return v11;
}

- (MOEventBundleStore)initWithPersistenceManager:(id)a3 andConfigurationManager:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v18.receiver = self;
    v18.super_class = MOEventBundleStore;
    v10 = [(MOEventBundleStore *)&v18 init];
    if (v10)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("MOEventBundleStore", v11);
      queue = v10->_queue;
      v10->_queue = v12;

      objc_storeStrong(&v10->_persistenceManager, a3);
      objc_storeStrong(&v10->_configurationManager, a4);
    }

    self = v10;
    v14 = self;
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MOBookmarkStore initWithPersistenceManager:v15 andConfigurationManager:?];
    }

    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MOEventBundleStore.m" lineNumber:78 description:@"Invalid parameter not satisfying: persistenceManager"];

    v14 = 0;
  }

  return v14;
}

- (void)reset
{
  v2 = [(MOEventBundleStore *)self persistenceManager];
  [v2 performBlockAndWait:&__block_literal_global_51];
}

- (void)storeEventBundles:(id)a3 CompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__37;
  v26 = __Block_byref_object_dispose__37;
  v27 = 0;
  v9 = objc_autoreleasePoolPush();
  if ([v7 count])
  {
    v10 = [(MOEventBundleStore *)self persistenceManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __58__MOEventBundleStore_storeEventBundles_CompletionHandler___block_invoke;
    v17[3] = &unk_10033EDA0;
    v20 = &v22;
    v21 = a2;
    v18 = v7;
    v19 = self;
    [v10 performBlockAndWait:v17];

    [(MOEventBundleStore *)self reset];
    v11 = v18;
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "no event bundles to be saved", v16, 2u);
    }
  }

  objc_autoreleasePoolPop(v9);
  if (v8)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v23[5];
    v28 = @"resultNumberOfBundleEvents";
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
    v29 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v8[2](v8, v13, v15);

    objc_autoreleasePoolPop(v12);
  }

  _Block_object_dispose(&v22, 8);
}

void __58__MOEventBundleStore_storeEventBundles_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v107 = a2;
  v92 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v93 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v127 objects:v147 count:16];
  v104 = v3;
  if (v6)
  {
    v7 = v6;
    v8 = *v128;
    v106 = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v128 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v127 + 1) + 8 * i);
        if ([v10 interfaceType] != 11)
        {
          v11 = [v10 events];
          v12 = [v11 count];

          if (!v12)
          {
            continue;
          }
        }

        v13 = [v10 bundleManagementPolicy];
        v14 = v4;
        if (v13 == 1)
        {
          if ([v10 interfaceType] != 13 || (objc_msgSend(v10, "place"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "placeType"), v15, v14 = v92, v16 <= 0x64))
          {
            v17 = [v10 interfaceType];
            v14 = v3;
            if (v17 == 13)
            {
              v18 = [v10 action];

              v14 = v3;
              if (v18)
              {
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v19 = [v10 events];
                v20 = [v19 countByEnumeratingWithState:&v123 objects:v146 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v124;
                  do
                  {
                    for (j = 0; j != v21; j = j + 1)
                    {
                      if (*v124 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = [*(*(&v123 + 1) + 8 * j) eventIdentifier];
                      [0 addObject:v24];
                    }

                    v21 = [v19 countByEnumeratingWithState:&v123 objects:v146 count:16];
                  }

                  while (v21);
                }

                v25 = [v10 action];
                v26 = [v25 sourceEventIdentifier];
                v27 = [0 containsObject:v26];

                v3 = v104;
                v5 = v106;
                v14 = v104;
                if (v27)
                {
                  v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
                  {
                    v102 = [v10 action];
                    v33 = [v102 sourceEventIdentifier];
                    v34 = [v10 suggestionID];
                    v100 = [v10 events];
                    v98 = [v100 firstObject];
                    v35 = [v98 eventIdentifier];
                    *buf = 138412802;
                    v135 = v33;
                    v136 = 2112;
                    v137 = v34;
                    v138 = 2112;
                    v139 = v35;
                    _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Action source Identifier  %@ not part of the event bundle %@, setting it now to be the first event %@ ", buf, 0x20u);
                  }

                  v29 = [v10 events];
                  v30 = [v29 firstObject];
                  v31 = [v30 eventIdentifier];
                  v32 = [v10 action];
                  [v32 setSourceEventIdentifier:v31];

                  v14 = v104;
                  v5 = v106;
                }
              }
            }
          }
        }

        [v14 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v127 objects:v147 count:16];
    }

    while (v7);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v4;
  v36 = [obj countByEnumeratingWithState:&v119 objects:v145 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v120;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v120 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v119 + 1) + 8 * k);
        v41 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v135 = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "save event bundle, %@", buf, 0xCu);
        }

        v42 = [MOEventBundleMO managedObjectWithEventBundle:v40 inManagedObjectContext:v107];
      }

      v37 = [obj countByEnumeratingWithState:&v119 objects:v145 count:16];
    }

    while (v37);
  }

  v43 = v93 + 48;
  v44 = *(*(v93 + 48) + 8);
  v118 = *(v44 + 40);
  v45 = [v107 save:&v118];
  objc_storeStrong((v44 + 40), v118);
  if (v45)
  {
    v46 = *(*v43 + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = 0;

    v48 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v49 = v104;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v50 = [obj count];
      *buf = 134217984;
      v135 = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "saving event bundles succeeded, stored, %lu", buf, 0xCu);
    }
  }

  else
  {
    v48 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v49 = v104;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      __58__MOEventBundleStore_storeEventBundles_CompletionHandler___block_invoke_cold_1(v43);
    }
  }

  [v107 reset];
  v51 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = [v49 count];
    *buf = 134217984;
    v135 = v52;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "saving event bundles succeeded, to be updated, %lu", buf, 0xCu);
  }

  v117 = 0u;
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  v94 = v49;
  v97 = [v94 countByEnumeratingWithState:&v114 objects:v144 count:16];
  if (v97)
  {
    v53 = &GEOPOICategoryGasStation_ptr;
    v96 = *v115;
    do
    {
      v54 = 0;
      do
      {
        if (*v115 != v96)
        {
          objc_enumerationMutation(v94);
        }

        v103 = v54;
        v55 = *(*(&v114 + 1) + 8 * v54);
        v56 = +[MOEventBundleMO fetchRequest];
        v57 = v53[174];
        v58 = [v55 suggestionID];
        v59 = [NSPredicate predicateWithFormat:@"%K == %@", @"suggestionID", v58];
        v143 = v59;
        v60 = [NSArray arrayWithObjects:&v143 count:1];
        v61 = [v57 andPredicateWithSubpredicates:v60];
        [v56 setPredicate:v61];

        v62 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
        v142 = v62;
        v63 = [NSArray arrayWithObjects:&v142 count:1];
        [v56 setSortDescriptors:v63];

        [v56 setReturnsObjectsAsFaults:0];
        v64 = *(*v43 + 8);
        v113 = *(v64 + 40);
        v65 = [v107 executeFetchRequest:v56 error:&v113];
        objc_storeStrong((v64 + 40), v113);
        v66 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          v67 = NSStringFromSelector(*(v93 + 56));
          v68 = [v65 count];
          v69 = *(*(*(v93 + 48) + 8) + 40);
          *buf = 138413058;
          v135 = v67;
          v136 = 2112;
          v137 = v56;
          v138 = 2048;
          v139 = v68;
          v140 = 2112;
          v141 = v69;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
        }

        v99 = v65;
        v101 = v56;
        if ([v65 count])
        {
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v70 = v65;
          v71 = [v70 countByEnumeratingWithState:&v109 objects:v133 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = *v110;
            do
            {
              v77 = 0;
              v105 = v73;
              v78 = -v73;
              do
              {
                if (*v110 != v76)
                {
                  objc_enumerationMutation(v70);
                }

                v79 = *(*(&v109 + 1) + 8 * v77);
                if (v78 == v77)
                {
                  [MOEventBundleMO updateManagedObject:*(*(&v109 + 1) + 8 * v77) eventBundle:v55 inManagedObjectContext:v107];
                  v80 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v135 = v55;
                    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "update event bundle, %@", buf, 0xCu);
                  }

                  ++v75;
                }

                else
                {
                  [v107 deleteObject:*(*(&v109 + 1) + 8 * v77)];
                  v81 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v135 = v79;
                    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "removed redundant event bundle, %@", buf, 0xCu);
                  }

                  ++v74;
                }

                ++v77;
              }

              while (v72 != v77);
              v73 = &v72[v105];
              v72 = [v70 countByEnumeratingWithState:&v109 objects:v133 count:16];
            }

            while (v72);
            v82 = 0;
            v43 = v93 + 48;
            v53 = &GEOPOICategoryGasStation_ptr;
          }

          else
          {
            v82 = 0;
            v74 = 0;
            v75 = 0;
          }
        }

        else
        {
          v83 = [MOEventBundleMO managedObjectWithEventBundle:v55 inManagedObjectContext:v107];
          v70 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v135 = v55;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "save event bundle, %@", buf, 0xCu);
          }

          v74 = 0;
          v75 = 0;
          v82 = 1;
        }

        v84 = *(*v43 + 8);
        v108 = *(v84 + 40);
        v85 = [v107 save:&v108];
        objc_storeStrong((v84 + 40), v108);
        if (v85)
        {
          v86 = *(*v43 + 8);
          v87 = *(v86 + 40);
          *(v86 + 40) = 0;

          v88 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            *buf = 134218496;
            v135 = v75;
            v136 = 2048;
            v137 = v74;
            v138 = 2048;
            v139 = v82;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "updating event bundles succeeded, updated, %lu, revmoed, %lu, saved, %lu", buf, 0x20u);
          }
        }

        else
        {
          v88 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            __58__MOEventBundleStore_storeEventBundles_CompletionHandler___block_invoke_cold_2(v131, v43, &v132, v88);
          }
        }

        v54 = v103 + 1;
      }

      while ((v103 + 1) != v97);
      v97 = [v94 countByEnumeratingWithState:&v114 objects:v144 count:16];
    }

    while (v97);
  }

  v89 = [*(v93 + 40) _updateLongTermBundles:v92 context:v107];
  v90 = *(*(v93 + 48) + 8);
  v91 = *(v90 + 40);
  *(v90 + 40) = v89;
}

+ (BOOL)_isResourceTypeAllowedForResource:(id)a3
{
  v4 = a3;
  if ([v4 type] <= 0x11)
  {
    v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 type]);
    v3 = [&off_10036E1D8 containsObject:v5];
  }

  return v3 & 1;
}

+ (BOOL)_recordDedupeKey:(id)a3 alreadySeenKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if ([v6 containsObject:v5])
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The dedupe key, %@, was already seen.", &v11, 0xCu);
      }

      v9 = 0;
    }

    else
    {
      [v7 addObject:v5];
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
      v9 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "New dedupe key, %@.", &v11, 0xCu);
      }
    }
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [MOEventBundleStore _recordDedupeKey:v8 alreadySeenKeys:?];
    }

    v9 = 1;
  }

  return v9;
}

+ (BOOL)_recordResource:(id)a3 alreadySeenKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v7 = [v5 getDedupeKeyError:&v14];
  v8 = v14;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MOEventBundleStore _recordResource:v8 alreadySeenKeys:v5];
  }

  v11 = [v5 identifier];

  v7 = v11;
  if (!v11)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[MOEventBundleStore _recordResource:alreadySeenKeys:];
    }

    v12 = 0;
  }

  else
  {
LABEL_9:
    v12 = [MOEventBundleStore _recordDedupeKey:v7 alreadySeenKeys:v6];
  }

  return v12;
}

- (id)_updateLongTermBundles:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v284 = 0u;
  v285 = 0u;
  v286 = 0u;
  v287 = 0u;
  v7 = v5;
  v221 = [v7 countByEnumeratingWithState:&v284 objects:v312 count:16];
  v8 = 0;
  if (!v221)
  {
LABEL_205:

    v8 = v8;
    v211 = v8;
    goto LABEL_207;
  }

  v219 = *v285;
  v9 = &OBJC_IVAR___MOBiomeManager__setDefault;
  v240 = v6;
  v220 = v7;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v285 != v219)
    {
      objc_enumerationMutation(v7);
    }

    v222 = v10;
    v11 = *(*(&v284 + 1) + 8 * v10);
    v242 = [v9 + 522 fetchRequest];
    v12 = +[NSMutableArray array];
    v13 = [NSPredicate predicateWithFormat:@"interfaceType IN %@ ", &off_10036E1F0];
    [v12 addObject:v13];

    v14 = [NSPredicate predicateWithFormat:@"isAggregatedAndSuppressed == 0"];
    [v12 addObject:v14];

    v15 = [v11 endDate];
    v16 = [NSPredicate predicateWithFormat:@"startDate <= %@", v15];
    v311[0] = v16;
    v225 = v11;
    v17 = [v11 startDate];
    v18 = [NSPredicate predicateWithFormat:@"endDate >= %@", v17];
    v311[1] = v18;
    v19 = [NSArray arrayWithObjects:v311 count:2];
    v20 = [NSCompoundPredicate andPredicateWithSubpredicates:v19];
    [v12 addObject:v20];

    v21 = v242;
    v22 = v12;

    v23 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    [v242 setPredicate:v23];

    [v242 setReturnsObjectsAsFaults:0];
    v24 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v310 = v24;
    v25 = [NSArray arrayWithObjects:&v310 count:1];
    [v242 setSortDescriptors:v25];

    [v242 setFetchBatchSize:100];
    v283 = v8;
    v6 = v240;
    v26 = [v240 executeFetchRequest:v242 error:&v283];
    v27 = v283;

    v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = NSStringFromSelector(a2);
      v30 = [v26 count];
      *buf = 138413058;
      *v306 = v29;
      *&v306[8] = 2112;
      *&v306[10] = v242;
      *&v306[18] = 2048;
      v307 = v30;
      v308 = 2112;
      v309 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%@, summary trip request, %@, fetched subBundle count, %lu, error, %@", buf, 0x2Au);
    }

    v223 = v26;

    if (v27)
    {
      v8 = v27;
      v213 = v8;
      v7 = v220;
      v31 = v222;
      v9 = &OBJC_IVAR___MOBiomeManager__setDefault;
      goto LABEL_202;
    }

    v217 = v22;
    v32 = +[MOEventBundleMO fetchRequest];

    v33 = [v225 suggestionID];
    v34 = [NSPredicate predicateWithFormat:@"%K == %@", @"suggestionID", v33];
    v304 = v34;
    v35 = [NSArray arrayWithObjects:&v304 count:1];
    v36 = [NSCompoundPredicate andPredicateWithSubpredicates:v35];
    [v32 setPredicate:v36];

    v37 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
    v303 = v37;
    v38 = [NSArray arrayWithObjects:&v303 count:1];
    [v32 setSortDescriptors:v38];

    [v32 setReturnsObjectsAsFaults:0];
    v282 = 0;
    v39 = [v240 executeFetchRequest:v32 error:&v282];
    v218 = v282;
    v40 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = NSStringFromSelector(a2);
      v42 = [v39 count];
      *buf = 138413058;
      *v306 = v41;
      *&v306[8] = 2112;
      *&v306[10] = v32;
      *&v306[18] = 2048;
      v307 = v42;
      v308 = 2112;
      v309 = v218;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%@, summary trip request, %@, fetched summary bundle count, %lu, error, %@", buf, 0x2Au);
    }

    v215 = v39;
    v216 = v32;
    if ([v39 count])
    {
      v280 = 0u;
      v281 = 0u;
      v278 = 0u;
      v279 = 0u;
      v43 = v39;
      v44 = [v43 countByEnumeratingWithState:&v278 objects:v302 count:16];
      if (v44)
      {
        v45 = v44;
        v224 = 0;
        v46 = *v279;
        do
        {
          for (i = 0; i != v45; i = i + 1)
          {
            if (*v279 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v278 + 1) + 8 * i);
            [v240 deleteObject:v48];
            v49 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v306 = v48;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "removed redundant summary trip bundle, %@", buf, 0xCu);
            }
          }

          v224 += v45;
          v45 = [v43 countByEnumeratingWithState:&v278 objects:v302 count:16];
        }

        while (v45);
      }

      else
      {
        v224 = 0;
      }
    }

    else
    {
      v224 = 0;
    }

    v244 = +[NSMutableSet set];
    v241 = +[NSMutableSet set];
    v237 = +[NSMutableSet set];
    [v225 setEvents:0];
    [v225 setPlaces:0];
    [v225 setResources:0];
    [v225 setPersons:0];
    v243 = [MOEventBundleMO managedObjectWithEventBundle:v225 inManagedObjectContext:v240];
    v50 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v306 = v225;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "save summary trip bundle, %@", buf, 0xCu);
    }

    v226 = objc_opt_new();
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    obj = [v243 places];
    v51 = [obj countByEnumeratingWithState:&v274 objects:v301 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v54 = *v275;
      v234 = *v275;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v275 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(*(&v274 + 1) + 8 * j);
          if (!v53)
          {
            goto LABEL_36;
          }

          v57 = [v53 startDate];
          if (!v57)
          {
            goto LABEL_36;
          }

          v58 = v57;
          [v56 startDate];
          v60 = v59 = v52;
          [v53 startDate];
          v62 = v61 = v53;
          v63 = [v60 isAfterDate:v62];

          v53 = v61;
          v52 = v59;
          v54 = v234;

          if (v63)
          {
LABEL_36:
            v64 = v56;

            v53 = v64;
          }
        }

        v52 = [obj countByEnumeratingWithState:&v274 objects:v301 count:16];
      }

      while (v52);
    }

    else
    {
      v53 = 0;
    }

    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v229 = v223;
    v230 = [v229 countByEnumeratingWithState:&v270 objects:v300 count:16];
    if (v230)
    {
      v65 = *v271;
      obja = -1;
      v227 = *v271;
      do
      {
        for (k = 0; k != v230; k = v83 + 1)
        {
          if (*v271 != v65)
          {
            objc_enumerationMutation(v229);
          }

          v231 = k;
          v67 = *(*(&v270 + 1) + 8 * k);
          ++obja;
          v68 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            v69 = [v67 bundleIdentifier];
            *buf = 67109378;
            *v306 = obja;
            *&v306[4] = 2112;
            *&v306[6] = v69;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "%d, Considering sub bundle, %@", buf, 0x12u);
          }

          v70 = [v67 place];
          v71 = [v70 placeType];

          v232 = v67;
          if (v71 >= 0x65)
          {
            v72 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              v73 = [v232 bundleIdentifier];
              *buf = 67109378;
              *v306 = obja;
              *&v306[4] = 2112;
              *&v306[6] = v73;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "%d, Sub bundle place larger than city. skipping sub bundle, %@", buf, 0x12u);
            }

            goto LABEL_190;
          }

          v72 = [v67 interfaceType];
          if ([v72 intValue]== 2)
          {
            goto LABEL_54;
          }

          v74 = [v232 interfaceType];
          if ([v74 intValue] == 12)
          {

LABEL_54:
            goto LABEL_55;
          }

          v159 = v53;
          v160 = [v232 place];
          if ([v160 placeType] >= 0x65)
          {

            v53 = v159;
            goto LABEL_189;
          }

          v161 = [v232 subSuggestionIDs];
          [v225 suggestionID];
          v163 = v162 = v72;
          v164 = [v163 UUIDString];
          v236 = [v161 containsObject:v164];

          v53 = v159;
          v65 = v227;
          if (v236)
          {
            goto LABEL_62;
          }

LABEL_55:
          v75 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = [v232 bundleIdentifier];
            *buf = 67109378;
            *v306 = obja;
            *&v306[4] = 2112;
            *&v306[6] = v76;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%d, Ingesting sub bundle, %@", buf, 0x12u);
          }

          v77 = [v232 summarizationGranularity];
          v78 = [v77 intValue];

          if (v78 == 2)
          {
            [v232 setIsAggregatedAndSuppressed:1];
          }

          else
          {
            v79 = [v232 summarizationGranularity];
            v80 = [v79 intValue];

            if (v80 != 1)
            {
              [v232 setSummarizationGranularity:&off_10036BEC0];
            }
          }

          v81 = [v232 interfaceType];
          v82 = [v81 intValue];

          if (v82 == 13)
          {
LABEL_62:
            v83 = v231;
            continue;
          }

          v235 = v53;
          v84 = [v232 suggestionID];
          v85 = [v84 UUIDString];

          v228 = v85;
          [v226 addObject:v85];
          v86 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v87 = [v232 bundleIdentifier];
            *buf = 67109378;
            *v306 = obja;
            *&v306[4] = 2112;
            *&v306[6] = v87;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%d, Ingesting events for sub bundle, %@", buf, 0x12u);
          }

          v268 = 0u;
          v269 = 0u;
          v266 = 0u;
          v267 = 0u;
          v88 = [v232 events];
          v89 = [v88 countByEnumeratingWithState:&v266 objects:v299 count:16];
          if (v89)
          {
            v90 = v89;
            v91 = *v267;
            do
            {
              for (m = 0; m != v90; m = m + 1)
              {
                if (*v267 != v91)
                {
                  objc_enumerationMutation(v88);
                }

                v93 = *(*(&v266 + 1) + 8 * m);
                v94 = objc_opt_class();
                v95 = [v93 eventIdentifier];
                LODWORD(v94) = [v94 _recordDedupeKey:v95 alreadySeenKeys:v244];

                if (v94)
                {
                  [v243 addEventsObject:v93];
                }

                else
                {
                  v96 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
                  {
                    [MOEventBundleStore _updateLongTermBundles:v298 context:v93];
                  }
                }
              }

              v90 = [v88 countByEnumeratingWithState:&v266 objects:v299 count:16];
            }

            while (v90);
          }

          v97 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            v98 = [v232 bundleIdentifier];
            *buf = 67109378;
            *v306 = obja;
            *&v306[4] = 2112;
            *&v306[6] = v98;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "%d, Ingesting resources for sub bundle, %@", buf, 0x12u);
          }

          v264 = 0u;
          v265 = 0u;
          v262 = 0u;
          v263 = 0u;
          v99 = [v232 resources];
          v100 = [v99 countByEnumeratingWithState:&v262 objects:v297 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v263;
            v103 = -1;
            do
            {
              for (n = 0; n != v101; n = n + 1)
              {
                if (*v263 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                v105 = *(*(&v262 + 1) + 8 * n);
                ++v103;
                v106 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109634;
                  *v306 = obja;
                  *&v306[4] = 1024;
                  *&v306[6] = v103;
                  *&v306[10] = 2112;
                  *&v306[12] = v105;
                  _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "%d.%d, Ingesting resource, %@", buf, 0x18u);
                }

                if ([objc_opt_class() _isResourceTypeAllowedForResource:v105])
                {
                  if ([objc_opt_class() _recordResource:v105 alreadySeenKeys:v237])
                  {
                    v107 = [v105 clonedObjectWithContext:v6];
                    v108 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109634;
                      *v306 = obja;
                      *&v306[4] = 1024;
                      *&v306[6] = v103;
                      *&v306[10] = 2112;
                      *&v306[12] = v105;
                      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "%d.%d, adding resource, %@", buf, 0x18u);
                    }

                    [v243 addResourcesObject:v107];
                  }

                  else
                  {
                    v107 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
                    {
                      [MOEventBundleStore _updateLongTermBundles:v296 context:v105];
                    }
                  }
                }
              }

              v101 = [v99 countByEnumeratingWithState:&v262 objects:v297 count:16];
            }

            while (v101);
          }

          v260 = 0u;
          v261 = 0u;
          v258 = 0u;
          v259 = 0u;
          v109 = [v243 resources];
          v110 = [v109 reverseObjectEnumerator];

          v111 = [v110 countByEnumeratingWithState:&v258 objects:v295 count:16];
          if (v111)
          {
            v112 = v111;
            v113 = 0;
            v114 = *v259;
            v115 = 300;
            v116 = 200;
            do
            {
              for (ii = 0; ii != v112; ii = ii + 1)
              {
                if (*v259 != v114)
                {
                  objc_enumerationMutation(v110);
                }

                v118 = *(*(&v258 + 1) + 8 * ii);
                if ([v118 type] == 2)
                {
                  [v118 priorityScore];
                  if (v113)
                  {
                    [v118 setPriorityScore:v116++];
                    v113 = 1;
                  }

                  else
                  {
                    v113 |= v119 == 100.0;
                  }
                }

                else if ([v118 type] == 10)
                {
                  [v118 setPriorityScore:v116++];
                }

                else if ([v118 type] == 13)
                {
                  [v118 setPriorityScore:v115++];
                }
              }

              v112 = [v110 countByEnumeratingWithState:&v258 objects:v295 count:16];
            }

            while (v112);
          }

          v120 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
          {
            v121 = [v232 bundleIdentifier];
            *buf = 67109378;
            *v306 = obja;
            *&v306[4] = 2112;
            *&v306[6] = v121;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "%d, Ingesting places for sub bundle, %@", buf, 0x12u);
          }

          v256 = 0u;
          v257 = 0u;
          v254 = 0u;
          v255 = 0u;
          v122 = [v232 places];
          v123 = [v122 countByEnumeratingWithState:&v254 objects:v294 count:16];
          if (v123)
          {
            v124 = v123;
            v125 = *v255;
            v233 = v122;
            do
            {
              for (jj = 0; jj != v124; jj = jj + 1)
              {
                if (*v255 != v125)
                {
                  objc_enumerationMutation(v122);
                }

                v127 = *(*(&v254 + 1) + 8 * jj);
                if ([v127 placeType] <= 5)
                {
                  v128 = objc_opt_class();
                  v129 = [v127 sourceEventIdentifier];
                  LODWORD(v128) = [v128 _recordDedupeKey:v129 alreadySeenKeys:v244];

                  if (v128)
                  {
                    v130 = [v127 clonedObjectWithContext:v6];
                    v131 = [v243 place];
                    v132 = [v131 name];
                    [v130 setCityName:v132];

                    [v243 addPlacesObject:v130];
                    if (!v235)
                    {
                      goto LABEL_123;
                    }

                    v133 = [v235 startDate];
                    if (!v133)
                    {
                      goto LABEL_123;
                    }

                    v134 = v133;
                    v135 = [v127 startDate];
                    v136 = [v235 startDate];
                    v137 = [v135 isAfterDate:v136];

                    if (v137)
                    {
LABEL_123:
                      v138 = v127;

                      v235 = v138;
                    }

                    v139 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
                    {
                      v140 = [v130 identifier];
                      *buf = 138412290;
                      *v306 = v140;
                      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_INFO, "Place added with identifier, %@", buf, 0xCu);
                    }

                    v6 = v240;
                    v122 = v233;
                  }

                  else
                  {
                    v130 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                    if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
                    {
                      [MOEventBundleStore _updateLongTermBundles:v293 context:v127];
                    }
                  }
                }
              }

              v124 = [v122 countByEnumeratingWithState:&v254 objects:v294 count:16];
            }

            while (v124);
          }

          v141 = [v232 place];
          v142 = [v141 placeType];

          if (v142 <= 5)
          {
            v143 = objc_opt_class();
            v144 = [v232 place];
            v145 = [v144 identifier];
            LODWORD(v143) = [v143 _recordDedupeKey:v145 alreadySeenKeys:v244];

            if (v143)
            {
              v146 = [v232 place];
              v147 = [v146 clonedObjectWithContext:v6];

              v148 = [v243 place];
              v149 = [v148 name];
              [v147 setCityName:v149];

              [v243 addPlacesObject:v147];
              if (!v235)
              {
                goto LABEL_137;
              }

              v150 = [v235 startDate];
              if (!v150)
              {
                goto LABEL_137;
              }

              v151 = v150;
              v152 = [v232 place];
              v153 = [v152 startDate];
              v154 = [v235 startDate];
              v155 = [v153 isAfterDate:v154];

              if (v155)
              {
LABEL_137:
                v156 = [v232 place];

                v235 = v156;
              }

              v157 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
              if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
              {
                v158 = [v147 identifier];
                *buf = 138412290;
                *v306 = v158;
                _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_INFO, "Place added with identifier, %@", buf, 0xCu);
              }
            }

            else
            {
              v147 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
              if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
              {
                [MOEventBundleStore _updateLongTermBundles:v292 context:v232];
              }
            }
          }

          v165 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
          {
            v166 = [v232 bundleIdentifier];
            *buf = 67109378;
            *v306 = obja;
            *&v306[4] = 2112;
            *&v306[6] = v166;
            _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_INFO, "%d, Ingesting persons for sub bundle, %@", buf, 0x12u);
          }

          v252 = 0u;
          v253 = 0u;
          v250 = 0u;
          v251 = 0u;
          v167 = [v232 persons];
          v168 = [v167 countByEnumeratingWithState:&v250 objects:v291 count:16];
          if (v168)
          {
            v169 = v168;
            v170 = *v251;
            do
            {
              for (kk = 0; kk != v169; kk = kk + 1)
              {
                if (*v251 != v170)
                {
                  objc_enumerationMutation(v167);
                }

                v172 = *(*(&v250 + 1) + 8 * kk);
                v173 = [v172 identifier];

                if (!v173)
                {
                  v179 = [v172 contactIdentifier];

                  if (v179)
                  {
                    v180 = objc_opt_class();
                    v181 = [v172 contactIdentifier];
                    LODWORD(v180) = [v180 _recordDedupeKey:v181 alreadySeenKeys:v241];

                    if (v180)
                    {
                      v182 = [v172 clonedObjectWithContext:v240];
                      v183 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                      if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
                      {
                        v184 = [v172 identifier];
                        *buf = 138412290;
                        *v306 = v184;
                        _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_INFO, "Person added with contact identifier, %@", buf, 0xCu);
                      }

                      [v243 addPersonsObject:v182];
                    }

                    else
                    {
                      v182 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                      if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                      {
                        [MOEventBundleStore _updateLongTermBundles:v289 context:v172];
                      }
                    }
                  }

                  else
                  {
                    v182 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                    if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      *v306 = v172;
                      _os_log_fault_impl(&_mh_execute_header, v182, OS_LOG_TYPE_FAULT, "Person, %@, has both identifier and contactIdentifier nil", buf, 0xCu);
                    }
                  }

                  goto LABEL_174;
                }

                v174 = objc_opt_class();
                v175 = [v172 identifier];
                LODWORD(v174) = [v174 _recordDedupeKey:v175 alreadySeenKeys:v241];

                if (v174)
                {
                  v176 = [v172 clonedObjectWithContext:v240];
                  v177 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
                  {
                    v178 = [v172 identifier];
                    *buf = 138412290;
                    *v306 = v178;
                    _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_INFO, "Person added with local identifier, %@", buf, 0xCu);
                  }

                  [v243 addPersonsObject:v176];
                }

                else
                {
                  v176 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                  if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
                  {
                    [MOEventBundleStore _updateLongTermBundles:v290 context:v172];
                  }
                }

                v185 = [v172 contactIdentifier];

                if (v185)
                {
                  v186 = objc_opt_class();
                  v182 = [v172 contactIdentifier];
                  [v186 _recordDedupeKey:v182 alreadySeenKeys:v241];
LABEL_174:

                  continue;
                }
              }

              v169 = [v167 countByEnumeratingWithState:&v250 objects:v291 count:16];
            }

            while (v169);
          }

          v187 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
          {
            v188 = [v232 bundleIdentifier];
            *buf = 67109378;
            *v306 = obja;
            *&v306[4] = 2112;
            *&v306[6] = v188;
            _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_INFO, "%d, Ingesting photo trait for sub bundle, %@", buf, 0x12u);
          }

          v248 = 0u;
          v249 = 0u;
          v246 = 0u;
          v247 = 0u;
          v189 = [v232 photoTraits];
          v190 = [v189 countByEnumeratingWithState:&v246 objects:v288 count:16];
          v6 = v240;
          v72 = v228;
          if (v190)
          {
            v191 = v190;
            v192 = *v247;
            do
            {
              for (mm = 0; mm != v191; mm = mm + 1)
              {
                if (*v247 != v192)
                {
                  objc_enumerationMutation(v189);
                }

                v194 = *(*(&v246 + 1) + 8 * mm);
                v195 = objc_opt_class();
                v196 = [v194 identifier];
                LODWORD(v195) = [v195 _recordDedupeKey:v196 alreadySeenKeys:v244];

                if (v195)
                {
                  v197 = [v194 clonedObjectWithContext:v240];
                  [v243 addPhotoTraitsObject:v197];
                }
              }

              v191 = [v189 countByEnumeratingWithState:&v246 objects:v288 count:16];
            }

            while (v191);
          }

          v53 = v235;
LABEL_189:
          v65 = v227;
LABEL_190:
          v83 = v231;
        }

        v230 = [v229 countByEnumeratingWithState:&v270 objects:v300 count:16];
      }

      while (v230);
    }

    v198 = [v226 allObjects];
    [v243 setSubBundleIDs:v198];

    if (v53)
    {
      [v53 latitude];
      v200 = v199;
      v201 = [v243 place];
      [v201 setLatitude:v200];

      [v53 longitude];
      v203 = v202;
      v204 = [v243 place];
      [v204 setLongitude:v203];

      [v53 range];
      v206 = v205;
      v207 = [v243 place];
      [v207 setRange:v206];
    }

    v208 = [v243 events];
    v209 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v208 count]);
    [v243 setEventCount:v209];

    v245 = v218;
    LOBYTE(v209) = [v6 save:&v245];
    v8 = v245;

    v9 = &OBJC_IVAR___MOBiomeManager__setDefault;
    v22 = v217;
    if (v209)
    {

      v210 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
      v7 = v220;
      v31 = v222;
      v27 = 0;
      if (os_log_type_enabled(v210, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        *v306 = 0;
        *&v306[8] = 2048;
        *&v306[10] = v224;
        *&v306[18] = 2048;
        v307 = 1;
        _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_INFO, "updating summary trip bundles succeeded, updated, %lu, removed, %lu, saved, %lu", buf, 0x20u);
      }

      v8 = 0;
    }

    else
    {
      v210 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
      v7 = v220;
      v31 = v222;
      v27 = 0;
      if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v306 = v8;
        _os_log_error_impl(&_mh_execute_header, v210, OS_LOG_TYPE_ERROR, "summary trip error, %@", buf, 0xCu);
      }
    }

    [v6 reset];
    v21 = v216;
LABEL_202:

    if (v27)
    {
      break;
    }

    v10 = v31 + 1;
    if (v10 == v221)
    {
      v221 = [v7 countByEnumeratingWithState:&v284 objects:v312 count:16];
      if (!v221)
      {
        goto LABEL_205;
      }

      goto LABEL_3;
    }
  }

  v211 = v213;
LABEL_207:

  return v211;
}

- (void)removeEventBundles:(id)a3 CompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__37;
  v19 = __Block_byref_object_dispose__37;
  v20 = 0;
  v9 = [(MOEventBundleStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __59__MOEventBundleStore_removeEventBundles_CompletionHandler___block_invoke;
  v11[3] = &unk_10033EDC8;
  v10 = v7;
  v12 = v10;
  v13 = &v15;
  v14 = a2;
  [v9 performBlockAndWait:v11];

  [(MOEventBundleStore *)self reset];
  if (v8)
  {
    v8[2](v8, v16[5], &__NSDictionary0__struct);
  }

  _Block_object_dispose(&v15, 8);
}

void __59__MOEventBundleStore_removeEventBundles_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v21 + 1) + 8 * v9) bundleIdentifier];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v7);
  }

  v11 = +[MOEventBundleMO fetchRequest];
  v12 = [NSPredicate predicateWithFormat:@"bundleIdentifier IN %@", v4];
  [v11 setPredicate:v12];

  v13 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v11];
  [v13 setResultType:2];
  v14 = *(*(a1 + 40) + 8);
  obj = *(v14 + 40);
  v15 = [v3 executeRequest:v13 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  v16 = [v15 result];
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = NSStringFromSelector(*(a1 + 48));
    v19 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v26 = v18;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v19;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %@, error, %@", buf, 0x2Au);
  }
}

- (void)removeAllBundlesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__37;
  v12 = __Block_byref_object_dispose__37;
  v13 = 0;
  v6 = [(MOEventBundleStore *)self persistenceManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __60__MOEventBundleStore_removeAllBundlesWithCompletionHandler___block_invoke;
  v7[3] = &unk_10033EDF0;
  v7[4] = &v8;
  v7[5] = a2;
  [v6 performBlockAndWait:v7];

  [(MOEventBundleStore *)self reset];
  if (v5)
  {
    v5[2](v5, v9[5]);
  }

  _Block_object_dispose(&v8, 8);
}

void __60__MOEventBundleStore_removeAllBundlesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v4];
  [v5 setResultType:2];
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [v3 executeRequest:v5 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  v8 = [v7 result];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(*(a1 + 40));
    v11 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v11;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %@, error, %@", buf, 0x2Au);
  }
}

- (void)removeEventBundlesStartedWithinInterval:(id)a3 CompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__37;
  v30 = __Block_byref_object_dispose__37;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__37;
  v24 = __Block_byref_object_dispose__37;
  v25 = &off_10036BED8;
  v9 = objc_autoreleasePoolPush();
  v10 = [(MOEventBundleStore *)self persistenceManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __80__MOEventBundleStore_removeEventBundlesStartedWithinInterval_CompletionHandler___block_invoke;
  v15[3] = &unk_100335C08;
  v11 = v7;
  v16 = v11;
  v17 = &v26;
  v18 = &v20;
  v19 = a2;
  [v10 performBlockAndWait:v15];

  [(MOEventBundleStore *)self reset];
  objc_autoreleasePoolPop(v9);
  if (v8)
  {
    v12 = v27[5];
    if (v12)
    {
      v13 = &__NSDictionary0__struct;
    }

    else
    {
      v14 = v21[5];
      v32 = @"resultNumberOfBundleEvents";
      v33 = v14;
      v13 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    v8[2](v8, v12, v13);
    if (!v12)
    {
    }
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

void __80__MOEventBundleStore_removeEventBundlesStartedWithinInterval_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v63 = a2;
  v3 = +[MOEventBundleMO fetchRequest];
  v4 = [*(a1 + 32) startDate];
  v5 = [NSPredicate predicateWithFormat:@"startDate >= %@", v4];
  v92[0] = v5;
  v6 = [*(a1 + 32) endDate];
  v7 = [NSPredicate predicateWithFormat:@"startDate <= %@", v6];
  v92[1] = v7;
  v8 = [NSPredicate predicateWithFormat:@"filtered == NO"];
  v92[2] = v8;
  v9 = [NSArray arrayWithObjects:v92 count:3];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  [(MOEventBundle *)v3 setPredicate:v10];

  v11 = v63;
  v12 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
  v91 = v12;
  v13 = [NSArray arrayWithObjects:&v91 count:1];
  [(MOEventBundle *)v3 setSortDescriptors:v13];

  [(MOEventBundle *)v3 setReturnsObjectsAsFaults:0];
  v67 = a1;
  v15 = *(a1 + 40);
  v14 = (a1 + 40);
  v16 = *(v15 + 8);
  obj = *(v16 + 40);
  v17 = [v63 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
  v19 = *(v14[1] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v57 = NSStringFromSelector(*(v67 + 56));
    v58 = [v17 count];
    v59 = *(*(*(v67 + 40) + 8) + 40);
    *buf = 138413058;
    v77 = v57;
    v78 = 2112;
    v79 = v3;
    v80 = 2048;
    v81 = v58;
    v82 = 2112;
    v83 = v59;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (*(*(*v14 + 8) + 40) || ![v17 count])
  {
    [v63 reset];
  }

  else
  {
    v60 = v14;
    v62 = v3;
    v64 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v61 = v17;
    v22 = v17;
    v23 = [v22 countByEnumeratingWithState:&v71 objects:v90 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = 0;
      v65 = 0;
      v27 = 0;
      v28 = 0;
      v29 = *v72;
      v69 = v22;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v72 != v29)
          {
            objc_enumerationMutation(v69);
          }

          v31 = *(*(&v71 + 1) + 8 * i);
          v32 = [[MOEventBundle alloc] initWithEventBundleMO:v31];
          if ([(MOEventBundle *)v32 bundleManagementPolicy])
          {
            if ([(MOEventBundle *)v32 interfaceType]== 13)
            {
              ++v28;
            }

            else if ([(MOEventBundle *)v32 interfaceType]== 11)
            {
              v68 = v25;
              v36 = v27;
              v37 = [(MOEventBundle *)v32 resources];
              v38 = [v37 count];

              if (v38)
              {
                v66 = v28;
                v39 = [(MOEventBundle *)v32 resources];
                v40 = [v39 firstObject];
                v41 = [v40 name];

                v42 = [v64 objectForKey:v41];
                if (v42)
                {
                  [v31 setFiltered:1];
                  ++v65;
                  v43 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    v44 = NSStringFromSelector(*(v67 + 56));
                    *buf = 138412546;
                    v77 = v44;
                    v78 = 2112;
                    v79 = v32;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@, evergreen bundle to delete (old), %@", buf, 0x16u);
                  }
                }

                else
                {
                  v43 = [(MOEventBundle *)v32 suggestionID];
                  [v64 setObject:v43 forKey:v41];
                }

                v28 = v66;
              }

              v27 = v36 + 1;
              v25 = v68;
            }

            ++v26;
          }

          else
          {
            [v31 setFiltered:1];
            v33 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              NSStringFromSelector(*(v67 + 56));
              v35 = v34 = v28;
              *buf = 138412546;
              v77 = v35;
              v78 = 2112;
              v79 = v32;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@, bundle to delete, %@", buf, 0x16u);

              v28 = v34;
            }

            ++v25;
          }
        }

        v22 = v69;
        v24 = [v69 countByEnumeratingWithState:&v71 objects:v90 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v65 = 0;
      v27 = 0;
      v28 = 0;
    }

    v45 = v28;

    v46 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = NSStringFromSelector(*(v67 + 56));
      v48 = [v22 count];
      *buf = 138412546;
      v77 = v47;
      v78 = 2048;
      v79 = v48;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%@, trying to delete event bundles count %lu", buf, 0x16u);
    }

    v49 = *(*v60 + 8);
    v70 = *(v49 + 40);
    v11 = v63;
    v50 = [v63 save:&v70];
    objc_storeStrong((v49 + 40), v70);
    v51 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v52 = v51;
    if (v50)
    {
      v53 = v25;
      v54 = v27;
      v17 = v61;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v55 = NSStringFromSelector(*(v67 + 56));
        v56 = [*(*(*(v67 + 48) + 8) + 40) unsignedLongValue];
        *buf = 138413826;
        v77 = v55;
        v78 = 2048;
        v79 = v56;
        v80 = 2048;
        v81 = v53;
        v82 = 2048;
        v83 = v26;
        v84 = 2048;
        v85 = v45;
        v86 = 2048;
        v87 = v54;
        v88 = 2048;
        v89 = v65;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%@, event bundles delete operation succeeded, total, %lu, deleted, %lu, not deleted, %lu, trip, %lu, evergreen, %lu (deduped, %lu)", buf, 0x48u);
      }
    }

    else
    {
      v17 = v61;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        __80__MOEventBundleStore_removeEventBundlesStartedWithinInterval_CompletionHandler___block_invoke_cold_1(v67);
      }
    }

    v3 = v62;
  }
}

- (void)purgeDeletedEventBundlesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__37;
  v22 = __Block_byref_object_dispose__37;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__37;
  v16 = __Block_byref_object_dispose__37;
  v17 = &off_10036BED8;
  v6 = objc_autoreleasePoolPush();
  v7 = [(MOEventBundleStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __68__MOEventBundleStore_purgeDeletedEventBundlesWithCompletionHandler___block_invoke;
  v11[3] = &unk_10033EE18;
  v11[4] = &v18;
  v11[5] = &v12;
  v11[6] = a2;
  [v7 performBlockAndWait:v11];

  [(MOEventBundleStore *)self reset];
  objc_autoreleasePoolPop(v6);
  if (v5)
  {
    v8 = v19[5];
    if (v8)
    {
      v9 = &__NSDictionary0__struct;
    }

    else
    {
      v10 = v13[5];
      v24 = @"resultNumberOfBundleEvents";
      v25 = v10;
      v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    }

    v5[2](v5, v8, v9);
    if (!v8)
    {
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

void __68__MOEventBundleStore_purgeDeletedEventBundlesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"filtered == YES"];
  v79 = v5;
  v6 = [NSArray arrayWithObjects:&v79 count:1];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];
  [v4 setPredicate:v7];

  v8 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
  v78 = v8;
  v9 = [NSArray arrayWithObjects:&v78 count:1];
  [v4 setSortDescriptors:v9];

  [v4 setReturnsObjectsAsFaults:0];
  v53 = a1;
  v54 = v4;
  v11 = *(a1 + 32);
  v10 = a1 + 32;
  v12 = *(v11 + 8);
  obj = *(v12 + 40);
  v13 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v48 = NSStringFromSelector(*(v53 + 48));
    v49 = [v13 count];
    v50 = *(*(*(v53 + 32) + 8) + 40);
    *buf = 138413058;
    v68 = v48;
    v69 = 2112;
    v70 = v54;
    v71 = 2048;
    v72 = v49;
    v73 = 2112;
    v74 = v50;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (*(*(*v10 + 8) + 40) || ![v13 count])
  {
    [v3 reset];
  }

  else
  {
    v51 = v10;
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v52 = v13;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v62;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v62 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v61 + 1) + 8 * i);
          v23 = [v22 suggestionID];

          if (v23)
          {
            v24 = [v22 suggestionID];
            v25 = [v15 containsObject:v24];

            if (v25)
            {
              [v16 addObject:v22];
            }

            else
            {
              v27 = [v22 suggestionID];
              [v15 addObject:v27];
            }
          }

          else
          {
            v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v55 = NSStringFromSelector(*(v53 + 48));
              v28 = [v17 count];
              v29 = *(*(*(v53 + 32) + 8) + 40);
              *buf = 138413314;
              v68 = v55;
              v69 = 2112;
              v70 = v54;
              v71 = 2048;
              v72 = v28;
              v73 = 2112;
              v74 = v29;
              v75 = 2112;
              v76 = v22;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@, request, %@, results count, %lu, error, %@, incorrect context in eventBundle, %@", buf, 0x34u);
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v61 objects:v77 count:16];
      }

      while (v19);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v30 = v16;
    v31 = [v30 countByEnumeratingWithState:&v57 objects:v66 count:16];
    v32 = v51;
    if (v31)
    {
      v33 = v31;
      v34 = *v58;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v58 != v34)
          {
            objc_enumerationMutation(v30);
          }

          [v3 deleteObject:{*(*(&v57 + 1) + 8 * j), v51}];
        }

        v33 = [v30 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v33);
    }

    v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 count]);
    v37 = *(*(v53 + 40) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    v39 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = NSStringFromSelector(*(v53 + 48));
      v41 = [v15 count];
      v42 = [v30 count];
      *buf = 138412802;
      v68 = v40;
      v69 = 2048;
      v70 = v41;
      v71 = 2048;
      v72 = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%@, purge deleted events, stay, %lu, deleted, %lu", buf, 0x20u);
    }

    v43 = *(*v32 + 8);
    v56 = *(v43 + 40);
    v44 = [v3 save:&v56];
    objc_storeStrong((v43 + 40), v56);
    v45 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v46 = v45;
    if (v44)
    {
      v13 = v52;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v47 = NSStringFromSelector(*(v53 + 48));
        *buf = 138412290;
        v68 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%@, event bundles delete operation succeeded", buf, 0xCu);
      }
    }

    else
    {
      v13 = v52;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        __68__MOEventBundleStore_purgeDeletedEventBundlesWithCompletionHandler___block_invoke_cold_1(v53);
      }
    }
  }
}

- (void)purgeExpiredEventBundlesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__37;
  v21 = __Block_byref_object_dispose__37;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__37;
  v15 = __Block_byref_object_dispose__37;
  v16 = &off_10036BED8;
  v6 = [(MOEventBundleStore *)self persistenceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __68__MOEventBundleStore_purgeExpiredEventBundlesWithCompletionHandler___block_invoke;
  v10[3] = &unk_100335C08;
  v10[4] = self;
  v10[5] = &v17;
  v10[6] = &v11;
  v10[7] = a2;
  [v6 performBlockAndWait:v10];

  if (v5)
  {
    v7 = v18[5];
    if (v7)
    {
      v8 = &__NSDictionary0__struct;
    }

    else
    {
      v9 = v12[5];
      v23 = @"resultNumberOfBundleEvents";
      v24 = v9;
      v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    }

    v5[2](v5, v7, v8);
    if (!v7)
    {
    }
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
}

void __68__MOEventBundleStore_purgeExpiredEventBundlesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = [*(a1 + 32) configurationManager];
  [v5 getDoubleSettingForKey:@"EventBundleManagerOverrideMaximumEventBundleAge" withFallback:2419200.0];
  v7 = v6;

  v8 = +[NSDate date];
  v9 = [NSDate dateWithTimeInterval:v8 sinceDate:-v7];

  v10 = [*(a1 + 32) configurationManager];
  [v10 getDoubleSettingForKey:@"EventBundleManagerOverrideRefreshMinimumLookBackWindowFull" withFallback:2419200.0];
  v12 = v11;

  v13 = +[NSDate date];
  v14 = [NSDate dateWithTimeInterval:v13 sinceDate:-v12];

  v15 = +[NSDate date];
  v16 = [NSPredicate predicateWithFormat:@"expirationDate < %@ || endDate < %@ || (endDate < %@  && filtered == 1)", v15, v9, v14];
  [v4 setPredicate:v16];

  [v4 setReturnsObjectsAsFaults:0];
  v17 = a1 + 40;
  v18 = *(*(a1 + 40) + 8);
  obj = *(v18 + 40);
  v19 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v18 + 40), obj);
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 count]);
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v35 = NSStringFromSelector(*(a1 + 56));
    v36 = [v19 count];
    v37 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v46 = v35;
    v47 = 2112;
    v48 = v4;
    v49 = 2048;
    v50 = v36;
    v51 = 2112;
    v52 = v37;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*v17 + 8) + 40) && [v19 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = v19;
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        v28 = 0;
        do
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v3 deleteObject:*(*(&v39 + 1) + 8 * v28)];
          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v26);
    }

    v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v24 count];
      *buf = 134217984;
      v46 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "trying to purge event bundles count %lu", buf, 0xCu);
    }

    v31 = *(*v17 + 8);
    v38 = *(v31 + 40);
    v32 = [v3 save:&v38];
    objc_storeStrong((v31 + 40), v38);
    v33 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "saving event bundles purge operation succeeded", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      __68__MOEventBundleStore_purgeExpiredEventBundlesWithCompletionHandler___block_invoke_cold_1(v17);
    }
  }

  [v3 reset];
}

- (void)purgeEventBundlesWithNoEventsAssociatedWithCompletionHandler:(id)a3
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__37;
  v18 = __Block_byref_object_dispose__37;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [(MOEventBundleStore *)self persistenceManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __83__MOEventBundleStore_purgeEventBundlesWithNoEventsAssociatedWithCompletionHandler___block_invoke;
  v9[3] = &unk_10033EE18;
  v9[5] = &v10;
  v9[6] = a2;
  v9[4] = &v14;
  [v6 performBlockAndWait:v9];

  if (v5)
  {
    v7 = v15[5];
    if (v7)
    {
      v8 = &__NSDictionary0__struct;
    }

    else
    {
      v20 = @"resultNumberOfBundleEvents";
      v6 = [NSNumber numberWithInt:*(v11 + 6)];
      v21 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    v5[2](v5, v7, v8);
    if (!v7)
    {
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __83__MOEventBundleStore_purgeEventBundlesWithNoEventsAssociatedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"interfaceType != %luu", 11];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = a1 + 32;
  v7 = *(*(a1 + 32) + 8);
  obj = *(v7 + 40);
  v8 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v24 = NSStringFromSelector(*(a1 + 48));
    v25 = [v8 count];
    v26 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v36 = v24;
    v37 = 2112;
    v38 = v4;
    v39 = 2048;
    v40 = v25;
    v41 = 2112;
    v42 = v26;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (*(*(*v6 + 8) + 40) || ![v8 count])
  {
    [v3 reset];
  }

  else
  {
    v27 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 events];
          v17 = [v16 count];

          if (!v17)
          {
            [v3 deleteObject:v15];
            ++*(*(*(a1 + 40) + 8) + 24);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 67109120;
      LODWORD(v36) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "trying to purge non-evergreen event bundles with no events count %i", buf, 8u);
    }

    v20 = *(*v6 + 8);
    v28 = *(v20 + 40);
    v21 = [v3 save:&v28];
    objc_storeStrong((v20 + 40), v28);
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v23 = v22;
    v4 = v27;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "saving non-evergreen event bundles purge operation succeeded", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __83__MOEventBundleStore_purgeEventBundlesWithNoEventsAssociatedWithCompletionHandler___block_invoke_cold_1(v6);
    }

    [v3 reset];
  }
}

- (void)purgeInvalidEvergreenBundlesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__37;
  v18 = __Block_byref_object_dispose__37;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [(MOEventBundleStore *)self persistenceManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __72__MOEventBundleStore_purgeInvalidEvergreenBundlesWithCompletionHandler___block_invoke;
  v9[3] = &unk_10033EE18;
  v9[5] = &v10;
  v9[6] = a2;
  v9[4] = &v14;
  [v6 performBlockAndWait:v9];

  if (v5)
  {
    v7 = v15[5];
    if (v7)
    {
      v8 = &__NSDictionary0__struct;
    }

    else
    {
      v20 = @"resultNumberOfBundleEvents";
      v6 = [NSNumber numberWithInt:*(v11 + 6)];
      v21 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    v5[2](v5, v7, v8);
    if (!v7)
    {
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __72__MOEventBundleStore_purgeInvalidEvergreenBundlesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"interfaceType == %luu", 11];
  [v4 setPredicate:v5];

  v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
  v53 = v6;
  v7 = [NSArray arrayWithObjects:&v53 count:1];
  [v4 setSortDescriptors:v7];

  [v4 setReturnsObjectsAsFaults:0];
  v35 = a1;
  v36 = v3;
  v9 = *(a1 + 32);
  v8 = a1 + 32;
  v10 = *(v9 + 8);
  obj = *(v10 + 40);
  v11 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v29 = NSStringFromSelector(*(v35 + 48));
    v30 = [v11 count];
    v31 = *(*(*(v35 + 32) + 8) + 40);
    *buf = 138413058;
    v46 = v29;
    v47 = 2112;
    v48 = v4;
    v49 = 2048;
    v50 = v30;
    v51 = 2112;
    v52 = v31;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (*(*(*v8 + 8) + 40) || ![v11 count])
  {
    v13 = v11;
  }

  else
  {
    v33 = v8;
    v34 = v4;
    v32 = [v11 count];
    v13 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = v11;
    v14 = [v37 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v37);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          v19 = [v18 bundleSubType];
          v20 = [v19 intValue];

          v21 = [NSNumber numberWithUnsignedInteger:[MOEventBundle castEvergreenSubType:v20]];
          if ([v13 containsObject:v21])
          {
            [v36 deleteObject:v18];
            v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v46 = v18;
              v47 = 2048;
              v48 = v20;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "invalid Evergreen bundle, %@, subType, %lu", buf, 0x16u);
            }

            ++*(*(*(v35 + 40) + 8) + 24);
          }

          else
          {
            [v13 addObject:v21];
          }
        }

        v15 = [v37 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v15);
    }

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(*(*(v35 + 40) + 8) + 24);
      *buf = 134218240;
      v46 = v32;
      v47 = 2048;
      v48 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "purge Evergreen, total, %lu, invalid, %lu", buf, 0x16u);
    }

    v25 = *(*v33 + 8);
    v38 = *(v25 + 40);
    v26 = [v36 save:&v38];
    objc_storeStrong((v25 + 40), v38);
    v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "saving evergreen event bundles purge operation succeeded", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __72__MOEventBundleStore_purgeInvalidEvergreenBundlesWithCompletionHandler___block_invoke_cold_1(v33);
    }

    v4 = v34;
  }

  [v36 reset];
}

- (void)purgeEventBundlesWithRehydrationFailureCount:(int)a3 andHandler:(id)a4
{
  v7 = a4;
  if (a3 <= 0)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleStore purgeEventBundlesWithRehydrationFailureCount:a3 andHandler:v11];
    }

    if (v7)
    {
      v30 = @"resultNumberOfEvents";
      v31 = &off_10036BED8;
      v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v7[2](v7, 0, v12);
    }
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__37;
    v26 = __Block_byref_object_dispose__37;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__37;
    v20 = __Block_byref_object_dispose__37;
    v21 = &off_10036BED8;
    v8 = [(MOEventBundleStore *)self persistenceManager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __78__MOEventBundleStore_purgeEventBundlesWithRehydrationFailureCount_andHandler___block_invoke;
    v14[3] = &unk_10033EE40;
    v15 = a3;
    v14[4] = &v22;
    v14[5] = &v16;
    v14[6] = a2;
    [v8 performBlockAndWait:v14];

    if (v7)
    {
      v9 = v23[5];
      if (v9)
      {
        v10 = &__NSDictionary0__struct;
      }

      else
      {
        v13 = v17[5];
        v28 = @"resultNumberOfBundleEvents";
        v29 = v13;
        v10 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      }

      v7[2](v7, v9, v10);
      if (!v9)
      {
      }
    }

    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }
}

void __78__MOEventBundleStore_purgeEventBundlesWithRehydrationFailureCount_andHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"ANY events.rehydrationFailCount >= %d", *(a1 + 56)];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(*(a1 + 48));
    v13 = [v7 count];
    v14 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v40 = v12;
    v41 = 2112;
    v42 = v4;
    v43 = 2048;
    v44 = v13;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 32) + 8) + 40) && [v7 count])
  {
    v29 = a1 + 32;
    v30 = v7;
    v31 = v4;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v20 bundleIdentifier];
            *buf = 138412290;
            v40 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "deleting bundle due to rehydration failures %@", buf, 0xCu);
          }

          [v3 deleteObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v17);
    }

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v15 count];
      *buf = 134217984;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "trying to purge event bundles due to rehydration failure count %lu", buf, 0xCu);
    }

    v25 = *(*v29 + 8);
    v32 = *(v25 + 40);
    v26 = [v3 save:&v32];
    objc_storeStrong((v25 + 40), v32);
    v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v28 = v27;
    if (v26)
    {
      v7 = v30;
      v4 = v31;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "saving event bundles purge due to rehydration failure succeeded", buf, 2u);
      }
    }

    else
    {
      v7 = v30;
      v4 = v31;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __78__MOEventBundleStore_purgeEventBundlesWithRehydrationFailureCount_andHandler___block_invoke_cold_1(v29);
      }
    }
  }

  [v3 reset];
}

- (void)purgeDanglingEventBundlesWithHandler:(id)a3
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__37;
  v21 = __Block_byref_object_dispose__37;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__37;
  v15 = __Block_byref_object_dispose__37;
  v16 = &off_10036BED8;
  v6 = [(MOEventBundleStore *)self persistenceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __59__MOEventBundleStore_purgeDanglingEventBundlesWithHandler___block_invoke;
  v10[3] = &unk_10033EE18;
  v10[4] = &v17;
  v10[5] = &v11;
  v10[6] = a2;
  [v6 performBlockAndWait:v10];

  if (v5)
  {
    v7 = v18[5];
    if (v7)
    {
      v8 = &__NSDictionary0__struct;
    }

    else
    {
      v9 = v12[5];
      v23 = @"resultNumberOfBundleEvents";
      v24 = v9;
      v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    }

    v5[2](v5, v7, v8);
    if (!v7)
    {
    }
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
}

void __59__MOEventBundleStore_purgeDanglingEventBundlesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"events.@count < eventCount"];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v42 = v3;
  v7 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(*(a1 + 48));
    v13 = [v7 count];
    v14 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v58 = v12;
    v59 = 2112;
    *v60 = v4;
    *&v60[8] = 2048;
    *&v60[10] = v13;
    v61 = 2112;
    v62 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 32) + 8) + 40) && [v7 count])
  {
    v37 = a1 + 32;
    v38 = v7;
    v39 = v4;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v40 = v7;
    v43 = [v40 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v43)
    {
      v41 = *v51;
      do
      {
        v15 = 0;
        do
        {
          if (*v51 != v41)
          {
            objc_enumerationMutation(v40);
          }

          v44 = v15;
          v16 = *(*(&v50 + 1) + 8 * v15);
          v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v16 bundleIdentifier];
            v19 = [v16 eventCount];
            v20 = [v19 intValue];
            v21 = [v16 events];
            v22 = [v21 count];
            *buf = 138412802;
            v58 = v18;
            v59 = 1024;
            *v60 = v20;
            *&v60[4] = 2048;
            *&v60[6] = v22;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "deleting dangling bundle %@, initial event count %d, current event count %lu", buf, 0x1Cu);
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v23 = [v16 events];
          v24 = [v23 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v47;
            do
            {
              v27 = 0;
              do
              {
                if (*v47 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v46 + 1) + 8 * v27);
                v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  v30 = [v16 bundleIdentifier];
                  v31 = [v28 eventIdentifier];
                  *buf = 138412546;
                  v58 = v30;
                  v59 = 2112;
                  *v60 = v31;
                  _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "dangling bundle %@ is associated with event %@", buf, 0x16u);
                }

                v27 = v27 + 1;
              }

              while (v25 != v27);
              v25 = [v23 countByEnumeratingWithState:&v46 objects:v55 count:16];
            }

            while (v25);
          }

          [v42 deleteObject:v16];
          v15 = v44 + 1;
        }

        while ((v44 + 1) != v43);
        v43 = [v40 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v43);
    }

    v32 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "trying to purge dangling event bundles", buf, 2u);
    }

    v33 = *(*v37 + 8);
    v45 = *(v33 + 40);
    v34 = [v42 save:&v45];
    objc_storeStrong((v33 + 40), v45);
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    v36 = v35;
    if (v34)
    {
      v7 = v38;
      v4 = v39;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "saving dangling event bundles purge succeeded", buf, 2u);
      }
    }

    else
    {
      v7 = v38;
      v4 = v39;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __59__MOEventBundleStore_purgeDanglingEventBundlesWithHandler___block_invoke_cold_1(v37);
      }
    }
  }

  [v42 reset];
}

- (void)fetchEventBundleWithOptions:(id)a3 CompletionHandler:(id)a4
{
  v7 = a3;
  v41 = a4;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__37;
  v70 = __Block_byref_object_dispose__37;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__37;
  v64 = __Block_byref_object_dispose__37;
  v65 = 0;
  context = objc_autoreleasePoolPush();
  v8 = [(MOEventBundleStore *)self persistenceManager];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = __68__MOEventBundleStore_fetchEventBundleWithOptions_CompletionHandler___block_invoke;
  v55[3] = &unk_100335C08;
  v42 = v7;
  v56 = v42;
  v57 = &v66;
  v58 = &v60;
  v59 = a2;
  [v8 performBlockAndWait:v55];

  [(MOEventBundleStore *)self reset];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__37;
  v53 = __Block_byref_object_dispose__37;
  v54 = 0;
  if (![v61[5] count])
  {
    goto LABEL_28;
  }

  v9 = [(MOEventBundleStore *)self engagementDelegate];
  [v9 eventBundleStore:self needsEngagementInfoForBundles:v61[5]];

  if (([v42 skipRanking] & 1) == 0)
  {
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = __68__MOEventBundleStore_fetchEventBundleWithOptions_CompletionHandler___block_invoke_279;
    v48[3] = &unk_100337E98;
    v48[4] = &v49;
    [(MOEventBundleStore *)self getRankingParamsandCompletionHandler:v48];
    if (v50[5])
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v50[5];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        v12 = "using stored ranking params succeeded %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v12, &buf, 0xCu);
      }
    }

    else
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = v50[5];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        v12 = "using default ranking params %@";
        goto LABEL_9;
      }
    }

    v14 = [[MOEventBundleRanking alloc] initWithConfigurationManager:self->_configurationManager];
    [(MOEventBundleRanking *)v14 setRankingParamsFromRankingParamsMO:v50[5]];
    v39 = v14;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__37;
    v76 = __Block_byref_object_dispose__37;
    v77 = 0;
    v15 = [v42 dateInterval];
    v16 = [v15 startDate];

    if (v16)
    {
      v17 = [v42 dateInterval];
      v18 = [v17 startDate];
      v19 = [NSDate firstSaturdayBeforeReferenceDate:v18];

      v20 = [v42 dateInterval];
      v21 = [v20 startDate];
      v22 = [v19 isBeforeDate:v21];

      if (v22)
      {
        v23 = [NSDateInterval alloc];
        v24 = [v42 dateInterval];
        v25 = [v24 startDate];
        v26 = [v23 initWithStartDate:v19 endDate:v25];

        v27 = [NSSet setWithObject:&off_10036BEF0];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = __68__MOEventBundleStore_fetchEventBundleWithOptions_CompletionHandler___block_invoke_286;
        v47[3] = &unk_100337E98;
        v47[4] = &buf;
        [(MOEventBundleStore *)self getEventBundleStartedWithInterval:v26 interfaceTypes:v27 CompletionHandler:v47];
      }
    }

    v28 = objc_autoreleasePoolPush();
    [(MOEventBundleRanking *)v14 identifyRepetitiveSignificantContactBundlesFromBundles:v61[5] precedingSignificantContactBundles:*(*(&buf + 1) + 40)];
    objc_autoreleasePoolPop(v28);
    v29 = objc_autoreleasePoolPush();
    [(MOEventBundleRanking *)v14 generateBundleRanking:v61[5] withMinRecommendedBundleCountRequirement:1];
    objc_autoreleasePoolPop(v29);
    _Block_object_dispose(&buf, 8);

    goto LABEL_15;
  }

  v39 = 0;
LABEL_15:
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = v61[5];
  v31 = [v30 countByEnumeratingWithState:&v43 objects:v72 count:16];
  if (v31)
  {
    v32 = *v44;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v43 + 1) + 8 * i);
        if (+[MOEventBundleStore isExtendedLogEnabled])
        {
          v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [v34 description];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "final fetched event bundle from store :%@", &buf, 0xCu);
          }
        }

        else
        {
          v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v37 = [v34 shortDescription];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "final fetched event bundle from store :%@", &buf, 0xCu);
          }
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v43 objects:v72 count:16];
    }

    while (v31);
  }

LABEL_28:
  _Block_object_dispose(&v49, 8);

  objc_autoreleasePoolPop(context);
  v38 = objc_autoreleasePoolPush();
  v41[2](v41, v61[5], v67[5]);
  objc_autoreleasePoolPop(v38);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
}

void __68__MOEventBundleStore_fetchEventBundleWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v57 = +[MOEventBundleMO fetchRequest];
  v4 = +[NSMutableArray array];
  v5 = [NSPredicate predicateWithFormat:@"bundleIdentifier!=nil"];
  [v4 addObject:v5];

  v6 = [NSPredicate predicateWithFormat:@"suggestionID!=nil"];
  [v4 addObject:v6];

  if (([*(a1 + 32) includeDeletedBundles] & 1) == 0)
  {
    v7 = [NSPredicate predicateWithFormat:@"filtered == 0"];
    [v4 addObject:v7];
  }

  v8 = [*(a1 + 32) categories];
  v9 = [v8 count];

  v10 = &GEOPOICategoryGasStation_ptr;
  v58 = v4;
  if (v9)
  {
    v11 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = [*(a1 + 32) categories];
    v13 = [v12 countByEnumeratingWithState:&v64 objects:v81 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v65;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v65 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [NSPredicate predicateWithFormat:@"%@ IN categories", *(*(&v64 + 1) + 8 * i)];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v64 objects:v81 count:16];
      }

      while (v14);
    }

    v10 = &GEOPOICategoryGasStation_ptr;
    v18 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];
    [v4 addObject:v18];
  }

  v19 = [*(a1 + 32) dateInterval];

  if (v19)
  {
    v20 = v10[174];
    v21 = [*(a1 + 32) dateInterval];
    v22 = [v21 endDate];
    v23 = [NSPredicate predicateWithFormat:@"startDate <= %@", v22];
    v80[0] = v23;
    v56 = v3;
    v24 = [*(a1 + 32) dateInterval];
    v25 = [v24 startDate];
    v26 = [NSPredicate predicateWithFormat:@"endDate >= %@", v25];
    v80[1] = v26;
    v27 = [NSArray arrayWithObjects:v80 count:2];
    v28 = [v20 andPredicateWithSubpredicates:v27];
    [v58 addObject:v28];

    v3 = v56;
    v10 = &GEOPOICategoryGasStation_ptr;

    v4 = v58;
  }

  v29 = [*(a1 + 32) identifiers];
  v30 = [v29 count];

  if (v30)
  {
    v31 = [*(a1 + 32) identifiers];
    v32 = [NSPredicate predicateWithFormat:@"bundleIdentifier IN %@", v31];
    [v4 addObject:v32];
  }

  if ([*(a1 + 32) interfaceType] <= 0x10)
  {
    v33 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"interfaceType == %d", [*(a1 + 32) interfaceType]);
    [v4 addObject:v33];
  }

  v34 = v57;
  if ([v4 count])
  {
    v35 = [v10[174] andPredicateWithSubpredicates:v4];
    [v57 setPredicate:v35];
  }

  v36 = [*(a1 + 32) limit];

  if (v36)
  {
    v37 = [*(a1 + 32) limit];
    [v57 setFetchLimit:{objc_msgSend(v37, "unsignedIntegerValue")}];
  }

  [v57 setReturnsObjectsAsFaults:0];
  v38 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
  v79 = v38;
  v39 = [NSArray arrayWithObjects:&v79 count:1];
  [v57 setSortDescriptors:v39];

  [v57 setFetchBatchSize:100];
  v40 = *(*(a1 + 40) + 8);
  obj = *(v40 + 40);
  v41 = [v3 executeFetchRequest:v57 error:&obj];
  objc_storeStrong((v40 + 40), obj);
  v42 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v52 = NSStringFromSelector(*(a1 + 56));
    v53 = [v41 count];
    v54 = *(a1 + 32);
    v55 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413314;
    v70 = v52;
    v71 = 2112;
    v72 = v57;
    v73 = 2048;
    v74 = v53;
    v75 = 2112;
    v76 = v55;
    v77 = 2112;
    v78 = v54;
    _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@, options, %@", buf, 0x34u);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v43 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v41 count]);
    v44 = *(*(a1 + 48) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v46 = v41;
    v47 = [v46 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v60;
      do
      {
        for (j = 0; j != v48; j = j + 1)
        {
          if (*v60 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = [[MOEventBundle alloc] initWithEventBundleMO:*(*(&v59 + 1) + 8 * j)];
          if (v51)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v51];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v48);
    }

    v34 = v57;
    v4 = v58;
  }
}

uint64_t __68__MOEventBundleStore_fetchEventBundleWithOptions_CompletionHandler___block_invoke_279(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v11 = v5;
    v5 = [v5 count];
    v6 = v11;
    if (v5)
    {
      v7 = [v11 objectAtIndexedSubscript:0];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = v11;
    }
  }

  return _objc_release_x1(v5, v6);
}

void __68__MOEventBundleStore_fetchEventBundleWithOptions_CompletionHandler___block_invoke_286(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }
}

- (void)fetchEventBundlesWithPredicate:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__37;
  v23[4] = __Block_byref_object_dispose__37;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__37;
  v21 = __Block_byref_object_dispose__37;
  v22 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [(MOEventBundleStore *)self persistenceManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __71__MOEventBundleStore_fetchEventBundlesWithPredicate_completionHandler___block_invoke;
  v12[3] = &unk_100335C08;
  v11 = v7;
  v13 = v11;
  v14 = v23;
  v15 = &v17;
  v16 = a2;
  [v10 performBlockAndWait:v12];

  v8[2](v8, v18[5], 0);
  objc_autoreleasePoolPop(v9);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);
}

void __71__MOEventBundleStore_fetchEventBundlesWithPredicate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = v4;
  if (*(a1 + 32))
  {
    [v4 setPredicate:?];
  }

  [v5 setReturnsObjectsAsFaults:0];
  v6 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v39 = v6;
  v7 = [NSArray arrayWithObjects:&v39 count:1];
  [v5 setSortDescriptors:v7];

  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v3 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = NSStringFromSelector(*(a1 + 56));
    v12 = [v9 count];
    v13 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v32 = v11;
    v33 = 2112;
    v34 = v5;
    v35 = 2048;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v9;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * v21);
          v23 = [MOEventBundle alloc];
          v24 = [(MOEventBundle *)v23 initWithEventBundleMO:v22, v25];
          if (v24)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v24];
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }
  }
}

- (void)fetchEventBundleWithGranularity:(unint64_t)a3 interfaceTypes:(id)a4 CompletionHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__37;
  v40 = __Block_byref_object_dispose__37;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__37;
  v34 = __Block_byref_object_dispose__37;
  v35 = 0;
  v11 = [(MOEventBundleStore *)self persistenceManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __87__MOEventBundleStore_fetchEventBundleWithGranularity_interfaceTypes_CompletionHandler___block_invoke;
  v24[3] = &unk_10033EE68;
  v19 = v9;
  v25 = v19;
  v26 = &v36;
  v28 = a3;
  v29 = a2;
  v27 = &v30;
  [v11 performBlockAndWait:v24];

  if ([v31[5] count])
  {
    v12 = [(MOEventBundleStore *)self engagementDelegate];
    [v12 eventBundleStore:self needsEngagementInfoForBundles:v31[5]];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v31[5];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v44 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v43 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "fetched event bundle from store :%@", buf, 0xCu);
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v20 objects:v44 count:16];
      }

      while (v14);
    }
  }

  v10[2](v10, v31[5], v37[5]);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

void __87__MOEventBundleStore_fetchEventBundleWithGranularity_interfaceTypes_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = +[NSMutableArray array];
  v6 = [NSPredicate predicateWithFormat:@"interfaceType IN %@ ", *(a1 + 32)];
  [v5 addObject:v6];

  v7 = [NSPredicate predicateWithFormat:@"summarizationGranularity == %lu", *(a1 + 56)];
  [v5 addObject:v7];

  v8 = [NSPredicate predicateWithFormat:@"isAggregatedAndSuppressed == 0"];
  [v5 addObject:v8];

  if ([v5 count])
  {
    v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v9];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v10 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v42 = v10;
  v11 = [NSArray arrayWithObjects:&v42 count:1];
  [v4 setSortDescriptors:v11];

  [v4 setFetchBatchSize:100];
  v12 = *(*(a1 + 40) + 8);
  obj = *(v12 + 40);
  v13 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = NSStringFromSelector(*(a1 + 64));
    v25 = [v13 count];
    v26 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v35 = v24;
    v36 = 2112;
    v37 = v4;
    v38 = 2048;
    v39 = v25;
    v40 = 2112;
    v41 = v26;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v27 = v3;
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[MOEventBundle alloc] initWithEventBundleMO:*(*(&v28 + 1) + 8 * v22)];
          if (v23)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v23];
          }

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v20);
    }

    v3 = v27;
  }

  [v3 reset];
}

- (void)fetchBundleTypeDistributionFromStoreWithHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__37;
  v15 = __Block_byref_object_dispose__37;
  v16 = 0;
  v5 = objc_opt_new();
  v6 = [(MOEventBundleStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __70__MOEventBundleStore_fetchBundleTypeDistributionFromStoreWithHandler___block_invoke;
  v8[3] = &unk_100335C30;
  v7 = v5;
  v9 = v7;
  v10 = &v11;
  [v6 performBlockAndWait:v8];

  v4[2](v4, v7, v12[5]);
  _Block_object_dispose(&v11, 8);
}

void __70__MOEventBundleStore_fetchBundleTypeDistributionFromStoreWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 1;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[MOEventBundleMO fetchRequest];
    v7 = [NSPredicate predicateWithFormat:@"interfaceType == %d", v4];
    [v6 setPredicate:v7];

    v18 = 0;
    v8 = [v3 countForFetchRequest:v6 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = [NSNumber numberWithUnsignedInteger:v8];
      v11 = *(a1 + 32);
      v12 = [NSNumber numberWithInt:v4];
      [v11 setObject:v10 forKeyedSubscript:v12];
    }

    v13 = *(*(a1 + 40) + 8);
    v16 = *(v13 + 40);
    v14 = (v13 + 40);
    v15 = v16;
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v9;
    }

    objc_storeStrong(v14, v17);

    objc_autoreleasePoolPop(v5);
    v4 = (v4 + 1);
  }

  while (v4 != 17);
  [v3 reset];
}

- (void)getRankingParamsandCompletionHandler:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__37;
  v18 = __Block_byref_object_dispose__37;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__37;
  v12 = __Block_byref_object_dispose__37;
  v13 = 0;
  v5 = [(MOEventBundleStore *)self persistenceManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __59__MOEventBundleStore_getRankingParamsandCompletionHandler___block_invoke;
  v7[3] = &unk_10033EEB8;
  v7[4] = &v14;
  v7[5] = &v8;
  [v5 performBlockAndWait:v7];

  v6 = [NSArray arrayWithArray:v9[5]];
  v4[2](v4, v6, v15[5]);

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
}

void __59__MOEventBundleStore_getRankingParamsandCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MORankingParamsMO fetchRequest];
  [v4 setFetchLimit:1];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = a1 + 32;
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__MOEventBundleStore_getRankingParamsandCompletionHandler___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __59__MOEventBundleStore_getRankingParamsandCompletionHandler___block_invoke_2;
    v12[3] = &unk_10033EE90;
    v12[4] = *(a1 + 40);
    [v7 enumerateObjectsUsingBlock:v12];
  }

  [v3 reset];
}

void __59__MOEventBundleStore_getRankingParamsandCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 rankingParams];
  [v2 addObject:v3];
}

- (void)storeRankingParams:(id)a3 forContext:(id)a4 forEvergreenScore:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MOEventBundleStore *)self persistenceManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __70__MOEventBundleStore_storeRankingParams_forContext_forEvergreenScore___block_invoke;
  v13[3] = &unk_10033EEE0;
  v14 = v8;
  v15 = v9;
  v17 = a5;
  v16 = self;
  v11 = v9;
  v12 = v8;
  [v10 performBlockAndWait:v13];
}

void __70__MOEventBundleStore_storeRankingParams_forContext_forEvergreenScore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MORankingParamsMO managedObjectWithObject:*(a1 + 32) inManagedObjectContext:v3 forContext:*(a1 + 40) forEvergreenScore:*(a1 + 56)];
  v12 = 0;
  v5 = [v3 save:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {

    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "saving ranking params succeeded %@", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = +[NSDate date];
    [v9 _submitRankingParamsAnalytics:v10 withSubmissionDate:v11];
    v7 = 0;
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __70__MOEventBundleStore_storeRankingParams_forContext_forEvergreenScore___block_invoke_cold_1();
    }
  }

  [v3 reset];
}

- (void)_submitRankingParamsAnalytics:(id)a3 withSubmissionDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Submitting ranking params to CoreAnalytics.", buf, 2u);
  }

  v8 = +[NSCalendar currentCalendar];
  v9 = [v8 components:764 fromDate:v5];

  v10 = [v9 year];
  v11 = [v9 month];
  v12 = [v9 day];
  v13 = [v9 hour];
  v14 = [v9 minute];
  v15 = objc_opt_new();
  v16 = [NSNumber numberWithInteger:v10];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"submissionTimeYear" andValue:v16];

  v17 = [NSNumber numberWithInteger:v11];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"submissionTimeMonth" andValue:v17];

  v18 = [NSNumber numberWithInteger:v12];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"submissionTimeDay" andValue:v18];

  v19 = [NSNumber numberWithInteger:v13];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"submissionTimeHour" andValue:v19];

  v20 = [NSNumber numberWithInteger:v14];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"submissionTimeMinute" andValue:v20];

  LODWORD(v21) = 1176256512;
  v22 = [NSNumber numberWithFloat:v21];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"scalingFactorForAnalytics" andValue:v22];

  v23 = [v6 dynamicModelParameterDict];
  v24 = [v23 objectForKeyedSubscript:&off_10036BEC0];
  [v24 floatValue];
  v26 = v25 * 10000.0;

  *&v27 = v26;
  v28 = [NSNumber numberWithFloat:v27];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"activityInterfaceTypeEngagementWeight" andValue:v28];

  v29 = [v6 dynamicModelParameterDict];
  v30 = [v29 objectForKeyedSubscript:&off_10036BE60];
  [v30 floatValue];
  v32 = v31 * 10000.0;

  *&v33 = v32;
  v34 = [NSNumber numberWithFloat:v33];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"outingInterfaceTypeEngagementWeight" andValue:v34];

  v35 = [v6 dynamicModelParameterDict];
  v36 = [v35 objectForKeyedSubscript:&off_10036BEF0];
  [v36 floatValue];
  v38 = v37 * 10000.0;

  *&v39 = v38;
  v40 = [NSNumber numberWithFloat:v39];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"significantContactInterfaceTypeEngagementWeight" andValue:v40];

  v41 = [v6 dynamicModelParameterDict];
  v42 = [v41 objectForKeyedSubscript:&off_10036BF08];
  [v42 floatValue];
  v44 = v43 * 10000.0;

  *&v45 = v44;
  v46 = [NSNumber numberWithFloat:v45];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"yourMediaInterfaceTypeEngagementWeight" andValue:v46];

  v47 = [v6 dynamicModelParameterDict];
  v48 = [v47 objectForKeyedSubscript:&off_10036BF20];
  [v48 floatValue];
  v50 = v49 * 10000.0;

  *&v51 = v50;
  v52 = [NSNumber numberWithFloat:v51];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"yourTimeAtHomeInterfaceTypeEngagementWeight" andValue:v52];

  v53 = [v6 dynamicModelParameterDict];
  v54 = [v53 objectForKeyedSubscript:&off_10036BE78];
  [v54 floatValue];
  v56 = v55 * 10000.0;

  *&v57 = v56;
  v58 = [NSNumber numberWithFloat:v57];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"photoMemoryInterfaceTypeEngagementWeight" andValue:v58];

  v59 = [v6 dynamicModelParameterDict];
  v60 = [v59 objectForKeyedSubscript:&off_10036BF38];
  [v60 floatValue];
  v62 = v61 * 10000.0;

  *&v63 = v62;
  v64 = [NSNumber numberWithFloat:v63];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"evergreenInterfaceTypeEngagementWeight" andValue:v64];

  v65 = [v6 dynamicModelParameterDict];
  v66 = [v65 objectForKeyedSubscript:&off_10036BEA8];
  [v66 floatValue];
  v68 = v67 * 10000.0;

  *&v69 = v68;
  v70 = [NSNumber numberWithFloat:v69];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"timeContextInterfaceTypeEngagementWeight" andValue:v70];

  v71 = [v6 dynamicModelParameterDict];
  v72 = [v71 objectForKeyedSubscript:&off_10036BE90];
  [v72 floatValue];
  v74 = v73 * 10000.0;

  *&v75 = v74;
  v76 = [NSNumber numberWithFloat:v75];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"tripInterfaceTypeEngagementWeight" andValue:v76];

  v77 = [v6 dynamicModelParameterDict];
  v78 = [v77 objectForKeyedSubscript:&off_10036BF50];
  [v78 floatValue];
  v80 = v79 * 10000.0;

  *&v81 = v80;
  v82 = [NSNumber numberWithFloat:v81];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"clusteringInterfaceTypeEngagementWeight" andValue:v82];

  v83 = [v6 dynamicModelParameterDict];
  v84 = [v83 objectForKeyedSubscript:&off_10036BF68];
  [v84 floatValue];
  v86 = v85 * 10000.0;

  *&v87 = v86;
  v88 = [NSNumber numberWithFloat:v87];
  [v6 safeSavePropertyToDictionary:v15 withKey:@"thematicSummaryInterfaceTypeEngagementWeight" andValue:v88];

  if (v15)
  {
    v98 = v15;
    AnalyticsSendEventLazy();
    v89 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleStore _submitRankingParamsAnalytics:v89 withSubmissionDate:?];
    }

    v90 = v98;
  }

  else
  {
    v90 = _mo_log_facility_get_os_log(&MOLogFacilityAnalytics);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleStore *)v90 _submitRankingParamsAnalytics:v91 withSubmissionDate:v92, v93, v94, v95, v96, v97];
    }
  }
}

- (void)getEventBundleStartedWithInterval:(id)a3 interfaceTypes:(id)a4 CompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__37;
  v31 = __Block_byref_object_dispose__37;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__37;
  v25 = __Block_byref_object_dispose__37;
  v26 = 0;
  v12 = [(MOEventBundleStore *)self persistenceManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __89__MOEventBundleStore_getEventBundleStartedWithInterval_interfaceTypes_CompletionHandler___block_invoke;
  v15[3] = &unk_10033EF08;
  v13 = v9;
  v16 = v13;
  v14 = v10;
  v17 = v14;
  v18 = &v27;
  v19 = &v21;
  v20 = a2;
  [v12 performBlockAndWait:v15];

  v11[2](v11, v22[5], v28[5]);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

void __89__MOEventBundleStore_getEventBundleStartedWithInterval_interfaceTypes_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventBundleMO fetchRequest];
  v5 = +[NSMutableArray array];
  v6 = *(a1 + 32);
  v7 = &GEOPOICategoryGasStation_ptr;
  v8 = &GEOPOICategoryGasStation_ptr;
  v42 = v5;
  if (v6)
  {
    v9 = [v6 endDate];
    v10 = [NSPredicate predicateWithFormat:@"startDate <= %@", v9];
    v63[0] = v10;
    v11 = [*(a1 + 32) startDate];
    v12 = [NSPredicate predicateWithFormat:@"startDate >= %@", v11];
    v63[1] = v12;
    v13 = [NSArray arrayWithObjects:v63 count:2];
    v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];
    [v42 addObject:v14];

    v7 = &GEOPOICategoryGasStation_ptr;
    v8 = &GEOPOICategoryGasStation_ptr;

    v5 = v42;
  }

  if ([*(a1 + 40) count])
  {
    v41 = v3;
    v15 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v16 = *(a1 + 40);
    v17 = [v16 countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v49;
      do
      {
        v20 = 0;
        do
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"interfaceType == %lu", [*(*(&v48 + 1) + 8 * v20) unsignedIntValue]);
          [v15 addObject:v21];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v48 objects:v62 count:16];
      }

      while (v18);
    }

    v7 = &GEOPOICategoryGasStation_ptr;
    v22 = [NSCompoundPredicate orPredicateWithSubpredicates:v15];
    v5 = v42;
    [v42 addObject:v22];

    v3 = v41;
    v8 = &GEOPOICategoryGasStation_ptr;
  }

  if ([v5 count])
  {
    v23 = [v7[174] andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v23];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v24 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v61 = v24;
  v25 = [v8[226] arrayWithObjects:&v61 count:1];
  [v4 setSortDescriptors:v25];

  [v4 setFetchBatchSize:100];
  v26 = *(*(a1 + 48) + 8);
  obj = *(v26 + 40);
  v27 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v26 + 40), obj);
  v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v38 = NSStringFromSelector(*(a1 + 64));
    v39 = [v27 count];
    v40 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138413058;
    v54 = v38;
    v55 = 2112;
    v56 = v4;
    v57 = 2048;
    v58 = v39;
    v59 = 2112;
    v60 = v40;
    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v27 count]);
    v30 = *(*(a1 + 56) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = v27;
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        v36 = 0;
        do
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [[MOEventBundle alloc] initWithEventBundleMO:*(*(&v43 + 1) + 8 * v36)];
          if (v37)
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v37];
          }

          v36 = v36 + 1;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v34);
    }

    v5 = v42;
  }

  [v3 reset];
}

- (void)updateEventBundles:(id)a3 CompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke;
    v16[3] = &unk_10033ADB0;
    v17 = objc_opt_new();
    v8 = v17;
    [v6 enumerateObjectsUsingBlock:v16];
    v9 = [[MOEventBundleFetchOptions alloc] initWithIdentifiers:v8 ascending:1 filterBundle:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_2;
    v13[3] = &unk_10033EF30;
    v15 = v7;
    v13[4] = self;
    v14 = v6;
    [(MOEventBundleStore *)self fetchEventBundleWithOptions:v9 CompletionHandler:v13];

LABEL_7:
    goto LABEL_8;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[updateEventBundles] no bundles to update", buf, 2u);
  }

  if (v7)
  {
    v11 = [NSError alloc];
    v19 = NSLocalizedDescriptionKey;
    v20 = @"[updateEventBundles] No bundles were provided to update";
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v8 = [v11 initWithDomain:@"MOEventBundleStore" code:0 userInfo:v12];

    (*(v7 + 2))(v7, v8, 0);
    goto LABEL_7;
  }

LABEL_8:
}

void __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke(uint64_t a1, void *a2)
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

void __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[updateEventBundles] Error while fetching existing bundles for update. Error:%@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_2_cold_1(v5, v8);
    }

    if ([v5 count])
    {
      v9 = *(a1 + 32);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_316;
      v13[3] = &unk_10033C2F0;
      v10 = *(a1 + 48);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v15 = v10;
      v13[4] = v11;
      v14 = v12;
      [v9 removeEventBundles:v5 CompletionHandler:v13];
    }
  }
}

void __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_316(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[updateEventBundles] Error while removing existing bundles for update. Error:%@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[updateEventBundles] Removed existing bundles", buf, 2u);
    }

    v9 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_317;
    v13[3] = &unk_10033C2F0;
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = v10;
    v13[4] = v11;
    v14 = v12;
    [v9 purgeDeletedEventBundlesWithCompletionHandler:v13];
  }
}

void __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_317(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[updateEventBundles] Error while purging existing bundles. Error:%@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[updateEventBundles] Purged existing bundles", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_318;
    v11[3] = &unk_100336198;
    v12 = *(a1 + 48);
    [v9 storeEventBundles:v10 CompletionHandler:v11];
  }
}

void __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_318(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[updateEventBundles] Error while storing updated bundles. Error:%@", &v9, 0xCu);
    }
  }

  else if (v8)
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[updateEventBundles] Stored updated bundles. result, %@, error, %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (MOEventBundleStoreEngagementDelegate)engagementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_engagementDelegate);

  return WeakRetained;
}

void __58__MOEventBundleStore_storeEventBundles_CompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "error, %@", v3, v4, v5, v6, v7);
}

void __58__MOEventBundleStore_storeEventBundles_CompletionHandler___block_invoke_cold_2(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*(*a2 + 8) + 40);
  *buf = 138412290;
  *a3 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error, %@", buf, 0xCu);
}

+ (void)_recordResource:(uint64_t)a1 alreadySeenKeys:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_5_3(&_mh_execute_header, v2, v3, "Unable to retrieve dedupe key due to error, %@. Falling back to identifier, %@", v4, v5, v6, v7, 2u);
}

- (void)_updateLongTermBundles:(uint64_t)a1 context:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v3, v4, "Event with identifier, %@, is a duplicate of a previously processed event");
}

- (void)_updateLongTermBundles:(uint64_t)a1 context:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v3, v4, "Resource with identifier, %@, is a duplicate of a previously processed resource");
}

- (void)_updateLongTermBundles:(uint64_t)a1 context:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v3, v4, "Place with identifier, %@, is a duplicate of a previously processed place.");
}

- (void)_updateLongTermBundles:(uint64_t)a1 context:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  v3 = [v2 identifier];
  OUTLINED_FUNCTION_9_0(v3, 5.7779e-34);
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v4, v5, "Place with identifier, %@, is a duplicate of a previously processed place.");
}

- (void)_updateLongTermBundles:(uint64_t)a1 context:(uint64_t)a2 .cold.5(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v3, v4, "Person with local identifier, %@, is a duplicate of a previously processed person object.");
}

- (void)_updateLongTermBundles:(uint64_t)a1 context:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_9_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_8(&_mh_execute_header, v3, v4, "Person with contact identifier, %@, is a duplicate of a previously processed person object.");
}

void __80__MOEventBundleStore_removeEventBundlesStartedWithinInterval_CompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  NSStringFromSelector(*(a1 + 56));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(&_mh_execute_header, v2, v3, "%@, event bundles delete operation error, %@", v4, v5, v6, v7, v8);
}

void __68__MOEventBundleStore_purgeDeletedEventBundlesWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  NSStringFromSelector(*(a1 + 48));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(&_mh_execute_header, v2, v3, "%@, event bundles delete operation error, %@", v4, v5, v6, v7, v8);
}

void __68__MOEventBundleStore_purgeExpiredEventBundlesWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "saving event bundles purge operation error, %@", v3, v4, v5, v6, v7);
}

void __83__MOEventBundleStore_purgeEventBundlesWithNoEventsAssociatedWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "saving non-evergreen event bundles purge operation error, %@", v3, v4, v5, v6, v7);
}

void __72__MOEventBundleStore_purgeInvalidEvergreenBundlesWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "saving evergreen event bundles purge operation error, %@", v3, v4, v5, v6, v7);
}

- (void)purgeEventBundlesWithRehydrationFailureCount:(int)a1 andHandler:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "requested invalid maxRehydrationFailCount value %d", v2, 8u);
}

void __78__MOEventBundleStore_purgeEventBundlesWithRehydrationFailureCount_andHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "saving event bundles purge due to rehydration failure error, %@", v3, v4, v5, v6, v7);
}

void __59__MOEventBundleStore_purgeDanglingEventBundlesWithHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "saving dangling event bundles purge error, %@", v3, v4, v5, v6, v7);
}

void __59__MOEventBundleStore_getRankingParamsandCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v1, v2, "Reading ranking params error, %@", v3, v4, v5, v6, v7);
}

void __59__MOEventBundleStore_updateEventBundles_CompletionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[updateEventBundles] Existing bundles to be updated:%lu", v3, 0xCu);
}

@end