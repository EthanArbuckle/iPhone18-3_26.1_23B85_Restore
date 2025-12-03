@interface MOContactAggregationManager
- (MOContactAggregationManager)initWithUniverse:(id)universe;
- (id)_bundlesForContact:(id)contact fromInputBundles:(id)bundles;
- (id)_contactCandidatesForMegaBundleFromStats:(id)stats contactClassificationMap:(id)map parameters:(id)parameters;
- (id)_contactClassificationMapFromEventBundles:(id)bundles;
- (id)_createContactMegaBundleFromBundles:(id)bundles parameters:(id)parameters;
- (id)_eventsForContactFromEventBundles:(id)bundles;
- (id)_megaBundleFromContactBundles:(id)bundles parameters:(id)parameters;
- (id)_statsForContactFromEventBundles:(id)bundles;
- (void)_aggregateBundlesForCoarseGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler;
- (void)_aggregateBundlesForFineGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler;
- (void)aggregateBundles:(id)bundles withParameters:(id)parameters granularity:(unint64_t)granularity handler:(id)handler;
@end

@implementation MOContactAggregationManager

- (MOContactAggregationManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v11.receiver = self;
  v11.super_class = MOContactAggregationManager;
  v5 = [(MOContactAggregationManager *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [universeCopy getService:v7];
    configurationManager = v5->_configurationManager;
    v5->_configurationManager = v8;
  }

  return v5;
}

- (void)aggregateBundles:(id)bundles withParameters:(id)parameters granularity:(unint64_t)granularity handler:(id)handler
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (granularity == 2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __83__MOContactAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke_104;
    v15[3] = &unk_1003369E0;
    v16 = handlerCopy;
    [(MOContactAggregationManager *)self _aggregateBundlesForCoarseGranularity:bundlesCopy withParameters:parametersCopy handler:v15];
    v14 = v16;
  }

  else
  {
    if (granularity != 1)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
      goto LABEL_7;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __83__MOContactAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke;
    v17[3] = &unk_1003369E0;
    v18 = handlerCopy;
    [(MOContactAggregationManager *)self _aggregateBundlesForFineGranularity:bundlesCopy withParameters:parametersCopy handler:v17];
    v14 = v18;
  }

LABEL_7:
}

void __83__MOContactAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "FineGranularityAggregation for contact: output eventBundles count, %lu", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__MOContactAggregationManager_aggregateBundles_withParameters_granularity_handler___block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact: output eventBundles count, %lu", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_aggregateBundlesForFineGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler
{
  granularityCopy = granularity;
  parametersCopy = parameters;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v11 = [granularityCopy count];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    context = v10;
    v28 = handlerCopy;
    v29 = parametersCopy;
    if (v13)
    {
      *buf = 134217984;
      v36 = [granularityCopy count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FineGranularityAggregation for contact: input eventBundles count, %lu", buf, 0xCu);
    }

    [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 4];
    v26 = v30 = granularityCopy;
    v14 = [granularityCopy filteredArrayUsingPredicate:?];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            bundleIdentifier = [v19 bundleIdentifier];
            includedInSummaryBundleOnly = [v19 includedInSummaryBundleOnly];
            *buf = 138412546;
            v23 = @"NO";
            if (includedInSummaryBundleOnly)
            {
              v23 = @"YES";
            }

            v36 = bundleIdentifier;
            v37 = 2112;
            v38 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "FineGranularityAggregation for contact: bundle id, %@, includedInSummaryBundleOnly, %@", buf, 0x16u);
          }

          if ([v19 includedInSummaryBundleOnly])
          {
            [v19 setIsAggregatedAndSuppressed:1];
          }

          [v19 setSummarizationGranularity:1];
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v16);
    }

    v24 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v14 count];
      *buf = 134217984;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "FineGranularityAggregation for contact: updated contact eventBundles count, %lu", buf, 0xCu);
    }

    handlerCopy = v28;
    (*(v28 + 2))(v28, 0, 0);

    parametersCopy = v29;
    granularityCopy = v30;
    v10 = context;
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "FineGranularityAggregation for contact: No eventBundle to be proccessed", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  objc_autoreleasePoolPop(v10);
}

- (void)_aggregateBundlesForCoarseGranularity:(id)granularity withParameters:(id)parameters handler:(id)handler
{
  granularityCopy = granularity;
  parametersCopy = parameters;
  handlerCopy = handler;
  if (![(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"kMOContactAggregationManagerShouldAggregateBundlesForCoarseGranularity" withFallback:0])
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v19 = "CoarseGranularityAggregation for contact: skip aggregation";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, buf, 2u);
    }

LABEL_15:

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_16;
  }

  if (![granularityCopy count])
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v19 = "CoarseGranularityAggregation for contact: No eventBundle to be proccessed";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v11 = objc_opt_new();
  v12 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = [granularityCopy count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact related bundles: input eventBundles count, %lu", buf, 0xCu);
  }

  v13 = [NSPredicate predicateWithFormat:@"%K = %lu", @"interfaceType", 4];
  v14 = [granularityCopy filteredArrayUsingPredicate:v13];
  v15 = [(MOContactAggregationManager *)self _megaBundleFromContactBundles:v14 parameters:parametersCopy];
  if (v15)
  {
    [v11 addObject:v15];
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v11 count];
    *buf = 134217984;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact related bundles: output eventBundles count, %lu", buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, v11, 0);
LABEL_16:
}

- (id)_megaBundleFromContactBundles:(id)bundles parameters:(id)parameters
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  if (![bundlesCopy count])
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v13 = "CoarseGranularityAggregation for contact: no needed to aggregate contact bundles since bundles count is 0";
      v14 = v11;
      v15 = 2;
      goto LABEL_7;
    }

LABEL_8:

    v16 = 0;
    goto LABEL_10;
  }

  aggregationDateInterval = [parametersCopy aggregationDateInterval];
  [aggregationDateInterval duration];
  v10 = v9;

  if (v10 < 604800.0)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      [parametersCopy coarseGranularity_contactMegaBundleLookBackDays];
      v18 = 134217984;
      v19 = v12;
      v13 = "CoarseGranularityAggregation for contact: no needed to contact bundles since aggregation time interval is less than %f days";
      v14 = v11;
      v15 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v13, &v18, v15);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v16 = [(MOContactAggregationManager *)self _createContactMegaBundleFromBundles:bundlesCopy parameters:parametersCopy];
  [v16 setSummarizationGranularity:2];
LABEL_10:

  return v16;
}

- (id)_createContactMegaBundleFromBundles:(id)bundles parameters:(id)parameters
{
  bundlesCopy = bundles;
  parametersCopy = parameters;
  selfCopy = self;
  fUniverse = [(MOAggregationManager *)self fUniverse];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v102 = [fUniverse getService:v10];

  v11 = +[NSCalendar currentCalendar];
  v12 = [NSDate alloc];
  [parametersCopy coarseGranularity_contactMegaBundleLookBackDays];
  v14 = v13 * -86400.0;
  v15 = +[NSDate date];
  v16 = [v12 initWithTimeInterval:v15 sinceDate:v14];
  v17 = [v11 startOfDayForDate:v16];

  v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v118 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact: the earliest date for contact bundle to be aggregated for coarse granularity: %@", buf, 0xCu);
  }

  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = __78__MOContactAggregationManager__createContactMegaBundleFromBundles_parameters___block_invoke;
  v112[3] = &unk_10033B188;
  v19 = v17;
  v113 = v19;
  v20 = [NSPredicate predicateWithBlock:v112];
  v21 = [bundlesCopy filteredArrayUsingPredicate:v20];

  v22 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v23 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  v116[0] = v22;
  v116[1] = v23;
  v101 = v23;
  v24 = [NSArray arrayWithObjects:v116 count:2];
  v25 = [v21 sortedArrayUsingDescriptors:v24];

  v26 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [v25 count];
    *buf = 134217984;
    v118 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact: bundle count after removing old bundles: %lu", buf, 0xCu);
  }

  v103 = v25;
  if (![v25 count])
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v30 = "CoarseGranularityAggregation for contact: no bundle available to create contact mega bundle";
      v31 = v28;
      v32 = 2;
      goto LABEL_11;
    }

LABEL_12:
    p_super = v28;
    v34 = 0;
    v35 = v101;
    goto LABEL_40;
  }

  if ([v25 count] <= 1)
  {
    v28 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v25 count];
      *buf = 134217984;
      v118 = v29;
      v30 = "CoarseGranularityAggregation for contact: %lu bundle is not enough to create contact mega bundle for coarse granularity";
      v31 = v28;
      v32 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v96 = v22;
  v97 = v21;
  v36 = [MOEventBundle alloc];
  v37 = +[NSUUID UUID];
  v38 = +[NSDate date];
  v39 = [(MOEventBundle *)v36 initWithBundleIdentifier:v37 creationDate:v38];

  v98 = v39;
  [(MOEventBundle *)v39 setInterfaceType:4];
  v40 = [(MOContactAggregationManager *)selfCopy _statsForContactFromEventBundles:v25];
  v94 = [(MOContactAggregationManager *)selfCopy _contactClassificationMapFromEventBundles:v25];
  v41 = [MOContactAggregationManager _contactCandidatesForMegaBundleFromStats:selfCopy contactClassificationMap:"_contactCandidatesForMegaBundleFromStats:contactClassificationMap:parameters:" parameters:v40];
  v105 = [(MOContactAggregationManager *)selfCopy _eventsForContactFromEventBundles:v25];
  v99 = objc_opt_new();
  v107 = objc_opt_new();
  v106 = objc_opt_new();
  v93 = v41;
  v95 = v40;
  if ([v41 count] > 1)
  {
    v90 = bundlesCopy;
    v92 = v19;
    if ([v41 count] < 3)
    {
      v45 = v99;
      [v99 addObjectsFromArray:v41];
    }

    else
    {
      v43 = arc4random_uniform([v41 count] - 3);
      v44 = [v41 objectAtIndexedSubscript:v43];
      v45 = v99;
      [v99 addObject:v44];

      v46 = [v41 objectAtIndexedSubscript:v43 + 1];
      [v99 addObject:v46];

      v47 = [v41 objectAtIndexedSubscript:v43 + 2];
      [v99 addObject:v47];
    }

    v48 = [NSSortDescriptor sortDescriptorWithKey:@"score" ascending:0, parametersCopy, v90];
    v115 = v48;
    v49 = [NSArray arrayWithObjects:&v115 count:1];
    v50 = [v45 sortedArrayUsingDescriptors:v49];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v51 = v50;
    v52 = [v51 countByEnumeratingWithState:&v108 objects:v114 count:16];
    obj = v51;
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = *v109;
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (*v109 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v57 = *(*(&v108 + 1) + 8 * i);
          contact = [v57 contact];
          identifier = [contact identifier];
          v60 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:identifier];

          if (v60)
          {
            if (v54 >= 3)
            {
              v61 = 0.0;
            }

            else
            {
              v61 = (v54 + 200);
            }

            v62 = [MOPerson alloc];
            contact2 = [v57 contact];
            localizedFullName = [contact2 localizedFullName];
            [v57 score];
            v66 = [(MOPerson *)v62 initWithLocalIdentifier:0 name:localizedFullName contactIdentifier:v60 family:0 priorityScore:v61 significanceScore:v65];

            v67 = [v105 objectForKey:v57];
            allObjects = [v67 allObjects];

            [(MOPerson *)v66 setSourceEventAccessType:3];
            firstObject = [allObjects firstObject];
            eventIdentifier = [firstObject eventIdentifier];
            [(MOPerson *)v66 setSourceEventIdentifier:eventIdentifier];

            contact3 = [v57 contact];
            givenName = [contact3 givenName];

            if (givenName)
            {
              contact4 = [v57 contact];
              givenName2 = [contact4 givenName];
              [(MOPerson *)v66 setGivenName:givenName2];
            }

            [v106 addObject:v66];
            v75 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              v76 = [allObjects count];
              *buf = 134217984;
              v118 = v76;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact, events count for each suggested contact: %lu", buf, 0xCu);
            }

            [v107 addObjectsFromArray:allObjects];
            ++v54;
          }
        }

        v51 = obj;
        v53 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
      }

      while (v53);
    }

    v77 = [(MOContactAggregationManager *)selfCopy _bundlesForContact:v99 fromInputBundles:v103];
    [MOSummarizationUtilities updateRankMetaDataFrom:v77 forSummaryBundle:v98];
    allObjects2 = [v107 allObjects];
    [(MOEventBundle *)v98 setEvents:allObjects2];

    [(MOEventBundle *)v98 setPropertiesBasedOnEvents];
    [(MOEventBundle *)v98 setStartDate:v92];
    v79 = +[NSDate date];
    [(MOEventBundle *)v98 setEndDate:v79];

    startDate = [(MOEventBundle *)v98 startDate];
    v81 = [MOTime timeForDate:startDate timeZoneManager:v102];
    [(MOEventBundle *)v98 setTime:v81];

    v82 = [[MOAction alloc] initWithActionName:@"Communicate" actionType:5 actionSubtype:4];
    [(MOEventBundle *)v98 setAction:v82];

    allObjects3 = [v107 allObjects];
    firstObject2 = [allObjects3 firstObject];
    eventIdentifier2 = [firstObject2 eventIdentifier];
    action = [(MOEventBundle *)v98 action];
    [action setSourceEventIdentifier:eventIdentifier2];

    [(MOEventBundle *)v98 setPersons:v106];
    [(MOEventBundle *)v98 setBundleSuperType:3];
    [(MOEventBundle *)v98 setBundleSubType:302];
    v87 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      [MOContactAggregationManager _createContactMegaBundleFromBundles:v98 parameters:v87];
    }

    v34 = v98;
    parametersCopy = v89;
    bundlesCopy = v91;
    v19 = v92;
    v22 = v96;
    v21 = v97;
    v35 = v101;
  }

  else
  {
    v42 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
    v22 = v96;
    v21 = v97;
    v35 = v101;
    obj = v42;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact: no enough contacts to create contact mega bundle for coarse granularity", buf, 2u);
    }

    v34 = 0;
  }

  p_super = &v98->super;
LABEL_40:

  return v34;
}

id __78__MOContactAggregationManager__createContactMegaBundleFromBundles_parameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v4 = [v3 isOnOrAfter:*(a1 + 32)];

  return v4;
}

- (id)_contactCandidatesForMegaBundleFromStats:(id)stats contactClassificationMap:(id)map parameters:(id)parameters
{
  statsCopy = stats;
  mapCopy = map;
  parametersCopy = parameters;
  v45 = objc_opt_new();
  v46 = statsCopy;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  allKeys = [statsCopy allKeys];
  v47 = [allKeys countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v47)
  {
    v12 = *v49;
    *&v11 = 138412290;
    v42 = v11;
    v43 = allKeys;
    v44 = mapCopy;
    do
    {
      v13 = 0;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        v15 = [mapCopy objectForKey:{v14, v42}];
        if (v15)
        {
          v16 = [mapCopy objectForKey:v14];
          unsignedIntValue = [v16 unsignedIntValue];
        }

        else
        {
          unsignedIntValue = 0;
        }

        v18 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          contact = [v14 contact];
          identifier = [contact identifier];
          *buf = 138412546;
          v53 = identifier;
          v54 = 2048;
          v55 = unsignedIntValue;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation for contact: contact identifier, %@, classification, %lu", buf, 0x16u);
        }

        if ((unsignedIntValue & 0x200000) == 0 && (unsignedIntValue & 0x100008) != 0)
        {
          v19 = v12;
          v20 = parametersCopy;
          v21 = [v46 objectForKey:v14];
          v22 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = v42;
            v53 = v21;
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation for contact: contactCandidates stats check: %@", buf, 0xCu);
          }

          v23 = [v21 objectForKeyedSubscript:@"callCount"];
          longValue = [v23 longValue];
          [v20 coarseGranularity_contactBundleAggregationCallCountThreshold];
          if (v25 > longValue)
          {
            v26 = [v21 objectForKeyedSubscript:@"aggregatedCallDuration"];
            longValue2 = [v26 longValue];
            [v20 coarseGranularity_contactBundleAggregationCallDurationThreshold];
            if (v28 > longValue2)
            {
              v29 = [v21 objectForKeyedSubscript:@"messageCount"];
              longValue3 = [v29 longValue];
              [v20 coarseGranularity_contactBundleAggregationMessageCountThreshold];
              if (v31 > longValue3)
              {

                allKeys = v43;
                mapCopy = v44;
LABEL_22:

                parametersCopy = v20;
                v12 = v19;
                goto LABEL_23;
              }

              v32 = [v21 objectForKeyedSubscript:@"outgoingMessageCount"];
              longValue4 = [v32 longValue];
              [v20 coarseGranularity_contactBundleAggregationOutGoingMessageCountThreshold];
              v35 = v34;

              allKeys = v43;
              mapCopy = v44;
              if (v35 > longValue4)
              {
                goto LABEL_22;
              }

LABEL_21:
              [v45 addObject:v14];
              goto LABEL_22;
            }

            allKeys = v43;
            mapCopy = v44;
          }

          goto LABEL_21;
        }

LABEL_23:
        v13 = v13 + 1;
      }

      while (v47 != v13);
      v38 = [allKeys countByEnumeratingWithState:&v48 objects:v56 count:16];
      v47 = v38;
    }

    while (v38);
  }

  v39 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = [v45 count];
    *buf = 134217984;
    v53 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "CoarseGranularityAggregation for contact: contactCandidates count: %lu", buf, 0xCu);
  }

  return v45;
}

- (id)_contactClassificationMapFromEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  v4 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = bundlesCopy;
  v31 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v31)
  {
    v30 = *v48;
    v37 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v47 + 1) + 8 * v5);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        events = [v6 events];
        v35 = [events countByEnumeratingWithState:&v43 objects:v56 count:16];
        if (v35)
        {
          v34 = *v44;
          do
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v44 != v34)
              {
                objc_enumerationMutation(events);
              }

              v8 = *(*(&v43 + 1) + 8 * i);
              contactClassificationMap = [v8 contactClassificationMap];
              v10 = [contactClassificationMap count];

              if (v10)
              {
                v36 = i;
                v11 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
                {
                  eventIdentifier = [v8 eventIdentifier];
                  contactClassificationMap2 = [v8 contactClassificationMap];
                  v27 = [contactClassificationMap2 count];
                  *buf = 138412546;
                  v53 = eventIdentifier;
                  v54 = 2048;
                  v55 = v27;
                  _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation for contact: event identifier, %@, contactClassificationMap count, %lu", buf, 0x16u);
                }

                v41 = 0u;
                v42 = 0u;
                v39 = 0u;
                v40 = 0u;
                contactClassificationMap3 = [v8 contactClassificationMap];
                allKeys = [contactClassificationMap3 allKeys];

                v14 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v40;
                  do
                  {
                    for (j = 0; j != v15; j = j + 1)
                    {
                      if (*v40 != v16)
                      {
                        objc_enumerationMutation(allKeys);
                      }

                      v18 = *(*(&v39 + 1) + 8 * j);
                      v19 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                      {
                        contact = [v18 contact];
                        identifier = [contact identifier];
                        contactClassificationMap4 = [v8 contactClassificationMap];
                        v24 = [contactClassificationMap4 objectForKey:v18];
                        *buf = 138412546;
                        v53 = identifier;
                        v54 = 2112;
                        v55 = v24;
                        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation for contact: contact identifier, %@, classification, %@", buf, 0x16u);

                        v4 = v37;
                      }

                      contactClassificationMap5 = [v8 contactClassificationMap];
                      v21 = [contactClassificationMap5 objectForKey:v18];
                      [v4 setObject:v21 forKey:v18];
                    }

                    v15 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
                  }

                  while (v15);
                }

                i = v36;
              }
            }

            v35 = [events countByEnumeratingWithState:&v43 objects:v56 count:16];
          }

          while (v35);
        }

        v5 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v31);
  }

  return v4;
}

- (id)_statsForContactFromEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  v76 = [[NSSet alloc] initWithObjects:{&off_10036B830, &off_10036B848, &off_10036B860, &off_10036B878, &off_10036B890, &off_10036B8A8, &off_10036B8C0, &off_10036B8D8, 0}];
  v73 = [[NSSet alloc] initWithObjects:{&off_10036B8F0, &off_10036B908, &off_10036B920, 0}];
  v4 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = bundlesCopy;
  v66 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
  if (v66)
  {
    v65 = *v90;
    v72 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v90 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v5;
        v6 = *(*(&v89 + 1) + 8 * v5);
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        events = [v6 events];
        v7 = [events countByEnumeratingWithState:&v85 objects:v95 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v86;
          v68 = *v86;
          do
          {
            v10 = 0;
            v69 = v8;
            do
            {
              if (*v86 != v9)
              {
                objc_enumerationMutation(events);
              }

              v71 = v10;
              v11 = *(*(&v85 + 1) + 8 * v10);
              interactions = [v11 interactions];
              firstObject = [interactions firstObject];
              recipients = [firstObject recipients];
              v15 = [recipients count];

              if (v15 <= 1)
              {
                interactionScoredContact = [v11 interactionScoredContact];
                if (interactionScoredContact)
                {
                  v17 = interactionScoredContact;
                  interactionScoredContact2 = [v11 interactionScoredContact];
                  contact = [interactionScoredContact2 contact];
                  identifier = [contact identifier];
                  v21 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:identifier];

                  if (v21)
                  {
                    interactions2 = [v11 interactions];
                    v23 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
                    v94 = v23;
                    v24 = [NSArray arrayWithObjects:&v94 count:1];
                    v25 = [interactions2 sortedArrayUsingDescriptors:v24];

                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v74 = v25;
                    v26 = &GEOPOICategoryGasStation_ptr;
                    v78 = [v74 countByEnumeratingWithState:&v81 objects:v93 count:16];
                    if (v78)
                    {
                      v27 = 0;
                      v79 = 0;
                      v80 = 0;
                      v77 = *v82;
                      v28 = 0.0;
                      do
                      {
                        for (i = 0; i != v78; i = i + 1)
                        {
                          if (*v82 != v77)
                          {
                            objc_enumerationMutation(v74);
                          }

                          v30 = *(*(&v81 + 1) + 8 * i);
                          v31 = [v26[190] numberWithInteger:{objc_msgSend(v30, "mechanism")}];
                          v32 = [v76 containsObject:v31];

                          if (v32)
                          {
                            startDate = [v30 startDate];
                            if (startDate)
                            {
                              v34 = startDate;
                              endDate = [v30 endDate];

                              if (endDate)
                              {
                                endDate2 = [v30 endDate];
                                startDate2 = [v30 startDate];
                                [endDate2 timeIntervalSinceDate:startDate2];
                                v39 = v38;

                                v28 = v28 + v39;
                                if (v39 > 300.0)
                                {
                                  ++v27;
                                }
                              }
                            }
                          }

                          else
                          {
                            v40 = [v26[190] numberWithInteger:{objc_msgSend(v30, "mechanism")}];
                            v41 = [v73 containsObject:v40];

                            if (v41)
                            {
                              ++v80;
                              direction = [v30 direction];
                              v43 = v79;
                              if (direction == 1)
                              {
                                v43 = v79 + 1;
                              }

                              v79 = v43;
                            }
                          }

                          allKeys = [v4 allKeys];
                          interactionScoredContact3 = [v11 interactionScoredContact];
                          v46 = [allKeys containsObject:interactionScoredContact3];

                          if (v46)
                          {
                            interactionScoredContact4 = [v11 interactionScoredContact];
                            v48 = [v4 objectForKey:interactionScoredContact4];
                            v49 = [v48 mutableCopy];

                            interactionScoredContact6 = [v49 valueForKey:@"callCount"];
                            v51 = [v26[190] numberWithLong:{objc_msgSend(interactionScoredContact6, "longValue") + v27}];
                            [v49 setValue:v51 forKey:@"callCount"];

                            v75 = v27;
                            v52 = [v49 valueForKey:@"aggregatedCallDuration"];
                            v53 = [v26[190] numberWithLong:{(v28 + objc_msgSend(v52, "longValue"))}];
                            [v49 setValue:v53 forKey:@"aggregatedCallDuration"];

                            v54 = [v49 valueForKey:@"messageCount"];
                            v55 = [v26[190] numberWithLong:{objc_msgSend(v54, "longValue") + v80}];
                            [v49 setValue:v55 forKey:@"messageCount"];

                            v56 = [v49 valueForKey:@"outgoingMessageCount"];
                            v57 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v56 longValue] + v79);
                            v4 = v72;
                            [v49 setValue:v57 forKey:@"callCount"];

                            interactionScoredContact5 = [v11 interactionScoredContact];
                            [v72 setObject:v49 forKey:interactionScoredContact5];

                            v26 = &GEOPOICategoryGasStation_ptr;
                            v27 = v75;
                          }

                          else
                          {
                            v49 = objc_opt_new();
                            v59 = [v26[190] numberWithLong:v27];
                            [v49 setValue:v59 forKey:@"callCount"];

                            v60 = [v26[190] numberWithLong:v28];
                            [v49 setValue:v60 forKey:@"aggregatedCallDuration"];

                            v61 = [v26[190] numberWithLong:v80];
                            [v49 setValue:v61 forKey:@"messageCount"];

                            v62 = [v26[190] numberWithLong:v79];
                            [v49 setValue:v62 forKey:@"outgoingMessageCount"];

                            interactionScoredContact6 = [v11 interactionScoredContact];
                            [v4 setObject:v49 forKey:interactionScoredContact6];
                          }
                        }

                        v78 = [v74 countByEnumeratingWithState:&v81 objects:v93 count:16];
                      }

                      while (v78);
                    }

                    v9 = v68;
                    v8 = v69;
                  }
                }
              }

              v10 = v71 + 1;
            }

            while ((v71 + 1) != v8);
            v8 = [events countByEnumeratingWithState:&v85 objects:v95 count:16];
          }

          while (v8);
        }

        v5 = v67 + 1;
      }

      while ((v67 + 1) != v66);
      v66 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
    }

    while (v66);
  }

  return v4;
}

- (id)_eventsForContactFromEventBundles:(id)bundles
{
  bundlesCopy = bundles;
  v39 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = bundlesCopy;
  v37 = [v4 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v37)
  {
    v35 = *v45;
    v36 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(v4);
        }

        v38 = v5;
        v6 = *(*(&v44 + 1) + 8 * v5);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        events = [v6 events];
        v8 = [events countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v41;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v41 != v10)
              {
                objc_enumerationMutation(events);
              }

              v12 = *(*(&v40 + 1) + 8 * i);
              interactions = [v12 interactions];
              firstObject = [interactions firstObject];
              recipients = [firstObject recipients];
              v16 = [recipients count];

              if (v16 <= 1)
              {
                interactionScoredContact = [v12 interactionScoredContact];
                if (interactionScoredContact)
                {
                  v18 = interactionScoredContact;
                  interactionScoredContact2 = [v12 interactionScoredContact];
                  contact = [interactionScoredContact2 contact];
                  identifier = [contact identifier];
                  v22 = [MOContactUtilities cNContactIdentifierFromPPContactIdentifier:identifier];

                  if (v22)
                  {
                    allKeys = [v39 allKeys];
                    interactionScoredContact3 = [v12 interactionScoredContact];
                    v25 = [allKeys containsObject:interactionScoredContact3];

                    if (v25)
                    {
                      interactionScoredContact4 = [v12 interactionScoredContact];
                      v27 = [v39 objectForKey:interactionScoredContact4];
                      v28 = [v27 mutableCopy];

                      [v28 addObject:v12];
                      v29 = [v28 copy];
                      interactionScoredContact5 = [v12 interactionScoredContact];
                      [v39 setObject:v29 forKey:interactionScoredContact5];

                      v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                      {
                        [(MOContactAggregationManager *)v49 _eventsForContactFromEventBundles:v28];
                      }
                    }

                    else
                    {
                      v28 = objc_opt_new();
                      [v28 addObject:v12];
                      interactionScoredContact6 = [v12 interactionScoredContact];
                      [v39 setObject:v28 forKey:interactionScoredContact6];

                      v31 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                      {
                        [(MOContactAggregationManager *)v48 _eventsForContactFromEventBundles:v28];
                      }
                    }
                  }
                }
              }
            }

            v9 = [events countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v9);
        }

        v5 = v38 + 1;
        v4 = v36;
      }

      while ((v38 + 1) != v37);
      v37 = [v36 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v37);
  }

  v33 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [(MOContactAggregationManager *)v39 _eventsForContactFromEventBundles:v33];
  }

  return v39;
}

- (id)_bundlesForContact:(id)contact fromInputBundles:(id)bundles
{
  contactCopy = contact;
  bundlesCopy = bundles;
  if ([bundlesCopy count])
  {
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = bundlesCopy;
    v7 = bundlesCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          events = [v12 events];
          firstObject = [events firstObject];
          interactionScoredContact = [firstObject interactionScoredContact];
          v16 = [contactCopy containsObject:interactionScoredContact];

          if (v16)
          {
            [v20 addObject:v12];
            v17 = _mo_log_facility_get_os_log(&MOLogFacilitySummarization);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v26 = v12;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation for contact: subBundles: %@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v9);
    }

    bundlesCopy = v19;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_createContactMegaBundleFromBundles:(uint64_t)a1 parameters:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation for contact: megabundle: %@", &v2, 0xCu);
}

- (void)_eventsForContactFromEventBundles:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_1_14(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, v5, v6, "CoarseGranularityAggregation for contact: contact events count after set: %lu");
}

- (void)_eventsForContactFromEventBundles:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_1_14(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&_mh_execute_header, v5, v6, "CoarseGranularityAggregation for contact: contact events count after modified: %lu");
}

- (void)_eventsForContactFromEventBundles:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "CoarseGranularityAggregation for contact: contact eventsDict: %@", &v2, 0xCu);
}

@end