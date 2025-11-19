@interface MOEventBundleProcessor
+ (BOOL)_validResource:(id)a3 bundle:(id)a4 denyList:(id)a5 sourceAppBundleIds:(id)a6 removedAppBundleIds:(id)a7 lftaStatusDict:(id)a8;
+ (BOOL)constructLearnedFromTheAppDictionary:(id)a3 denyList:(id)a4 statusDict:(id)a5;
+ (id)_filterAndAnnotateResults:(id)a3 denyList:(id)a4;
+ (id)_getBundleIdSet:(id)a3;
+ (id)_learningFromAppDenyList;
+ (id)approvedForLearnFromThisApp:(id)a3;
+ (id)onboardingDatesBySourceTypeWithStandardSuite:(BOOL)a3;
+ (id)readLearnedFromTheAppStatusTable;
+ (void)_stripMediaActions:(id)a3;
+ (void)persistLearnedFromTheAppStatusTable:(id)a3;
+ (void)updateLearnedFromTheAppDictionary:(id)a3;
+ (void)updateLearnedFromTheAppDictionary:(id)a3 denyList:(id)a4 statusDict:(id)a5;
@end

@implementation MOEventBundleProcessor

+ (id)approvedForLearnFromThisApp:(id)a3
{
  v3 = a3;
  v4 = +[MOEventBundleProcessor _learningFromAppDenyList];
  if (v4)
  {
    v5 = [MOEventBundleProcessor _filterAndAnnotateResults:v3 denyList:v4];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) approvedForLearnFromThisApp:];
    }

    v7 = +[NSSet set];
    v5 = [MOEventBundleProcessor _filterAndAnnotateResults:v3 denyList:v7];
  }

  return v5;
}

+ (id)_learningFromAppDenyList
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.suggestions"];
  v3 = [v2 objectForKey:@"SiriCanLearnFromAppBlacklist"];
  if (v3)
  {
    v4 = [[NSSet alloc] initWithArray:v3];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) _learningFromAppDenyList];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)_validResource:(id)a3 bundle:(id)a4 denyList:(id)a5 sourceAppBundleIds:(id)a6 removedAppBundleIds:(id)a7 lftaStatusDict:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v13 sourceAppBundleIds];
  if (!v19)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v40 = [v14 bundleIdentifier];
      v41 = [v40 UUIDString];
      *buf = 138412290;
      v52 = v41;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, dropping resource no source app tagging, bundleId=%@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  [v16 unionSet:v19];
  v20 = [v19 mutableCopy];
  [v20 intersectSet:v15];
  if (!v20 || ![v20 count])
  {
    v50 = v17;
    context = objc_autoreleasePoolPush();
    v25 = objc_alloc_init(NSDateFormatter);
    v46 = +[NSCalendar currentCalendar];
    [v25 setCalendar:?];
    [v25 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v26 = [v13 getDictionary];
    v27 = [v26 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

    v28 = [v18 objectForKeyedSubscript:v27];

    if (!v28)
    {
      v39 = 1;
      goto LABEL_19;
    }

    v44 = v16;
    v45 = v15;
    [v18 objectForKeyedSubscript:v27];
    v30 = v29 = v14;
    v31 = [v30 objectForKeyedSubscript:@"active_time"];

    v32 = [v13 getDictionary];
    v33 = [v32 objectForKey:@"MOMediaPlayMetaDataKeyPlayerStartDate"];
    [v33 doubleValue];
    v35 = v34;

    v14 = v29;
    if (v31 && v35 != 0.0)
    {
      v36 = [v25 dateFromString:v31];
      v37 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v35];
      v38 = v37;
      if (v36 && [v37 compare:v36] == -1)
      {
        log = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v52 = v38;
          v53 = 2112;
          v54 = v36;
          v55 = 2112;
          v56 = v13;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "media resource removed due to LFTA switch active time, resource start date, %@, switch active time, %@, resource, %@", buf, 0x20u);
        }

        v39 = 0;
        goto LABEL_14;
      }
    }

    v39 = 1;
LABEL_14:
    v16 = v44;
    v15 = v45;
LABEL_19:

    objc_autoreleasePoolPop(context);
    v17 = v50;
    goto LABEL_20;
  }

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v20 description];
    [v14 bundleIdentifier];
    v23 = contexta = v14;
    [v23 UUIDString];
    v24 = v49 = v17;
    *buf = 138412546;
    v52 = v22;
    v53 = 2112;
    v54 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, dropping resource due to LFTA being off for %@, bundleId=%@", buf, 0x16u);

    v17 = v49;
    v14 = contexta;
  }

  [v17 unionSet:v20];
LABEL_17:
  v39 = 0;
LABEL_20:

  return v39;
}

+ (void)_stripMediaActions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v3 actions];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 actionType] != 6)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  [v3 setActions:v4];
  v11 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v3 backgroundActions];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * j);
        if ([v17 actionType] != 6)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  [v3 setBackgroundActions:v4];
  [v3 setConcurrentMediaAction:0];
}

+ (id)_getBundleIdSet:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = [v6 resources];
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              v13 = objc_autoreleasePoolPush();
              if ([v12 type] == 3)
              {
                v14 = [v12 getDictionary];
                v15 = [v14 objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

                v16 = [v4 setByAddingObject:v15];

                v4 = v16;
              }

              objc_autoreleasePoolPop(v13);
            }

            v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  return v4;
}

+ (id)_filterAndAnnotateResults:(id)a3 denyList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v41 = objc_opt_new();
  v40 = objc_opt_new();
  v36 = objc_opt_new();
  v34 = +[MOEventBundleProcessor readLearnedFromTheAppStatusTable];
  v7 = [[NSMutableDictionary alloc] initWithDictionary:v34];
  v33 = [MOEventBundleProcessor _getBundleIdSet:v5];
  v8 = v6;
  [MOEventBundleProcessor updateLearnedFromTheAppDictionary:"updateLearnedFromTheAppDictionary:denyList:statusDict:" denyList:? statusDict:?];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v5;
  v38 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v38)
  {
    v37 = *v47;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = objc_opt_new();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v12 = [v10 resources];
        v13 = [v12 countByEnumeratingWithState:&v42 objects:v56 count:16];
        if (!v13)
        {

          [v10 setResources:v11];
          goto LABEL_22;
        }

        v14 = v13;
        v39 = i;
        v15 = 0;
        v16 = *v43;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v42 + 1) + 8 * j);
            if ([v18 type] == 3)
            {
              v19 = ![MOEventBundleProcessor _validResource:v18 bundle:v10 denyList:v8 sourceAppBundleIds:v41 removedAppBundleIds:v40 lftaStatusDict:v7];
              v15 |= v19;
              if ((v19 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            else if ([v18 type] != 17 || +[MOEventBundleProcessor _validResource:bundle:denyList:sourceAppBundleIds:removedAppBundleIds:lftaStatusDict:](MOEventBundleProcessor, "_validResource:bundle:denyList:sourceAppBundleIds:removedAppBundleIds:lftaStatusDict:", v18, v10, v8, v41, v40, v7))
            {
LABEL_16:
              [v11 addObject:v18];
              continue;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v14);

        [v10 setResources:v11];
        i = v39;
        if (v15)
        {
          [MOEventBundleProcessor _stripMediaActions:v10];
        }

LABEL_22:
        v20 = [v10 resources];
        v21 = [v20 count];

        if (v21)
        {
          [v36 addObject:v10];
        }

        else
        {
          v22 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v10 bundleIdentifier];
            v24 = [v23 UUIDString];
            *buf = 138412290;
            v51 = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "approvedForLearnFromThisApp, dropping bundle due to no renderable resource. bundleId=%@", buf, 0xCu);
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v38);
  }

  v25 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v36 count];
    v27 = [v41 description];
    v28 = [v40 description];
    *buf = 134218498;
    v51 = v26;
    v52 = 2112;
    v53 = v27;
    v54 = 2112;
    v55 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, allowedBundles.count=%lu, sourceAppBundleIds=%@, removedAppBundleIds=%@", buf, 0x20u);
  }

  v29 = [MOEventBundleProcessorResult alloc];
  v30 = [v36 copy];
  v31 = [(MOEventBundleProcessorResult *)v29 init:v30 sourceAppBundleIds:v41 removedAppBundleIds:v40];

  return v31;
}

+ (void)updateLearnedFromTheAppDictionary:(id)a3
{
  v3 = a3;
  v6 = +[MOEventBundleProcessor _learningFromAppDenyList];
  v4 = +[MOEventBundleProcessor readLearnedFromTheAppStatusTable];
  v5 = [[NSMutableDictionary alloc] initWithDictionary:v4];
  [MOEventBundleProcessor updateLearnedFromTheAppDictionary:v3 denyList:v6 statusDict:v5];
}

+ (void)updateLearnedFromTheAppDictionary:(id)a3 denyList:(id)a4 statusDict:(id)a5
{
  v7 = a5;
  if ([MOEventBundleProcessor constructLearnedFromTheAppDictionary:a3 denyList:a4 statusDict:v7])
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "LFTA status changed, need to update the status table, %@", &v9, 0xCu);
    }

    [MOEventBundleProcessor persistLearnedFromTheAppStatusTable:v7];
  }
}

+ (BOOL)constructLearnedFromTheAppDictionary:(id)a3 denyList:(id)a4 statusDict:(id)a5
{
  v7 = a3;
  v52 = a4;
  v8 = a5;
  v53 = objc_opt_new();
  v9 = objc_alloc_init(NSDateFormatter);
  v10 = +[NSCalendar currentCalendar];
  [v9 setCalendar:v10];
  v48 = v9;
  [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v58 objects:v63 count:16];
  v13 = v12 != 0;
  obj = v11;
  if (!v12)
  {
    goto LABEL_32;
  }

  v14 = v12;
  v46 = v12 != 0;
  v47 = v10;
  v15 = 0;
  v51 = *v59;
  do
  {
    v16 = 0;
    v50 = v14;
    do
    {
      if (*v59 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v58 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      v19 = [v52 containsObject:v17];
      v20 = [v8 objectForKeyedSubscript:v17];

      if (!v19)
      {
        if (!v20)
        {
          v32 = objc_alloc_init(NSMutableDictionary);
          [v32 setObject:MOLearnedFromTheAppStatusOn forKey:@"status"];
          v33 = objc_opt_new();
          v34 = [v33 dateByAddingTimeInterval:-2419200.0];
          v35 = [v48 stringFromDate:v34];
          [v32 setObject:v35 forKey:@"active_time"];

          v15 = 1;
          goto LABEL_21;
        }

        v26 = [v8 objectForKeyedSubscript:v17];
        v27 = [v26 objectForKey:@"status"];
        if (v27)
        {
          v28 = v27;
          v29 = [v8 objectForKeyedSubscript:v17];
          v30 = [v29 objectForKey:@"status"];
          v31 = [v30 isEqualToString:MOLearnedFromTheAppStatusOn];

          if (v31)
          {
            v32 = [v8 objectForKeyedSubscript:v17];
LABEL_20:
            v14 = v50;
            goto LABEL_21;
          }
        }

        else
        {
        }

        v32 = objc_alloc_init(NSMutableDictionary);
        [v32 setObject:MOLearnedFromTheAppStatusOn forKey:@"status"];
        v36 = objc_opt_new();
        v37 = [v48 stringFromDate:v36];
        [v32 setObject:v37 forKey:@"active_time"];

        v15 = 1;
        goto LABEL_20;
      }

      if (v20)
      {
        v21 = [v8 objectForKeyedSubscript:v17];
        v22 = [v21 objectForKey:@"status"];
        if (v22)
        {
          v23 = [v8 objectForKeyedSubscript:v17];
          v24 = [v23 objectForKey:@"status"];
          v25 = [v24 isEqualToString:MOLearnedFromTheAppStatusOn];

          v14 = v50;
          v15 |= v25;
        }
      }

      else
      {
        v15 = 1;
      }

      v32 = objc_alloc_init(NSMutableDictionary);
      [v32 setObject:MOLearnedFromTheAppStatusOff forKey:@"status"];
LABEL_21:
      [v53 setObject:v32 forKey:v17];

      objc_autoreleasePoolPop(v18);
      v16 = v16 + 1;
    }

    while (v14 != v16);
    v14 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  }

  while (v14);

  if (v15)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = [v53 allKeys];
    v38 = [v11 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v55;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v55 != v40)
          {
            objc_enumerationMutation(v11);
          }

          v42 = *(*(&v54 + 1) + 8 * i);
          v43 = objc_autoreleasePoolPush();
          v44 = [v53 objectForKeyedSubscript:v42];
          [v8 setObject:v44 forKey:v42];

          objc_autoreleasePoolPop(v43);
        }

        v39 = [v11 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v39);
    }

    v10 = v47;
    v13 = v46;
LABEL_32:
  }

  else
  {
    v13 = 0;
    v10 = v47;
  }

  return v13;
}

+ (id)readLearnedFromTheAppStatusTable
{
  v2 = +[MOPersistenceUtilities userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"learnedFromTheApp.plist"];

    v5 = +[NSFileManager defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6];

    v8 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v21 = @"learnedFromTheApp.plist";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "File %@ found.", buf, 0xCu);
      }

      v19 = 0;
      v10 = [[NSDictionary alloc] initWithContentsOfURL:v4 error:&v19];
      v11 = v19;
      if (v11)
      {
        v12 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[(MOEventBundleProcessor(LearnFromThisApp) *)v11];
        }

        v18 = 0;
        [v5 removeItemAtURL:v4 error:&v18];
        if (v18)
        {
          v13 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[MOEventBundleProcessor(LearnFromThisApp) readLearnedFromTheAppStatusTable];
          }
        }

        v14 = objc_alloc_init(NSDictionary);
      }

      else
      {
        v14 = v10;
      }

      v16 = v14;
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No plist found at path.", buf, 2u);
      }

      v16 = objc_alloc_init(NSDictionary);
    }
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) readLearnedFromTheAppStatusTable];
    }

    v16 = objc_alloc_init(NSDictionary);
  }

  return v16;
}

+ (void)persistLearnedFromTheAppStatusTable:(id)a3
{
  v3 = a3;
  v4 = +[MOPersistenceUtilities userCacheDirectoryPath];
  if (v4)
  {
    v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
    v6 = [v5 URLByAppendingPathComponent:@"learnedFromTheApp.plist"];

    if (v6)
    {
      v13 = 0;
      v7 = [v3 writeToURL:v6 error:&v13];
      v8 = v13;
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
      v10 = v9;
      if (v8 || (v7 & 1) == 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(MOEventBundleProcessor(LearnFromThisApp) *)v8 persistLearnedFromTheAppStatusTable:v10];
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "LFTA status were successfully written to plist.", v12, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) persistLearnedFromTheAppStatusTable:];
    }
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[MOEventBundleProcessor(LearnFromThisApp) persistLearnedFromTheAppStatusTable:];
  }

LABEL_15:
}

+ (id)onboardingDatesBySourceTypeWithStandardSuite:(BOOL)a3
{
  if (a3)
  {
    v3 = [[MODefaultsManager alloc] initWithSuiteName:@"com.apple.momentsd"];
  }

  else
  {
    v3 = objc_alloc_init(MODefaultsManager);
  }

  v4 = v3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = +[MOEventBundleSourceTypes all];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(MODefaultsManager *)v4 onboardingDateFor:v11];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(MODefaultsManager *)v4 onboardingDateForJournalingSuggestions];
  [v5 setObject:v13 forKeyedSubscript:@"OnboardingDate"];

  return v5;
}

+ (void)trimmedFrom:(uint64_t)a1 with:(uint64_t)a2 respectOnboardingDate:shouldUseStandardSuite:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  v5 = [v4 UUIDString];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_1_13(&_mh_execute_header, v6, v7, "trimmedFrom, no resources, dropping bundle, bundleID=%@");
}

+ (void)trimmedFrom:(uint64_t)a1 with:(uint64_t)a2 respectOnboardingDate:shouldUseStandardSuite:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  v5 = [v4 UUIDString];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_1_13(&_mh_execute_header, v6, v7, "trimmedFrom, nil resources, dropping bundle, bundleID=%@");
}

@end