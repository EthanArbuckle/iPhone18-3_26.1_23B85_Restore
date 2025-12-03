@interface MODaemonAnalyticsManager
- (MODaemonAnalyticsManager)initWithUniverse:(id)universe;
- (id)calculateDeltaTime:(id)time fromPreviousTime:(id)previousTime withBinArray:(id)array;
- (id)checkTriggerSuccess:(id)success;
- (id)getDaemonPlistFileURL;
- (id)readPersistenceTable:(id)table;
- (void)persistDaemonMetrics:(id)metrics withData:(id)data;
- (void)sendDataToCoreAnalytics:(id)analytics;
@end

@implementation MODaemonAnalyticsManager

- (MODaemonAnalyticsManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v52.receiver = self;
  v52.super_class = MODaemonAnalyticsManager;
  v6 = [(MODaemonAnalyticsManager *)&v52 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MODaemonAnalyticsQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__25;
    v50 = __Block_byref_object_dispose__25;
    getDaemonPlistFileURL = [(MODaemonAnalyticsManager *)v6 getDaemonPlistFileURL];
    v10 = [(MODaemonAnalyticsManager *)v6 readPersistenceTable:v47[5]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(NSMutableDictionary);
    }

    v14 = v12;
    v15 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v14 setObject:v15 forKey:@"lastLaunch"];

    [(MODaemonAnalyticsManager *)v6 persistDaemonMetrics:v47[5] withData:v14];
    v16 = [MOMetric binsFromStart:&off_10036A1F8 toEnd:&off_10036E6C0 gap:&off_10036E6D0];
    v17 = [MOMetric binsFromStart:&off_10036E6E0 toEnd:&off_10036E6F0 gap:&off_10036E700];
    v39 = [v16 arrayByAddingObjectsFromArray:v17];
    v37 = v17;
    v38 = v16;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [universeCopy getService:v19];

    v21 = [universeCopy getService:@"EventRefreshSchedulerNotifier"];
    v22 = [universeCopy getService:@"DaemonClientNotifier"];
    v23 = v22;
    v36 = v11;
    if (v20)
    {
      if (v21)
      {
        if (v22)
        {
          v24 = [[MODispatcher alloc] initWithNotifier:v20];
          v34 = v23;
          v35 = [[MODispatcher alloc] initWithNotifier:v21];
          v25 = [[MODispatcher alloc] initWithNotifier:v23];
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke;
          v44[3] = &unk_10033C3F8;
          v26 = v6;
          v45 = v26;
          v27 = objc_retainBlock(v44);
          [(MODispatcher *)v24 registerForNotification:4 withHandler:v27];
          [(MODispatcher *)v24 registerForNotification:1 withHandler:v27];
          [(MODispatcher *)v24 registerForNotification:3 withHandler:v27];
          [(MODispatcher *)v24 registerForNotification:2 withHandler:v27];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_84;
          v40[3] = &unk_10033C468;
          v28 = v26;
          v41 = v28;
          v43 = &v46;
          v42 = v39;
          v29 = objc_retainBlock(v40);
          [(MODispatcher *)v35 registerForNotification:2 withHandler:v29];
          [(MODispatcher *)v35 registerForNotification:3 withHandler:v29];
          [(MODispatcher *)v35 registerForNotification:5 withHandler:v29];
          [(MODispatcher *)v35 registerForNotification:4 withHandler:v29];
          [(MODispatcher *)v25 registerForNotification:0 withHandler:v29];
          [(MODispatcher *)v25 registerForNotification:1 withHandler:v29];
          [(MODispatcher *)v25 registerForNotification:2 withHandler:v29];
          [(MODispatcher *)v25 registerForNotification:3 withHandler:v29];
          [(MODispatcher *)v25 registerForNotification:4 withHandler:v29];
          [(MODispatcher *)v25 registerForNotification:5 withHandler:v29];
          v13 = v28;

          v23 = v34;
LABEL_20:

          _Block_object_dispose(&v46, 8);
          goto LABEL_21;
        }

        v32 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [MODaemonAnalyticsManager initWithUniverse:];
        }

        v24 = +[NSAssertionHandler currentHandler];
        [(MODispatcher *)v24 handleFailureInMethod:a2 object:v6 file:@"MODaemonAnalyticsManager.m" lineNumber:82 description:@"Invalid parameter not satisfying: daemonClientNotifier"];
      }

      else
      {
        v31 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [MODaemonAnalyticsManager initWithUniverse:];
        }

        v24 = +[NSAssertionHandler currentHandler];
        [(MODispatcher *)v24 handleFailureInMethod:a2 object:v6 file:@"MODaemonAnalyticsManager.m" lineNumber:81 description:@"Invalid parameter not satisfying: eventRefreshSchedulerNotifier"];
      }
    }

    else
    {
      v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [MODaemonAnalyticsManager initWithUniverse:];
      }

      v24 = +[NSAssertionHandler currentHandler];
      [(MODispatcher *)v24 handleFailureInMethod:a2 object:v6 file:@"MODaemonAnalyticsManager.m" lineNumber:80 description:@"Invalid parameter not satisfying: darwinNotifier"];
    }

    v13 = 0;
    goto LABEL_20;
  }

  v13 = 0;
LABEL_21:

  return v13;
}

void __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_transaction_create();
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "First unlock triggered", &v12, 2u);
      }

      goto LABEL_17;
    }

    if (a2 == 4)
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Battery status changed %@", &v12, 0xCu);
      }

      v8 = [v5 objectForKey:@"stateOnCharger"];
      [*(a1 + 32) setStateOnCharger:v8];
      goto LABEL_17;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Managed configuration changed %@", &v12, 0xCu);
      }

      v11 = [v5 objectForKey:@"optInDNU"];
      [*(a1 + 32) setOptInDNU:v11];

      v8 = [v5 objectForKey:@"optInIHA"];
      [*(a1 + 32) setOptInIHA:v8];
      goto LABEL_17;
    }

    if (a2 == 2)
    {
      v7 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Locked status changed %@", &v12, 0xCu);
      }

      v8 = [v5 objectForKey:@"stateUnlocked"];
      [*(a1 + 32) setStateUnlocked:v8];
LABEL_17:
    }
  }
}

void __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_84(uint64_t a1, int a2, void *a3)
{
  v109 = a3;
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x3032000000;
  v139[3] = __Block_byref_object_copy__25;
  v139[4] = __Block_byref_object_dispose__25;
  v140 = os_transaction_create();
  if (v109)
  {
    v5 = [v109 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  v6 = v5;
  v7 = [v5 allKeys];
  v142[0] = @"stateDatabaseAvailable";
  v142[1] = @"resultWorkoutsSuccess";
  v142[2] = @"resultMindfulSessionsSuccess";
  v142[3] = @"resultPeopleDiscoverySuccess";
  v142[4] = @"resultPeopleCountSuccess";
  v142[5] = @"resultPeopleDensitySuccess";
  v142[6] = @"resultVisitsSuccess";
  v142[7] = @"resultVisitsTrainingSuccess";
  v142[8] = @"resultPhotosSuccess";
  v142[9] = @"resultSharedPhotosSuccess";
  v142[10] = @"resultTopicsSuccess";
  v142[11] = @"resultSharedSuccess";
  v142[12] = @"resultSuggestedSuccess";
  v142[13] = @"resultTripsSuccess";
  v142[14] = @"resultMusicSuccess";
  v142[15] = @"resultContactsSuccess";
  v142[16] = @"resultMotionSuccess";
  v142[17] = @"resultLifeEventsSuccess";
  v142[18] = @"resultScreenTimeSuccess";
  v142[19] = @"resultSpotlightSuccess";
  [NSArray arrayWithObjects:v142 count:20];
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v8 = v136 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v135 objects:v141 count:16];
  if (v9)
  {
    v10 = *v136;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v136 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v135 + 1) + 8 * i);
        if (([v7 containsObject:v12] & 1) == 0)
        {
          [v6 setObject:&__kCFBooleanTrue forKey:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v135 objects:v141 count:16];
    }

    while (v9);
  }

  if (([v7 containsObject:@"resultOverallSuccess"] & 1) == 0)
  {
    v13 = [*(a1 + 32) checkTriggerSuccess:v6];
    [v6 setObject:v13 forKey:@"resultOverallSuccess"];
  }

  v14 = [v6 objectForKey:@"resultNumberOfEvents"];
  v15 = v14 == 0;

  if (v15)
  {
    [v6 setObject:&off_10036A1F8 forKey:@"resultNumberOfEvents"];
  }

  v16 = [v6 objectForKey:@"resultNumberOfBundleEvents"];
  v17 = v16 == 0;

  if (v17)
  {
    [v6 setObject:&off_10036A1F8 forKey:@"resultNumberOfBundleEvents"];
  }

  v18 = [*(a1 + 32) readPersistenceTable:*(*(*(a1 + 48) + 8) + 40)];
  v111 = [v18 mutableCopy];
  Current = CFAbsoluteTimeGetCurrent();
  v20 = [v6 objectForKey:@"resultOverallSuccess"];

  v21 = [v18 objectForKey:@"lastTrigger"];

  if (v21)
  {
    v22 = *(a1 + 32);
    v23 = [NSNumber numberWithDouble:Current];
    v24 = [v18 objectForKey:@"lastTrigger"];
    v25 = [v22 calculateDeltaTime:v23 fromPreviousTime:v24 withBinArray:*(a1 + 40)];
    [v6 setObject:v25 forKey:@"triggerTimeSinceLastTrigger"];
  }

  else
  {
    [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastTrigger"];
  }

  v26 = [NSNumber numberWithDouble:Current];
  [v111 setObject:v26 forKey:@"lastTrigger"];

  if (v20)
  {
    v27 = [v18 objectForKey:@"lastSuccessfulTrigger"];

    if (v27)
    {
      v28 = *(a1 + 32);
      v29 = [NSNumber numberWithDouble:Current];
      v30 = [v18 objectForKey:@"lastSuccessfulTrigger"];
      v31 = [v28 calculateDeltaTime:v29 fromPreviousTime:v30 withBinArray:*(a1 + 40)];
      [v6 setObject:v31 forKey:@"triggerTimeSinceLastSuccessfulTrigger"];
    }

    else
    {
      [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSuccessfulTrigger"];
    }

    v32 = [NSNumber numberWithDouble:Current];
    [v111 setObject:v32 forKey:@"lastSuccessfulTrigger"];
  }

  v33 = [v18 objectForKey:@"lastLaunch"];

  if (v33)
  {
    v34 = *(a1 + 32);
    v35 = [NSNumber numberWithDouble:Current];
    v36 = [v18 objectForKey:@"lastLaunch"];
    v37 = [v34 calculateDeltaTime:v35 fromPreviousTime:v36 withBinArray:*(a1 + 40)];
    [v6 setObject:v37 forKey:@"triggerTimeSinceLastLaunch"];
  }

  else
  {
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_84_cold_1();
    }
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        [v6 setObject:@"compute" forKey:@"triggerReason"];
        v53 = [v18 objectForKey:@"lastComputeTrigger"];

        if (v53)
        {
          v54 = *(a1 + 32);
          v55 = [NSNumber numberWithDouble:Current];
          v56 = [v18 objectForKey:@"lastComputeTrigger"];
          v57 = [v54 calculateDeltaTime:v55 fromPreviousTime:v56 withBinArray:*(a1 + 40)];
          [v6 setObject:v57 forKey:@"triggerTimeSinceLastSimilarTrigger"];
        }

        else
        {
          [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSimilarTrigger"];
          [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
        }

        if (v20)
        {
          v75 = [v18 objectForKey:@"lastComputeSuccessfulTrigger"];

          if (v75)
          {
            v76 = *(a1 + 32);
            v77 = [NSNumber numberWithDouble:Current];
            v78 = [v18 objectForKey:@"lastComputeSuccessfulTrigger"];
            v79 = [v76 calculateDeltaTime:v77 fromPreviousTime:v78 withBinArray:*(a1 + 40)];
            [v6 setObject:v79 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
          }

          v80 = [NSNumber numberWithDouble:Current];
          [v111 setObject:v80 forKey:@"lastComputeSuccessfulTrigger"];
        }

        v74 = [NSNumber numberWithDouble:Current];
        [v111 setObject:v74 forKey:@"lastComputeTrigger"];
        break;
      case 4:
        [v6 setObject:@"purge" forKey:@"triggerReason"];
        v63 = [v18 objectForKey:@"lastPurgeTrigger"];

        if (v63)
        {
          v64 = *(a1 + 32);
          v65 = [NSNumber numberWithDouble:Current];
          v66 = [v18 objectForKey:@"lastPurgeTrigger"];
          v67 = [v64 calculateDeltaTime:v65 fromPreviousTime:v66 withBinArray:*(a1 + 40)];
          [v6 setObject:v67 forKey:@"triggerTimeSinceLastSimilarTrigger"];
        }

        else
        {
          [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSimilarTrigger"];
          [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
        }

        if (v20)
        {
          v99 = [v18 objectForKey:@"lastPurgeSuccessfulTrigger"];

          if (v99)
          {
            v100 = *(a1 + 32);
            v101 = [NSNumber numberWithDouble:Current];
            v102 = [v18 objectForKey:@"lastPurgeSuccessfulTrigger"];
            v103 = [v100 calculateDeltaTime:v101 fromPreviousTime:v102 withBinArray:*(a1 + 40)];
            [v6 setObject:v103 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
          }

          v104 = [NSNumber numberWithDouble:Current];
          [v111 setObject:v104 forKey:@"lastPurgeSuccessfulTrigger"];
        }

        v74 = [NSNumber numberWithDouble:Current];
        [v111 setObject:v74 forKey:@"lastPurgeTrigger"];
        break;
      case 5:
        [v6 setObject:@"trends" forKey:@"triggerReason"];
        v43 = [v18 objectForKey:@"lastTrendsTrigger"];

        if (v43)
        {
          v44 = *(a1 + 32);
          v45 = [NSNumber numberWithDouble:Current];
          v46 = [v18 objectForKey:@"lastTrendsTrigger"];
          v47 = [v44 calculateDeltaTime:v45 fromPreviousTime:v46 withBinArray:*(a1 + 40)];
          [v6 setObject:v47 forKey:@"triggerTimeSinceLastSimilarTrigger"];
        }

        else
        {
          [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSimilarTrigger"];
          [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
        }

        if (v20)
        {
          v87 = [v18 objectForKey:@"lastTrendsSuccessfulTrigger"];

          if (v87)
          {
            v88 = *(a1 + 32);
            v89 = [NSNumber numberWithDouble:Current];
            v90 = [v18 objectForKey:@"lastTrendsSuccessfulTrigger"];
            v91 = [v88 calculateDeltaTime:v89 fromPreviousTime:v90 withBinArray:*(a1 + 40)];
            [v6 setObject:v91 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
          }

          v92 = [NSNumber numberWithDouble:Current];
          [v111 setObject:v92 forKey:@"lastTrendsSuccessfulTrigger"];
        }

        v74 = [NSNumber numberWithDouble:Current];
        [v111 setObject:v74 forKey:@"lastTrendsTrigger"];
        break;
      default:
        goto LABEL_87;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      [v6 setObject:@"fetchBundle" forKey:@"triggerReason"];
      v58 = [v18 objectForKey:@"lastFetchBundleTrigger"];

      if (v58)
      {
        v59 = *(a1 + 32);
        v60 = [NSNumber numberWithDouble:Current];
        v61 = [v18 objectForKey:@"lastFetchBundleTrigger"];
        v62 = [v59 calculateDeltaTime:v60 fromPreviousTime:v61 withBinArray:*(a1 + 40)];
        [v6 setObject:v62 forKey:@"triggerTimeSinceLastSimilarTrigger"];
      }

      else
      {
        [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSimilarTrigger"];
        [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
      }

      if (v20)
      {
        v93 = [v18 objectForKey:@"lastSuccessfulFetchBundleTrigger"];

        if (v93)
        {
          v94 = *(a1 + 32);
          v95 = [NSNumber numberWithDouble:Current];
          v96 = [v18 objectForKey:@"lastSuccessfulFetchBundleTrigger"];
          v97 = [v94 calculateDeltaTime:v95 fromPreviousTime:v96 withBinArray:*(a1 + 40)];
          [v6 setObject:v97 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
        }

        v98 = [NSNumber numberWithDouble:Current];
        [v111 setObject:v98 forKey:@"lastSuccessfulFetchBundleTrigger"];
      }

      v74 = [NSNumber numberWithDouble:Current];
      [v111 setObject:v74 forKey:@"lastFetchBundleTrigger"];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_87;
      }

      [v6 setObject:@"collect" forKey:@"triggerReason"];
      v38 = [v18 objectForKey:@"lastCollectTrigger"];

      if (v38)
      {
        v39 = *(a1 + 32);
        v40 = [NSNumber numberWithDouble:Current];
        v41 = [v18 objectForKey:@"lastCollectTrigger"];
        v42 = [v39 calculateDeltaTime:v40 fromPreviousTime:v41 withBinArray:*(a1 + 40)];
        [v6 setObject:v42 forKey:@"triggerTimeSinceLastSimilarTrigger"];
      }

      else
      {
        [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSimilarTrigger"];
        [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
      }

      if (v20)
      {
        v81 = [v18 objectForKey:@"lastCollectSuccessfulTrigger"];

        if (v81)
        {
          v82 = *(a1 + 32);
          v83 = [NSNumber numberWithDouble:Current];
          v84 = [v18 objectForKey:@"lastCollectSuccessfulTrigger"];
          v85 = [v82 calculateDeltaTime:v83 fromPreviousTime:v84 withBinArray:*(a1 + 40)];
          [v6 setObject:v85 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
        }

        v86 = [NSNumber numberWithDouble:Current];
        [v111 setObject:v86 forKey:@"lastCollectSuccessfulTrigger"];
      }

      v74 = [NSNumber numberWithDouble:Current];
      [v111 setObject:v74 forKey:@"lastCollectTrigger"];
    }
  }

  else
  {
    [v6 setObject:@"fetch" forKey:@"triggerReason"];
    v48 = [v18 objectForKey:@"lastFetchTrigger"];

    if (v48)
    {
      v49 = *(a1 + 32);
      v50 = [NSNumber numberWithDouble:Current];
      v51 = [v18 objectForKey:@"lastFetchTrigger"];
      v52 = [v49 calculateDeltaTime:v50 fromPreviousTime:v51 withBinArray:*(a1 + 40)];
      [v6 setObject:v52 forKey:@"triggerTimeSinceLastSimilarTrigger"];
    }

    else
    {
      [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSimilarTrigger"];
      [v6 setObject:&off_10036A210 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
    }

    if (v20)
    {
      v68 = [v18 objectForKey:@"lastSuccessfulFetchTrigger"];

      if (v68)
      {
        v69 = *(a1 + 32);
        v70 = [NSNumber numberWithDouble:Current];
        v71 = [v18 objectForKey:@"lastSuccessfulFetchTrigger"];
        v72 = [v69 calculateDeltaTime:v70 fromPreviousTime:v71 withBinArray:*(a1 + 40)];
        [v6 setObject:v72 forKey:@"triggerTimeSinceLastSuccessfulSimilarTrigger"];
      }

      v73 = [NSNumber numberWithDouble:Current];
      [v111 setObject:v73 forKey:@"lastSuccessfulFetchTrigger"];
    }

    v74 = [NSNumber numberWithDouble:Current];
    [v111 setObject:v74 forKey:@"lastFetchTrigger"];
  }

  [*(a1 + 32) persistDaemonMetrics:*(*(*(a1 + 48) + 8) + 40) withData:v111];
LABEL_87:
  v133[0] = 0;
  v133[1] = v133;
  v133[2] = 0x2020000000;
  v134 = 0;
  v131[0] = 0;
  v131[1] = v131;
  v131[2] = 0x2020000000;
  v132 = 5;
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x2020000000;
  v130 = 3;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__89;
  v127 = __Block_byref_object_dispose__90;
  v128 = &__block_literal_global_31;
  v121[0] = 0;
  v121[1] = v121;
  v121[2] = 0x2020000000;
  v122 = arc4random_uniform(0x64u);
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_2;
  v112[3] = &unk_10033C440;
  v115 = v133;
  v116 = v131;
  v113 = *(a1 + 32);
  v117 = v121;
  v105 = v6;
  v114 = v105;
  v118 = &v123;
  v119 = v139;
  v120 = v129;
  v106 = objc_retainBlock(v112);
  v107 = objc_retainBlock(v106);
  v108 = v124[5];
  v124[5] = v107;

  if (v106)
  {
    (v106[2])(v106);
  }

  _Block_object_dispose(v121, 8);
  _Block_object_dispose(&v123, 8);

  _Block_object_dispose(v129, 8);
  _Block_object_dispose(v131, 8);
  _Block_object_dispose(v133, 8);

  _Block_object_dispose(v139, 8);
}

void __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) > 4)
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_2_cold_1(a1, v13);
    }

    v14 = [*(a1 + 32) optInDNU];

    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) optInDNU];
      [v15 setObject:v16 forKey:@"optInDNU"];
    }

    v17 = [*(a1 + 32) optInIHA];

    if (v17)
    {
      v18 = *(a1 + 40);
      v19 = [*(a1 + 32) optInIHA];
      [v18 setObject:v19 forKey:@"optInIHA"];
    }

    v20 = [*(a1 + 32) stateOnCharger];

    if (!v20)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v2 = [*(a1 + 32) optInDNU];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) optInIHA];
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 32) stateOnCharger];

      if (v6)
      {
        v7 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(*(a1 + 64) + 8) + 24);
          *buf = 67109120;
          v37 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Darwin properties are all set for block ID: %u. Sending payload to CoreAnalytics!", buf, 8u);
        }

        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) optInDNU];
        [v9 setObject:v10 forKey:@"optInDNU"];

        v11 = *(a1 + 40);
        v12 = [*(a1 + 32) optInIHA];
        [v11 setObject:v12 forKey:@"optInIHA"];

LABEL_15:
        v21 = *(a1 + 40);
        v22 = [*(a1 + 32) stateOnCharger];
        [v21 setObject:v22 forKey:@"stateOnCharger"];

LABEL_16:
        v23 = [*(a1 + 32) stateUnlocked];

        if (v23)
        {
          v24 = *(a1 + 40);
          v25 = [*(a1 + 32) stateUnlocked];
          [v24 setObject:v25 forKey:@"stateUnlocked"];
        }

        [*(a1 + 32) sendDataToCoreAnalytics:*(a1 + 40)];
        v26 = *(*(a1 + 72) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = 0;

        v28 = *(*(a1 + 80) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = 0;
        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  v30 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(*(*(a1 + 88) + 8) + 24);
    v32 = *(*(*(a1 + 48) + 8) + 24);
    v33 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 67109632;
    v37 = v31;
    v38 = 1024;
    v39 = v32;
    v40 = 1024;
    v41 = v33;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Darwin properties are not all set, scheduling a delay for %i seconds. This happened %i time(s) before for block ID: %u.", buf, 0x14u);
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v34 = dispatch_time(0, 1000000000 * *(*(*(a1 + 88) + 8) + 24));
  v29 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_93;
  block[3] = &unk_100338280;
  block[4] = *(a1 + 72);
  dispatch_after(v34, v29, block);
LABEL_23:
}

void __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_93(uint64_t a1)
{
  v1 = objc_retainBlock(*(*(*(a1 + 32) + 8) + 40));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (id)checkTriggerSuccess:(id)success
{
  successCopy = success;
  v4 = [successCopy objectForKey:@"resultWorkoutsSuccess"];
  if (![v4 BOOLValue])
  {
    goto LABEL_24;
  }

  v5 = [successCopy objectForKey:@"resultMindfulSessionsSuccess"];
  if (![v5 BOOLValue])
  {
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v6 = [successCopy objectForKey:@"resultVisitsSuccess"];
  if (![v6 BOOLValue])
  {
LABEL_22:

    goto LABEL_23;
  }

  v7 = [successCopy objectForKey:@"resultVisitsTrainingSuccess"];
  if (![v7 BOOLValue])
  {
LABEL_21:

    goto LABEL_22;
  }

  v8 = [successCopy objectForKey:@"resultPhotosSuccess"];
  if (![v8 BOOLValue])
  {
LABEL_20:

    goto LABEL_21;
  }

  v9 = [successCopy objectForKey:@"resultSharedPhotosSuccess"];
  if (![v9 BOOLValue])
  {
LABEL_19:

    goto LABEL_20;
  }

  v10 = [successCopy objectForKey:@"resultTopicsSuccess"];
  if (![v10 BOOLValue])
  {
LABEL_18:

    goto LABEL_19;
  }

  v11 = [successCopy objectForKey:@"resultSharedSuccess"];
  if (![v11 BOOLValue])
  {
LABEL_17:

    goto LABEL_18;
  }

  v12 = [successCopy objectForKey:@"resultSuggestedSuccess"];
  if (![v12 BOOLValue])
  {
LABEL_16:

    goto LABEL_17;
  }

  v22 = v12;
  v13 = [successCopy objectForKey:@"resultTripsSuccess"];
  if (![v13 BOOLValue])
  {

    v12 = v22;
    goto LABEL_16;
  }

  v21 = v13;
  v20 = [successCopy objectForKey:@"resultMusicSuccess"];
  if ([v20 BOOLValue])
  {
    v19 = [successCopy objectForKey:@"resultContactsSuccess"];
    if ([v19 BOOLValue])
    {
      v18 = [successCopy objectForKey:@"stateDatabaseAvailable"];
      if ([v18 BOOLValue])
      {
        v17 = [successCopy objectForKey:@"resultLifeEventsSuccess"];
        bOOLValue = [v17 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  if (bOOLValue)
  {
    v15 = &__kCFBooleanTrue;
    goto LABEL_26;
  }

LABEL_25:
  v15 = &__kCFBooleanFalse;
LABEL_26:

  return v15;
}

- (id)calculateDeltaTime:(id)time fromPreviousTime:(id)previousTime withBinArray:(id)array
{
  timeCopy = time;
  previousTimeCopy = previousTime;
  arrayCopy = array;
  if (!timeCopy)
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MODaemonAnalyticsManager calculateDeltaTime:fromPreviousTime:withBinArray:];
    }

    v20 = +[NSAssertionHandler currentHandler];
    v17 = v20;
    v21 = @"Invalid parameter not satisfying: currentTime != nil";
    v22 = a2;
    selfCopy2 = self;
    v24 = 400;
    goto LABEL_14;
  }

  if (!previousTimeCopy)
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MODaemonAnalyticsManager calculateDeltaTime:fromPreviousTime:withBinArray:];
    }

    v20 = +[NSAssertionHandler currentHandler];
    v17 = v20;
    v21 = @"Invalid parameter not satisfying: lastTime != nil";
    v22 = a2;
    selfCopy2 = self;
    v24 = 401;
LABEL_14:
    [v20 handleFailureInMethod:v22 object:selfCopy2 file:@"MODaemonAnalyticsManager.m" lineNumber:v24 description:v21];
    v18 = 0;
    goto LABEL_15;
  }

  [timeCopy doubleValue];
  v13 = v12;
  [previousTimeCopy doubleValue];
  v15 = v13 - v14;
  if (v15 < 0.0)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Time of previous trigger is after the current time.", v27, 2u);
    }
  }

  v17 = [NSNumber numberWithDouble:v15];
  v18 = [MOMetric binForNumber:v17 bins:arrayCopy];
LABEL_15:

  return v18;
}

- (id)readPersistenceTable:(id)table
{
  tableCopy = table;
  v4 = +[NSFileManager defaultManager];
  path = [tableCopy path];
  v6 = [v4 fileExistsAtPath:path];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v19 = @"daemonTriggerPersistence.plist";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "File %@ found.", buf, 0xCu);
    }

    v17 = 0;
    v9 = [[NSDictionary alloc] initWithContentsOfURL:tableCopy error:&v17];
    v10 = v17;
    if (v10)
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MODaemonAnalyticsManager *)v10 readPersistenceTable:v11];
      }

      v16 = 0;
      [v4 removeItemAtURL:tableCopy error:&v16];
      if (v16)
      {
        v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [MODaemonAnalyticsManager readPersistenceTable:];
        }
      }

      v13 = objc_alloc_init(NSDictionary);
    }

    else
    {
      v13 = v9;
    }

    v14 = v13;
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No plist found at path.", buf, 2u);
    }

    v14 = objc_alloc_init(NSDictionary);
  }

  return v14;
}

- (void)persistDaemonMetrics:(id)metrics withData:(id)data
{
  if (metrics)
  {
    v9 = 0;
    v4 = [data writeToURL:metrics error:&v9];
    v5 = v9;
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
    v7 = v6;
    if (v5 || (v4 & 1) == 0)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [MODaemonAnalyticsManager persistDaemonMetrics:v5 withData:v7];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "daemon metrics were successfully written to plist.", v8, 2u);
    }
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MODaemonAnalyticsManager persistDaemonMetrics:withData:];
    }
  }
}

- (id)getDaemonPlistFileURL
{
  v2 = +[MOPersistenceManager userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"daemonTriggerPersistence.plist"];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonAnalyticsManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MODaemonAnalyticsManager getDaemonPlistFileURL];
    }

    v4 = 0;
  }

  return v4;
}

- (void)sendDataToCoreAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v3 = analyticsCopy;
  AnalyticsSendEventLazy();
}

void __45__MODaemonAnalyticsManager_initWithUniverse___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*(a1 + 64) + 8) + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Giving up waiting - darwin property(s) not set for block ID: %u. Sending to CoreAnalytics with missing field(s)", v3, 8u);
}

- (void)readPersistenceTable:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not read to the daemon analytics plist file, error: %@", &v2, 0xCu);
}

- (void)persistDaemonMetrics:(uint64_t)a1 withData:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "couldn't write to the daemon metrics plist file, %@", &v2, 0xCu);
}

@end