@interface MODominantBundleCreationManager
- (BOOL)_locationCheckForMergingOutingBundle:(id)a3 activityBundle:(id)a4;
- (MODominantBundleCreationManager)initWithUniverse:(id)a3;
- (id)_dominantBundleCreatedFromOutingBundles:(id)a3 activityBundles:(id)a4 parameters:(id)a5;
- (id)filterEventBundlesEligibleForDominantBundleCreation:(id)a3;
- (id)getInviteBundles:(id)a3;
- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)a3 compareWithHomeBundle:(id)a4;
- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)a3 compareWithInviteOutingBundle:(id)a4;
- (void)_suppressDuplicateContactBundles:(id)a3 comparedWithContactTrendbundles:(id)a4;
- (void)_suppressDuplicateHomeBundles:(id)a3 parameters:(id)a4;
- (void)_suppressDuplicateMediaBundles:(id)a3 comparedWithActivitybundles:(id)a4 parameters:(id)a5;
- (void)_suppressDuplicateMediaBundles:(id)a3 comparedWithHomebundles:(id)a4 parameters:(id)a5;
- (void)processBundlesForCreatingDominantBundles:(id)a3 withParameters:(id)a4 handler:(id)a5;
@end

@implementation MODominantBundleCreationManager

- (MODominantBundleCreationManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MODominantBundleCreationManager;
  v6 = [(MODominantBundleCreationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, a3);
  }

  return v7;
}

- (void)processBundlesForCreatingDominantBundles:(id)a3 withParameters:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v8 count];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    context = v11;
    if (v14)
    {
      *buf = 134217984;
      v57 = [v8 count];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "DominantBundleCreation: input eventBundles count, %lu", buf, 0xCu);
    }

    v48 = v10;
    v50 = v9;

    v15 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
    v46 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 2];
    v16 = [v8 filteredArrayUsingPredicate:?];
    v55 = v15;
    v17 = [NSArray arrayWithObjects:&v55 count:1];
    v18 = [v16 sortedArrayUsingDescriptors:v17];

    v44 = v18;
    v19 = [(MODominantBundleCreationManager *)self getInviteBundles:v18];
    v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [MODominantBundleCreationManager processBundlesForCreatingDominantBundles:v19 withParameters:? handler:?];
    }

    v45 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 1];
    [v8 filteredArrayUsingPredicate:?];
    v21 = v49 = v19;
    v54 = v15;
    v22 = [NSArray arrayWithObjects:&v54 count:1];
    v23 = [v21 sortedArrayUsingDescriptors:v22];

    v43 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 7];
    v24 = [v8 filteredArrayUsingPredicate:?];
    v53 = v15;
    v25 = [NSArray arrayWithObjects:&v53 count:1];
    v26 = [v24 sortedArrayUsingDescriptors:v25];

    v41 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 4];
    v27 = [v8 filteredArrayUsingPredicate:?];
    v52 = v15;
    v28 = [NSArray arrayWithObjects:&v52 count:1];
    v39 = [v27 sortedArrayUsingDescriptors:v28];

    v40 = [NSPredicate predicateWithBlock:&__block_literal_global_2];
    v29 = [v8 filteredArrayUsingPredicate:?];
    [(MODominantBundleCreationManager *)self _suppressDuplicateHomeBundles:v26 parameters:v50];
    v30 = [NSPredicate predicateWithFormat:@"%K = NO", @"isAggregatedAndSuppressed"];
    v42 = v26;
    v31 = [v26 filteredArrayUsingPredicate:v30];
    v51 = v15;
    v32 = [NSArray arrayWithObjects:&v51 count:1];
    v33 = [v31 sortedArrayUsingDescriptors:v32];

    [(MODominantBundleCreationManager *)self _removeDuplicatePhotoResourceFromActivityBundles:v23 compareWithHomeBundle:v33];
    [(MODominantBundleCreationManager *)self _removeDuplicatePhotoResourceFromActivityBundles:v23 compareWithInviteOutingBundle:v49];
    v34 = [(MODominantBundleCreationManager *)self _dominantBundleCreatedFromOutingBundles:v44 activityBundles:v23 parameters:v50];
    [(MODominantBundleCreationManager *)self _suppressDuplicateContactBundles:v39 comparedWithContactTrendbundles:v29];
    v35 = [v8 arrayByAddingObjectsFromArray:v34];
    v36 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v35 count];
      *buf = 134217984;
      v57 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "DominantBundleCreation: output eventBundles count, %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    v38 = objc_autoreleasePoolPush();
    v10 = v48;
    (*(v48 + 2))(v48, v35, 0);
    objc_autoreleasePoolPop(v38);

    v9 = v50;
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "DominantBundleCreation: No eventBundle to be proccessed through dominantBundleCreation process", buf, 2u);
    }

    (*(v10 + 2))(v10, 0, 0);
    objc_autoreleasePoolPop(v11);
  }
}

BOOL __99__MODominantBundleCreationManager_processBundlesForCreatingDominantBundles_withParameters_handler___block_invoke(id a1, MOEventBundle *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(MOEventBundle *)v3 interfaceType];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MOEventBundle *)v3 events];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v11)
        {
          v8 |= [v11 category] == 10;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return (v4 == 9) & v8;
}

- (id)_dominantBundleCreatedFromOutingBundles:(id)a3 activityBundles:(id)a4 parameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *v119 = [v9 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "DominantBundleCreation: input outing bundle count, %lu", buf, 0xCu);
  }

  v13 = [(MODominantBundleCreationManager *)self filterEventBundlesEligibleForDominantBundleCreation:v9];

  v14 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v13 count];
    *buf = 134217984;
    *v119 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "DominantBundleCreation: input outing bundle count after eligible for dominant bundle creation filter, %lu", buf, 0xCu);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v10 count];
    *buf = 134217984;
    *v119 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "DominantBundleCreation: input activity bundle count, %lu", buf, 0xCu);
  }

  v18 = [(MODominantBundleCreationManager *)self filterEventBundlesEligibleForDominantBundleCreation:v10];

  v19 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v18 count];
    *buf = 134217984;
    *v119 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "DominantBundleCreation: input activity bundle count after eligible for dominant bundle creation filter, %lu", buf, 0xCu);
  }

  if ([v13 count] && objc_msgSend(v18, "count"))
  {
    v101 = a2;
    v107 = self;
    v110 = objc_opt_new();
    v105 = objc_opt_new();
    v104 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
    v103 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
    v106 = v18;
    if ([v13 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        if ([v18 count] <= v23)
        {
          goto LABEL_37;
        }

        v24 = [v13 objectAtIndexedSubscript:v21];
        v25 = v18;
        v108 = v23;
        v26 = [v18 objectAtIndexedSubscript:v23];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v24 andOtherBundle:v26];
        v28 = v27;
        v29 = [NSDateInterval alloc];
        v30 = [v24 startDate];
        v31 = [v24 endDate];
        v32 = [v29 initWithStartDate:v30 endDate:v31];
        [v32 duration];
        v34 = v28 / v33;

        v35 = [NSDateInterval alloc];
        v36 = [v26 startDate];
        v37 = [v26 endDate];
        v38 = [v35 initWithStartDate:v36 endDate:v37];
        [v38 duration];
        v40 = v28 / v39;

        [v11 dominantBundle_overlappingThreshold];
        if (v34 > v41 || ([v11 dominantBundle_overlappingThreshold], v40 > v42))
        {
          if (!+[MOSummarizationUtilities isOutingBundleFromHomeOrWorkVisit:](MOSummarizationUtilities, "isOutingBundleFromHomeOrWorkVisit:", v24) && -[MODominantBundleCreationManager _locationCheckForMergingOutingBundle:activityBundle:](v107, "_locationCheckForMergingOutingBundle:activityBundle:", v24, v26) && +[MOSummarizationUtilities isOutingBundleInsideOneDay:](MOSummarizationUtilities, "isOutingBundleInsideOneDay:", v24) && [v26 bundleSubType] != 204 && objc_msgSend(v26, "bundleSubType") != 207 && objc_msgSend(v26, "bundleSubType") != 208 && !+[MOSummarizationUtilities isFlightBundle:](MOSummarizationUtilities, "isFlightBundle:", v24))
          {
            break;
          }
        }

        v43 = v108;
        if (v34 <= 0.0 && v40 <= 0.0)
        {
          goto LABEL_31;
        }

        v44 = v22;
        [MOSummarizationUtilities removeDuplicatePhotoResourceFromBundle:v26 comparedWithPrimaryBundle:v24];
        v22 = [v26 action];
        if ([v22 actionSubtype] != 2)
        {
          goto LABEL_30;
        }

        v45 = [v26 resources];
        v46 = [v45 count];

        v25 = v106;
        LODWORD(v22) = v44;
        if (v46)
        {
          v47 = [v26 resources];
          v22 = [v47 filteredArrayUsingPredicate:v104];

          if ([v22 count])
          {
            v116 = v103;
            v48 = [NSArray arrayWithObjects:&v116 count:1];
            v49 = [v22 sortedArrayUsingDescriptors:v48];

            v50 = [v49 firstObject];
            [v50 setPriorityScore:99.0];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

LABEL_31:
        v51 = [v24 endDate];
        v52 = [v26 endDate];
        v53 = [v51 isOnOrAfter:v52];

        v23 = v43 + v53;
        v21 = v22 + (v53 ^ 1);

        v22 = v21;
        v18 = v25;
        if ([v13 count] <= v21)
        {
          goto LABEL_37;
        }
      }

      v54 = [v13 count];
      v44 = v22;
      v22 = [NSNumber numberWithInt:v22];
      v117[0] = v22;
      v43 = v108;
      v49 = [NSNumber numberWithInt:v108 + v54];
      v117[1] = v49;
      v50 = [NSArray arrayWithObjects:v117 count:2];
      [v105 addObject:v50];
LABEL_29:

LABEL_30:
      v25 = v106;
      LODWORD(v22) = v44;
      goto LABEL_31;
    }

LABEL_37:
    v59 = [v13 count];
    v60 = &v59[[v18 count]];
    v61 = [[MOGraph alloc] initWithNumVertices:v60 edges:v105];
    v62 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = [v105 count];
      *buf = 134217984;
      *v119 = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "DominantBundleCreation: correlation graph is built with number of edges, %lu", buf, 0xCu);
    }

    v100 = v61;
    v109 = [(MOGraph *)v61 calculateConnectedComponentWithGraphTraversal:1];
    v64 = v110;
    if ([v109 count] != v60)
    {
      v65 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:v65 activityBundles:? parameters:?];
      }

      v66 = +[NSAssertionHandler currentHandler];
      [v66 handleFailureInMethod:v101 object:v107 file:@"MODominantBundleCreationManager.m" lineNumber:199 description:{@"DominantBundleCreation: the event bundles and membership arrays have to be of the same size. (in %s:%d)", "-[MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:activityBundles:parameters:]", 199}];
    }

    if (v60)
    {
      v67 = 0;
      for (i = 0; i != v60; ++i)
      {
        v69 = [v109 objectAtIndexedSubscript:i];
        v70 = [v64 objectForKey:v69];

        if (!v70)
        {
          v71 = objc_opt_new();
          [v64 setObject:v71 forKeyedSubscript:v69];
        }

        if ([v13 count] <= i)
        {
          v78 = [v13 count];
          v79 = [v64 objectForKeyedSubscript:v69];
          v80 = (v67 - (v78 << 32)) >> 32;
          v81 = [v106 objectAtIndexedSubscript:v80];
          [v79 addObject:v81];

          v74 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            v82 = [v69 intValue];
            v76 = [v106 objectAtIndexedSubscript:v80];
            *buf = 67109378;
            *v119 = v82;
            *&v119[4] = 2112;
            *&v119[6] = v76;
            v77 = v74;
            goto LABEL_54;
          }
        }

        else
        {
          v72 = [v64 objectForKeyedSubscript:v69];
          v73 = [v13 objectAtIndexedSubscript:i];
          [v72 addObject:v73];

          v74 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            v75 = [v69 intValue];
            v76 = [v13 objectAtIndexedSubscript:i];
            *buf = 67109378;
            *v119 = v75;
            *&v119[4] = 2112;
            *&v119[6] = v76;
            v77 = v74;
LABEL_54:
            _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "DominantBundleCreation:group %d, bundle-> %@", buf, 0x12u);
          }
        }

        v67 += &_mh_execute_header;
        v64 = v110;
      }
    }

    v102 = v13;
    v83 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      [MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:v109 activityBundles:? parameters:?];
    }

    v84 = [(MODominantBundleCreationManager *)v107 fUniverse];
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    v87 = [v84 getService:v86];

    v58 = objc_opt_new();
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v88 = [v110 allValues];
    v89 = [v88 countByEnumeratingWithState:&v111 objects:v115 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v112;
      do
      {
        for (j = 0; j != v90; j = j + 1)
        {
          if (*v112 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v111 + 1) + 8 * j);
          if ([v93 count] >= 2)
          {
            v94 = [v93 allObjects];
            v95 = [MOSummarizationUtilities createDominantBundleFromBundles:v94 withParameters:v11 timeZoneManager:v87];

            if (v95)
            {
              [v58 addObject:v95];
            }

            v96 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v119 = v95;
              _os_log_debug_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "DominantBundleCreation:dominant bundle %@", buf, 0xCu);
            }
          }
        }

        v90 = [v88 countByEnumeratingWithState:&v111 objects:v115 count:16];
      }

      while (v90);
    }

    v97 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      v98 = [v58 count];
      *buf = 134217984;
      *v119 = v98;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "DominantBundleCreation: newly created dominant bundles count: %lu", buf, 0xCu);
    }

    v13 = v102;
    v18 = v106;
    v55 = v110;
  }

  else
  {
    v55 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = [v13 count];
      v57 = [v18 count];
      *buf = 134218240;
      *v119 = v56;
      *&v119[8] = 2048;
      *&v119[10] = v57;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "DominantBundleCreation: no dominant bundle is created since outing or activity bundles count is 0, outing bundles count: %lu, activity bundles count: %lu", buf, 0x16u);
    }

    v58 = 0;
  }

  return v58;
}

- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)a3 compareWithHomeBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v25 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
    v24 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
    if ([v6 count])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if ([v5 count] <= v9)
        {
          goto LABEL_13;
        }

        v10 = [v6 objectAtIndexedSubscript:v7];
        v11 = [v5 objectAtIndexedSubscript:v9];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v10 andOtherBundle:v11];
        if (v12 > 0.0)
        {
          [MOSummarizationUtilities removeDuplicatePhotoResourceFromBundle:v11 comparedWithPrimaryBundle:v10];
          v13 = [v11 action];
          if ([v13 actionSubtype] != 2)
          {
            goto LABEL_11;
          }

          v14 = [v11 resources];
          v15 = [v14 count];

          if (v15)
          {
            break;
          }
        }

LABEL_12:
        v20 = [v10 endDate];
        v21 = [v11 endDate];
        v22 = [v20 isOnOrAfter:v21];

        v9 += v22;
        v8 += v22 ^ 1;
        v7 = v8;
        if ([v6 count] <= v8)
        {
          goto LABEL_13;
        }
      }

      v16 = [v11 resources];
      v13 = [v16 filteredArrayUsingPredicate:v25];

      if ([v13 count])
      {
        v26 = v24;
        v17 = [NSArray arrayWithObjects:&v26 count:1];
        v18 = [v13 sortedArrayUsingDescriptors:v17];

        v19 = [v18 firstObject];
        [v19 setPriorityScore:99.0];
      }

LABEL_11:

      goto LABEL_12;
    }

LABEL_13:

    v23 = v25;
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v28 = [v6 count];
      v29 = 2048;
      v30 = [v5 count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "DominantBundleCreation: no resource change needed for activity bundles compared to home bundles since home or activit bundles count is 0, home bundles count: %lu, activity bundles count: %lu", buf, 0x16u);
    }
  }
}

- (void)_removeDuplicatePhotoResourceFromActivityBundles:(id)a3 compareWithInviteOutingBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v25 = [NSPredicate predicateWithFormat:@"type == %lu", 2];
    v24 = [[NSSortDescriptor alloc] initWithKey:@"priorityScore" ascending:1];
    if ([v6 count])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if ([v5 count] <= v9)
        {
          goto LABEL_13;
        }

        v10 = [v6 objectAtIndexedSubscript:v7];
        v11 = [v5 objectAtIndexedSubscript:v9];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v10 andOtherBundle:v11];
        if (v12 > 0.0)
        {
          [MOSummarizationUtilities removeDuplicatePhotoResourceFromBundle:v11 comparedWithPrimaryBundle:v10];
          v13 = [v11 action];
          if ([v13 actionSubtype] != 2)
          {
            goto LABEL_11;
          }

          v14 = [v11 resources];
          v15 = [v14 count];

          if (v15)
          {
            break;
          }
        }

LABEL_12:
        v20 = [v10 endDate];
        v21 = [v11 endDate];
        v22 = [v20 isOnOrAfter:v21];

        v9 += v22;
        v8 += v22 ^ 1;
        v7 = v8;
        if ([v6 count] <= v8)
        {
          goto LABEL_13;
        }
      }

      v16 = [v11 resources];
      v13 = [v16 filteredArrayUsingPredicate:v25];

      if ([v13 count])
      {
        v26 = v24;
        v17 = [NSArray arrayWithObjects:&v26 count:1];
        v18 = [v13 sortedArrayUsingDescriptors:v17];

        v19 = [v18 firstObject];
        [v19 setPriorityScore:99.0];
      }

LABEL_11:

      goto LABEL_12;
    }

LABEL_13:

    v23 = v25;
  }

  else
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v28 = [v6 count];
      v29 = 2048;
      v30 = [v5 count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "DominantBundleCreation: no resource change needed for activity bundles compared to invite outing bundles since outing or activity bundles count is 0, invite outing bundles count: %lu, activity bundles count: %lu", buf, 0x16u);
    }
  }
}

- (void)_suppressDuplicateContactBundles:(id)a3 comparedWithContactTrendbundles:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    if ([v5 count])
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v32 = v5;
      v34 = v6;
      do
      {
        if ([v6 count] <= v9)
        {
          break;
        }

        v11 = v9;
        v12 = [v5 objectAtIndexedSubscript:v7];
        v13 = [v6 objectAtIndexedSubscript:v9];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v12 andOtherBundle:v13];
        if (v14 > 0.0)
        {
          v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 10];
          v16 = [v13 events];
          v17 = [v16 filteredArrayUsingPredicate:v15];

          v18 = [v12 events];
          v33 = v15;
          v19 = [v18 filteredArrayUsingPredicate:v15];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v20 = v17;
          v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v36;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v36 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                if ([v19 containsObject:*(*(&v35 + 1) + 8 * i)])
                {
                  [v12 setIsAggregatedAndSuppressed:1];
                  ++v10;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
            }

            while (v22);
          }

          v5 = v32;
        }

        v25 = [v13 endDate];
        v26 = [v12 endDate];
        v27 = [v25 isOnOrAfter:v26];

        v9 = v11 + (v27 ^ 1);
        v8 += v27;
        v7 = v8;
        v6 = v34;
      }

      while ([v5 count] > v8);
    }

    else
    {
      v10 = 0;
    }

    v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v41) = v10;
      v29 = "DominantBundleCreation: duplicate contact bundle count: %d";
      v30 = v28;
      v31 = 8;
      goto LABEL_24;
    }
  }

  else
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v41 = [v5 count];
      v42 = 2048;
      v43 = [v6 count];
      v29 = "DominantBundleCreation: no needed to remove duplicate contact bundle compared to contact trend bundles since contact or contact trend bundles count is 0, contact bundles count: %lu, contact trend bundles count: %lu";
      v30 = v28;
      v31 = 22;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v29, buf, v31);
    }
  }
}

- (void)_suppressDuplicateMediaBundles:(id)a3 comparedWithHomebundles:(id)a4 parameters:(id)a5
{
  v7 = a3;
  v8 = a4;
  v31 = a5;
  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    if ([v7 count])
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if ([v8 count] <= v11)
        {
          break;
        }

        v13 = [v7 objectAtIndexedSubscript:v9];
        v14 = [v8 objectAtIndexedSubscript:v11];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v13 andOtherBundle:v14];
        v16 = v15;
        v17 = [NSDateInterval alloc];
        v18 = [v13 startDate];
        v19 = [v13 endDate];
        v20 = [v17 initWithStartDate:v18 endDate:v19];
        [v20 duration];
        v22 = v16 / v21;

        [v31 dominantBundle_suppressMediaBundleComparedWithHomeBundleThreshold];
        if (v22 > v23)
        {
          [v13 setIsAggregatedAndSuppressed:1];
          ++v12;
        }

        v24 = [v13 endDate];
        v25 = [v14 endDate];
        v26 = [v24 isOnOrAfter:v25];

        v11 += v26;
        v10 += v26 ^ 1;
        v9 = v10;
      }

      while ([v7 count] > v10);
    }

    else
    {
      v12 = 0;
    }

    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v33) = v12;
      v28 = "DominantBundleCreation: duplicate media bundle compared with home bundles count: %d";
      v29 = v27;
      v30 = 8;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v33 = [v7 count];
      v34 = 2048;
      v35 = [v8 count];
      v28 = "DominantBundleCreation: no needed to remove duplicate media compared to home bundles since media or home bundles count is 0, media bundles count: %lu, home bundles count: %lu";
      v29 = v27;
      v30 = 22;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v28, buf, v30);
    }
  }
}

- (void)_suppressDuplicateMediaBundles:(id)a3 comparedWithActivitybundles:(id)a4 parameters:(id)a5
{
  v7 = a3;
  v8 = a4;
  v31 = a5;
  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    if ([v7 count])
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if ([v8 count] <= v11)
        {
          break;
        }

        v13 = [v7 objectAtIndexedSubscript:v9];
        v14 = [v8 objectAtIndexedSubscript:v11];
        [MOSummarizationUtilities overlappingTimeIntervalBetween:v13 andOtherBundle:v14];
        v16 = v15;
        v17 = [NSDateInterval alloc];
        v18 = [v13 startDate];
        v19 = [v13 endDate];
        v20 = [v17 initWithStartDate:v18 endDate:v19];
        [v20 duration];
        v22 = v16 / v21;

        [v31 dominantBundle_suppressMediaBundleComparedWithActivityBundleThreshold];
        if (v22 > v23)
        {
          [v13 setIsAggregatedAndSuppressed:1];
          ++v12;
        }

        v24 = [v13 endDate];
        v25 = [v14 endDate];
        v26 = [v24 isOnOrAfter:v25];

        v11 += v26;
        v10 += v26 ^ 1;
        v9 = v10;
      }

      while ([v7 count] > v10);
    }

    else
    {
      v12 = 0;
    }

    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v33) = v12;
      v28 = "DominantBundleCreation: duplicate media bundle compared with acitivity bundles count: %d";
      v29 = v27;
      v30 = 8;
      goto LABEL_15;
    }
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v33 = [v7 count];
      v34 = 2048;
      v35 = [v8 count];
      v28 = "DominantBundleCreation: no needed to remove duplicate media compared to activity bundles since media or activity bundles count is 0, media bundles count: %lu, home bundles count: %lu";
      v29 = v27;
      v30 = 22;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v28, buf, v30);
    }
  }
}

- (BOOL)_locationCheckForMergingOutingBundle:(id)a3 activityBundle:(id)a4
{
  v5 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [a3 events];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v5 visitEventsRejectedByWatchLocation];
        v14 = [v12 eventIdentifier];
        v15 = [v14 UUIDString];
        v16 = [v13 containsObject:v15];

        if (v16)
        {
          v17 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "DominantBundleCreation: outing bundle contains visits rejected by activity bundle with watch location", v19, 2u);
          }

          v10 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

- (void)_suppressDuplicateHomeBundles:(id)a3 parameters:(id)a4
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v6 = [v4 firstObject];
    v7 = [v6 startDate];
    v8 = [v5 components:28 fromDate:v7];

    [v8 setHour:3];
    v76 = v8;
    v9 = [v5 dateFromComponents:v8];
    v10 = [v4 lastObject];
    v11 = [v10 startDate];
    v12 = [v5 components:28 fromDate:v11];

    [v12 setHour:3];
    v75 = v12;
    v13 = [v5 dateFromComponents:v12];
    v14 = &GEOPOICategoryGasStation_ptr;
    v15 = objc_opt_new();
    [v15 addObject:v9];
    if ((-[NSObject isDate:inSameDayAsDate:](v5, "isDate:inSameDayAsDate:", v9, v13) & 1) != 0 || ![v9 isBeforeDate:v13])
    {
      v16 = v9;
    }

    else
    {
      do
      {
        v16 = [v9 dateByAddingTimeInterval:86400.0];

        [v15 addObject:v16];
        v9 = v16;
      }

      while (([v16 isBeforeDate:v13] & 1) != 0);
    }

    v74 = v16;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v15;
    v84 = [obj countByEnumeratingWithState:&v114 objects:v124 count:16];
    if (!v84)
    {
      v91 = 0;
      v88 = 0;
      goto LABEL_84;
    }

    v91 = 0;
    v88 = 0;
    v83 = *v115;
    v77 = v4;
    v79 = v13;
    v80 = v5;
    while (1)
    {
      for (i = 0; i != v84; i = i + 1)
      {
        if (*v115 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v114 + 1) + 8 * i);
        v111[0] = _NSConcreteStackBlock;
        v111[1] = 3221225472;
        v111[2] = __76__MODominantBundleCreationManager__suppressDuplicateHomeBundles_parameters___block_invoke;
        v111[3] = &unk_1003362D8;
        v112 = v5;
        v113 = v18;
        v85 = v18;
        v19 = [NSPredicate predicateWithBlock:v111];
        v20 = [v4 filteredArrayUsingPredicate:v19];

        v21 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v71 = [v20 count];
          *buf = 134218242;
          *v123 = v71;
          *&v123[8] = 2112;
          *&v123[10] = v85;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "DominantBundleCreation: home bundle count is %lu for %@", buf, 0x16u);
        }

        v22 = v14[233];
        v94 = objc_opt_new();
        v23 = v14[233];
        v93 = objc_opt_new();
        if ([v20 count] >= 2)
        {
          v81 = v20;
          v82 = i;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v24 = v20;
          v25 = [v24 countByEnumeratingWithState:&v107 objects:v121 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = 0;
            v29 = *v108;
            do
            {
              for (j = 0; j != v26; j = j + 1)
              {
                if (*v108 != v29)
                {
                  objc_enumerationMutation(v24);
                }

                v31 = *(*(&v107 + 1) + 8 * j);
                v32 = [v31 action];
                [v32 actionSubtype];

                v33 = [v31 action];
                v34 = [v33 actionSubtype];

                if (v34 == 1)
                {
                  ++v28;
                }

                v35 = [v31 action];
                v36 = [v35 actionSubtype];

                if (v36 == 9)
                {
                  ++v27;
                }

                v37 = [v31 suggestionID];
                v38 = [v37 UUIDString];
                [v94 addObject:v38];

                v39 = [v31 bundleIdentifier];
                v40 = [v39 UUIDString];
                [v93 addObject:v40];
              }

              v26 = [v24 countByEnumeratingWithState:&v107 objects:v121 count:16];
            }

            while (v26);
            v41 = v28 > 0;
          }

          else
          {
            v27 = 0;
            v41 = 0;
          }

          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v87 = v24;
          v53 = [v87 countByEnumeratingWithState:&v103 objects:v120 count:16];
          if (!v53)
          {
            v92 = 0;
            v89 = 0;
            goto LABEL_71;
          }

          v54 = v53;
          v92 = 0;
          v89 = 0;
          v90 = *v104;
          v86 = v27 == 0 && v41;
          while (1)
          {
            for (k = 0; k != v54; k = k + 1)
            {
              if (*v104 != v90)
              {
                objc_enumerationMutation(v87);
              }

              v56 = *(*(&v103 + 1) + 8 * k);
              if (v27 < 1)
              {
                if (v86)
                {
                  v59 = [*(*(&v103 + 1) + 8 * k) action];
                  v60 = [v59 actionSubtype];

                  if (v60 != 1)
                  {
LABEL_52:
                    [v56 setIsAggregatedAndSuppressed:1];
                    ++v88;
                    ++v89;
                  }
                }
              }

              else
              {
                v57 = [*(*(&v103 + 1) + 8 * k) action];
                v58 = [v57 actionSubtype];

                if (v58 != 9)
                {
                  goto LABEL_52;
                }
              }

              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v61 = [v56 resources];
              v62 = [v61 countByEnumeratingWithState:&v99 objects:v119 count:16];
              if (!v62)
              {

LABEL_66:
                [v56 setIsAggregatedAndSuppressed:1];
                ++v91;
                ++v92;
                goto LABEL_67;
              }

              v63 = v62;
              v64 = 0;
              v65 = *v100;
              do
              {
                for (m = 0; m != v63; m = m + 1)
                {
                  if (*v100 != v65)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v67 = *(*(&v99 + 1) + 8 * m);
                  if ([v67 type] == 2 || objc_msgSend(v67, "type") == 3)
                  {
                    ++v64;
                  }
                }

                v63 = [v61 countByEnumeratingWithState:&v99 objects:v119 count:16];
              }

              while (v63);

              if (!v64)
              {
                goto LABEL_66;
              }

LABEL_67:
              [v56 setSubSuggestionIDs:v94];
              [v56 setSubBundleIDs:v93];
            }

            v54 = [v87 countByEnumeratingWithState:&v103 objects:v120 count:16];
            if (!v54)
            {
LABEL_71:

              v4 = v77;
              v13 = v79;
              v5 = v80;
              v14 = &GEOPOICategoryGasStation_ptr;
              v20 = v81;
              i = v82;
              goto LABEL_74;
            }
          }
        }

        if ([v20 count] == 1)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v42 = v20;
          v43 = [v20 firstObject];
          v44 = [v43 resources];

          v45 = [v44 countByEnumeratingWithState:&v95 objects:v118 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = v4;
            v48 = i;
            v49 = 0;
            v50 = *v96;
            do
            {
              for (n = 0; n != v46; n = n + 1)
              {
                if (*v96 != v50)
                {
                  objc_enumerationMutation(v44);
                }

                v52 = *(*(&v95 + 1) + 8 * n);
                if ([v52 type] == 2 || objc_msgSend(v52, "type") == 3)
                {
                  ++v49;
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v95 objects:v118 count:16];
            }

            while (v46);

            i = v48;
            v4 = v47;
            v13 = v79;
            v5 = v80;
            if (v49)
            {
              v92 = 0;
              v89 = 0;
              v20 = v42;
              goto LABEL_74;
            }
          }

          else
          {
          }

          v20 = v42;
          v68 = [v42 firstObject];
          v92 = 1;
          [v68 setIsAggregatedAndSuppressed:1];

          v89 = 0;
          ++v91;
        }

        else
        {
          v92 = 0;
          v89 = 0;
        }

LABEL_74:
        v69 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *v123 = v89;
          *&v123[4] = 2112;
          *&v123[6] = v85;
          _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "DominantBundleCreation: %d duplicate home bundles suppressed for %@", buf, 0x12u);
        }

        v70 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *v123 = v92;
          *&v123[4] = 2112;
          *&v123[6] = v85;
          _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "DominantBundleCreation: %d home bundles without resources suppressed for %@", buf, 0x12u);
        }
      }

      v84 = [obj countByEnumeratingWithState:&v114 objects:v124 count:16];
      if (!v84)
      {
LABEL_84:

        v72 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v123 = v88;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "DominantBundleCreation: %d total duplicate home bundles suppressed for period", buf, 8u);
        }

        v73 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v123 = v91;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "DominantBundleCreation: %d total home bundles without resources suppressed for period", buf, 8u);
        }

        goto LABEL_89;
      }
    }
  }

  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *v123 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "DominantBundleCreation: no need to remove duplicate home bundles since home bundle count is %lu", buf, 0xCu);
  }

LABEL_89:
}

id __76__MODominantBundleCreationManager__suppressDuplicateHomeBundles_parameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 startDate];
  v5 = [v3 isDate:v4 inSameDayAsDate:*(a1 + 40)];

  return v5;
}

- (id)filterEventBundlesEligibleForDominantBundleCreation:(id)a3
{
  v3 = a3;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v25 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "DominantBundleCreation: Raw input eventBundles count, %lu", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 resources];

        if (v12)
        {
          v13 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
          v14 = [v11 resources];
          v15 = [v14 filteredArrayUsingPredicate:v13];

          if (![v15 count])
          {
            [v5 addObject:v11];
          }
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v5 count];
    *buf = 134217984;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "DominantBundleCreation: Input eventBundles count after filtering for numInviteEvents == 0: %lu.", buf, 0xCu);
  }

  return v5;
}

- (id)getInviteBundles:(id)a3
{
  v3 = a3;
  v15 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 resources];

        if (v10)
        {
          v11 = [NSPredicate predicateWithFormat:@"type == %lu", 17];
          v12 = [v9 resources];
          v13 = [v12 filteredArrayUsingPredicate:v11];

          if ([v13 count])
          {
            [v15 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

- (void)_dominantBundleCreatedFromOutingBundles:(os_log_t)log activityBundles:parameters:.cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MODominantBundleCreationManager _dominantBundleCreatedFromOutingBundles:activityBundles:parameters:]";
  v3 = 1024;
  v4 = 199;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "DominantBundleCreation: the event bundles and membership arrays have to be of the same size. (in %s:%d)", &v1, 0x12u);
}

@end