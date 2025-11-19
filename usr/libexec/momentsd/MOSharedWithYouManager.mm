@interface MOSharedWithYouManager
- (BOOL)_sharedWithYouEnabled;
- (MOSharedWithYouManager)initWithUniverse:(id)a3;
- (SWHighlightCenter)swHighlightCenter;
- (id)createEventFromHighlight:(id)a3;
- (id)redactURL:(id)a3;
- (id)rehydratedSharedContentEvents:(id)a3;
- (void)_updateSharedContentsDeletedAtSource:(id)a3 handler:(id)a4;
- (void)fetchAndSaveSharedContentBetweenStartDate:(id)a3 EndDate:(id)a4 handler:(id)a5;
- (void)fetchSharedContentBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)highlightCenterHighlightsDidChange:(id)a3;
- (void)saveHighlights:(id)a3 handler:(id)a4;
- (void)updateSharedContentsDeletedAtSource:(id)a3 handler:(id)a4;
@end

@implementation MOSharedWithYouManager

- (MOSharedWithYouManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 getService:v7];

  if (!v8)
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MOSharedWithYouManager initWithUniverse:];
    }

    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MOSharedWithYouManager.m" lineNumber:71 description:@"Invalid parameter not satisfying: [universe getService:NSStringFromClass([MOEventStore class])]"];
    goto LABEL_13;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v5 getService:v10];

  if (!v11)
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MOPeopleDiscoveryManager initWithUniverse:];
    }

    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"MOSharedWithYouManager.m" lineNumber:73 description:@"Invalid parameter not satisfying: configurationManager"];

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v28.receiver = self;
  v28.super_class = MOSharedWithYouManager;
  v12 = [(MOSharedWithYouManager *)&v28 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("MOSharedWithYouManager", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v5 getService:v17];
    momentStore = v12->_momentStore;
    v12->_momentStore = v18;

    objc_storeStrong(&v12->_configurationManager, v11);
    if ([(MOSharedWithYouManager *)v12 _sharedWithYouEnabled])
    {
      v20 = dispatch_semaphore_create(0);
      swySemaphore = v12->_swySemaphore;
      v12->_swySemaphore = v20;

      v12->_highlightsCacheNotificationPending = 1;
      swHighlightCenter = v12->_swHighlightCenter;
      v12->_swHighlightCenter = 0;
    }
  }

  self = v12;
  v23 = self;
LABEL_14:

  return v23;
}

- (BOOL)_sharedWithYouEnabled
{
  v2 = 0;
  if ([(MOConfigurationManagerBase *)self->_configurationManager getBoolSettingForKey:@"EventManagerOverrideSwitchSharedWithYou" withFallback:0])
  {
    v3 = CFPreferencesCopyAppValue(@"SharedWithYouEnabled", @"com.apple.SocialLayer");
    v4 = v3;
    if (v3 && ([v3 BOOLValue] & 1) != 0)
    {
      v5 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
      v2 = 1;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#swy,sharedWithYou enabled!", v7, 2u);
      }
    }

    else
    {
      v5 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#swy,sharedWithYou not enabled!", buf, 2u);
      }

      v2 = 0;
    }
  }

  return v2;
}

- (SWHighlightCenter)swHighlightCenter
{
  if (SharedWithYouLibraryCore() && !self->_swHighlightCenter)
  {
    v3 = [objc_alloc(getSWHighlightCenterClass()) init];
    swHighlightCenter = self->_swHighlightCenter;
    self->_swHighlightCenter = v3;

    [(SWHighlightCenter *)self->_swHighlightCenter setDelegate:self];
  }

  v5 = self->_swHighlightCenter;

  return v5;
}

- (void)fetchSharedContentBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MOSharedWithYouManager *)self _sharedWithYouEnabled]&& ([(MOSharedWithYouManager *)self swHighlightCenter], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#swy,fetchSharedContentBetweenStartDate", buf, 2u);
    }

    v38 = v10;
    if (self->_highlightsCacheNotificationPending)
    {
      v13 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptSource/SharedWithYou/MOSharedWithYouManager.m", 139, "[MOSharedWithYouManager fetchSharedContentBetweenStartDate:EndDate:CompletionHandler:]"];
      swySemaphore = self->_swySemaphore;
      v48 = 0;
      v15 = MOSemaphoreWaitAndFaultIfTimeout_Internal(swySemaphore, &v48, v13, 5.0);
      v37 = v48;
      if (!v15)
      {
        v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [MOTripAnnotationManager hometownReferenceLocations];
        }
      }
    }

    else
    {
      v37 = 0;
    }

    v17 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = [(MOSharedWithYouManager *)self swHighlightCenter];
    v19 = [v18 highlights];

    v43 = [v19 countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v43)
    {
      v20 = *v45;
      v39 = v17;
      v40 = v8;
      v42 = *v45;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v19);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v23 = [v22 slHighlight];
          v24 = [v23 timestamp];
          v25 = [v24 betweenDate:v8 andDate:v9];

          if (v25)
          {
            v26 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v41 = [v22 URL];
              v27 = [v41 absoluteString];
              v28 = [v22 slHighlight];
              v29 = [v28 identifier];
              v30 = [v22 slHighlight];
              [v30 timestamp];
              v31 = v19;
              v33 = v32 = v9;
              *buf = 138412802;
              v50 = v27;
              v51 = 2112;
              v52 = v29;
              v53 = 2112;
              v54 = v33;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#swy,found highlight within timeperiod,url,%@,identifier,%@,timestamp,%@", buf, 0x20u);

              v9 = v32;
              v19 = v31;

              v8 = v40;
              v17 = v39;
            }

            v34 = [v22 copy];
            [v17 addObject:v34];

            v20 = v42;
          }
        }

        v43 = [v19 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v43);
    }

    v35 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v17 count];
      *buf = 134217984;
      v50 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "#swy,highlights returned from fetch,%lu", buf, 0xCu);
    }

    v10 = v38;
    v38[2](v38, v17, 0);
  }

  else
  {
    v10[2](v10, &__NSArray0__struct, 0);
  }
}

- (void)highlightCenterHighlightsDidChange:(id)a3
{
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#swy,highlightCenterHighlightsDidChange", v6, 2u);
  }

  swySemaphore = self->_swySemaphore;
  if (swySemaphore)
  {
    if (self->_highlightsCacheNotificationPending)
    {
      self->_highlightsCacheNotificationPending = 0;
      dispatch_semaphore_signal(swySemaphore);
    }
  }
}

- (id)createEventFromHighlight:(id)a3
{
  v4 = a3;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v4 timestamp];
  v8 = [v4 timestamp];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v7 endDate:v8 creationDate:v9 provider:11 category:9];

  v11 = [v4 timestamp];
  v12 = [(MOSharedWithYouManager *)self configurationManager];
  LODWORD(v13) = 1242802176;
  [v12 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v13];
  v15 = [v11 dateByAddingTimeInterval:v14];
  [(MOEvent *)v10 setExpirationDate:v15];

  v16 = [v4 slHighlight];

  v17 = [v16 identifier];
  [(MOEvent *)v10 setIdentifierFromProvider:v17];

  v18 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(MOEvent *)v10 identifierFromProvider];
    v20 = [(MOEvent *)v10 startDate];
    v21 = [(MOEvent *)v10 endDate];
    v23 = 138412802;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#swy,identifierFromProvider, %@, startDate, %@, endDate,%@,", &v23, 0x20u);
  }

  return v10;
}

- (void)saveHighlights:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate distantFuture];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 timestamp];
        v15 = [v8 isAfterDate:v14];

        if (v15)
        {
          v16 = [v13 timestamp];

          v8 = v16;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__21;
  v32[3] = __Block_byref_object_dispose__21;
  v33 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__21;
  v29[4] = __Block_byref_object_dispose__21;
  v30 = 0;
  v17 = [(MOSharedWithYouManager *)self momentStore];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __49__MOSharedWithYouManager_saveHighlights_handler___block_invoke;
  v28[3] = &unk_100337768;
  v28[4] = &v31;
  v28[5] = v29;
  [v17 fetchEventsWithStartDateAfter:v8 Category:9 CompletionHandler:v28];

  if (*(v32[0] + 40))
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOSharedWithYouManager saveHighlights:v32 handler:?];
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "#swy,no shared content will be saved this round", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7, *(v32[0] + 40), &__NSDictionary0__struct);
    }
  }

  else
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __49__MOSharedWithYouManager_saveHighlights_handler___block_invoke_144;
    v27[3] = &unk_10033AB10;
    v27[4] = self;
    v27[5] = v29;
    v20 = [v9 _pas_mappedArrayWithTransform:v27];
    v21 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      -[MOSharedWithYouManager saveHighlights:handler:].cold.2(buf, [v20 count], v21);
    }

    momentStore = self->_momentStore;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __49__MOSharedWithYouManager_saveHighlights_handler___block_invoke_146;
    v24[3] = &unk_1003377B8;
    v23 = v20;
    v25 = v23;
    v26 = v7;
    [(MOEventStore *)momentStore storeEvents:v23 CompletionHandler:v24];
  }

  _Block_object_dispose(v29, 8);

  _Block_object_dispose(&v31, 8);
}

void __49__MOSharedWithYouManager_saveHighlights_handler___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  v8 = [NSSet alloc];
  v12 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_23];

  v9 = [v8 initWithArray:v12];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

id __49__MOSharedWithYouManager_saveHighlights_handler___block_invoke_144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v3 slHighlight];
  v6 = [v5 identifier];
  LOBYTE(v4) = [v4 containsObject:v6];

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) createEventFromHighlight:v3];
  }

  return v7;
}

void __49__MOSharedWithYouManager_saveHighlights_handler___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__MOSharedWithYouManager_saveHighlights_handler___block_invoke_146_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#swy,saved shared contents, count, %lu", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)fetchAndSaveSharedContentBetweenStartDate:(id)a3 EndDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MOSharedWithYouManager *)self _sharedWithYouEnabled])
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, " #swy,fetchAndSaveSharedContentBetweenStartDate,%@,endDate,%@", buf, 0x16u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __84__MOSharedWithYouManager_fetchAndSaveSharedContentBetweenStartDate_EndDate_handler___block_invoke;
    v14[3] = &unk_100337850;
    v14[4] = self;
    v15 = v10;
    [(MOSharedWithYouManager *)self fetchSharedContentBetweenStartDate:v8 EndDate:v9 CompletionHandler:v14];
    v12 = v15;
  }

  else
  {
    v20 = NSLocalizedDescriptionKey;
    v21 = @"SWY not enabled";
    v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v13];

    (*(v10 + 2))(v10, v12, 0);
  }
}

void __84__MOSharedWithYouManager_fetchAndSaveSharedContentBetweenStartDate_EndDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v6, 0);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __84__MOSharedWithYouManager_fetchAndSaveSharedContentBetweenStartDate_EndDate_handler___block_invoke_2;
    v9[3] = &unk_100336198;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v8 saveHighlights:v5 handler:v9];
  }
}

uint64_t __84__MOSharedWithYouManager_fetchAndSaveSharedContentBetweenStartDate_EndDate_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)rehydratedSharedContentEvents:(id)a3
{
  v4 = a3;
  if ([(MOSharedWithYouManager *)self _sharedWithYouEnabled])
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#swy,rehydratedSharedContentEvents", buf, 2u);
    }

    v6 = [v4 getDurationOfMOEventArray];
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__21;
    v21 = __Block_byref_object_dispose__21;
    v22 = objc_opt_new();
    v7 = [v6 startDate];
    v8 = [v7 dateByAddingTimeInterval:-1.0];
    v9 = [v6 endDate];
    v10 = [v9 dateByAddingTimeInterval:1.0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __56__MOSharedWithYouManager_rehydratedSharedContentEvents___block_invoke;
    v16[3] = &unk_100337E98;
    v16[4] = buf;
    [(MOSharedWithYouManager *)self fetchSharedContentBetweenStartDate:v8 EndDate:v10 CompletionHandler:v16];

    [(MOSharedWithYouManager *)self waitForQueueEmpty];
    if (*(v18 + 5))
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __56__MOSharedWithYouManager_rehydratedSharedContentEvents___block_invoke_154;
      v14[3] = &unk_10033AB38;
      v14[4] = self;
      v14[5] = buf;
      v11 = [v4 _pas_mappedArrayWithTransform:v14];
    }

    else
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#swy,nil query result from shared content fetching, no events rehydrated.", v15, 2u);
      }

      v11 = &__NSArray0__struct;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

void __56__MOSharedWithYouManager_rehydratedSharedContentEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(*(*(a1 + 32) + 8) + 40);
        v10 = [v8 slHighlight];
        v11 = [v10 identifier];
        [v9 setObject:v8 forKeyedSubscript:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

id __56__MOSharedWithYouManager_rehydratedSharedContentEvents___block_invoke_154(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v3 identifierFromProvider];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v73 = &__NSArray0__struct;
    goto LABEL_65;
  }

  v7 = [*(a1 + 32) swHighlightCenter];

  if (v7)
  {
    v95 = v3;
    v8 = [*(a1 + 32) swHighlightCenter];
    v9 = [v8 fetchAttributionsForHighlight:v6];

    v10 = [v9 attributions];
    if (!v10)
    {
      v73 = &__NSArray0__struct;
      v3 = v95;
LABEL_63:

      goto LABEL_64;
    }

    v96 = a1;
    v94 = v10;
    v11 = [v95 copy];
    v12 = [v9 slHighlight];
    v13 = [v12 identifier];
    [v11 setIdentifierFromProvider:v13];

    v14 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    v103 = v11;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v11 eventIdentifier];
      v16 = [v11 identifierFromProvider];
      *buf = 138412546;
      *v120 = v15;
      *&v120[8] = 2112;
      *&v120[10] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#swy,rehydrated event,%@,has identifierFromProvider, %@", buf, 0x16u);

      v11 = v103;
    }

    v17 = [v9 URL];

    v98 = v9;
    if (v17)
    {
      v18 = [v9 URL];
      [v11 setItemURL:v18];

      v19 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v9 slHighlight];
        v21 = [v20 identifier];
        v22 = *(a1 + 32);
        v23 = [v103 itemURL];
        v24 = [v23 absoluteString];
        v25 = [v22 redactURL:v24];
        *buf = 138412546;
        *v120 = v21;
        *&v120[8] = 2112;
        *&v120[10] = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "#swy,identifier,%@,has itemURL, %@", buf, 0x16u);

        v11 = v103;
        v9 = v98;
      }
    }

    v99 = objc_opt_new();
    v107 = objc_opt_new();
    v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v94 count]);
    [v11 setItemAttributionsCount:v26];

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v94;
    v102 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
    if (v102)
    {
      LOBYTE(v27) = 0;
      v106 = 0;
      v100 = *v115;
      v101 = 0;
      do
      {
        v28 = 0;
        do
        {
          v105 = v27;
          if (*v115 != v100)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v114 + 1) + 8 * v28);
          v30 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
          v104 = v28;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            [v9 slHighlight];
            v31 = v9;
            v33 = v32 = v29;
            v34 = [v33 identifier];
            v35 = *(v96 + 32);
            v36 = [v31 URL];
            v37 = [v36 absoluteString];
            v38 = [v35 redactURL:v37];
            v39 = [v32 uniqueIdentifier];
            *buf = 138413058;
            *v120 = v34;
            *&v120[8] = 2112;
            *&v120[10] = v38;
            *&v120[18] = 1024;
            LODWORD(v121) = ++v106;
            WORD2(v121) = 2112;
            *(&v121 + 6) = v39;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "#swy, rehydrate,identifier,%@,matchedHighlight.resourceURL,%@,attribution[%d],uniqueIdentifier,%@", buf, 0x26u);

            v29 = v32;
            v9 = v31;
            v11 = v103;
          }

          v40 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = [v9 slHighlight];
            v42 = [v41 identifier];
            v43 = [v29 isPinned];
            v44 = [v29 isGroupConversation];
            v45 = [v29 groupDisplayName];
            *buf = 67110146;
            *v120 = v106;
            *&v120[4] = 2112;
            *&v120[6] = v42;
            *&v120[14] = 1024;
            *&v120[16] = v43;
            LOWORD(v121) = 1024;
            *(&v121 + 2) = v44;
            WORD3(v121) = 2112;
            *(&v121 + 1) = v45;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "#swy, rehydrate,attribution[[%d],identifier,%@,pinned,%d,isGroupConversation,%d,groupDisplayName,%@", buf, 0x28u);
          }

          v46 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = [v9 slHighlight];
            v48 = [v47 identifier];
            v49 = [v29 isFromMe];
            v50 = [v29 timestamp];
            *buf = 67109890;
            *v120 = v106;
            *&v120[4] = 2112;
            *&v120[6] = v48;
            *&v120[14] = 1024;
            *&v120[16] = v49;
            LOWORD(v121) = 2112;
            *(&v121 + 2) = v50;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "#swy, rehydrate,attribution[[%d],identifier,%@,fromMe,%d,timestamp,%@", buf, 0x22u);
          }

          v51 = [v29 sender];

          if (v51)
          {
            v52 = [v29 sender];
            v53 = [v52 contact];
            v54 = [v53 identifier];
            [v99 addObject:v54];
          }

          v55 = [v29 relatedPersons];

          if (v55)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v109 = v29;
            v108 = [v29 relatedPersons];
            v56 = [v108 countByEnumeratingWithState:&v110 objects:v118 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v111;
              do
              {
                for (i = 0; i != v57; i = i + 1)
                {
                  if (*v111 != v58)
                  {
                    objc_enumerationMutation(v108);
                  }

                  v60 = *(*(&v110 + 1) + 8 * i);
                  v61 = [v60 contact];
                  v62 = [v61 identifier];
                  v63 = [v109 sender];
                  v64 = [v63 contact];
                  v65 = [v64 identifier];
                  v66 = [v62 isEqualToString:v65];

                  if ((v66 & 1) == 0)
                  {
                    v67 = [v60 contact];
                    v68 = [v67 identifier];
                    [v107 addObject:v68];
                  }
                }

                v57 = [v108 countByEnumeratingWithState:&v110 objects:v118 count:16];
              }

              while (v57);
            }

            v9 = v98;
            v11 = v103;
            v29 = v109;
          }

          if (v105)
          {
            v27 = 1;
          }

          else
          {
            v27 = [v29 isFromMe];
          }

          if ([v29 isFromMe])
          {
            v69 = [v29 sender];
            v70 = [v69 contact];
            v71 = [v70 identifier];

            v101 = v71;
          }

          if ([v11 itemIsPinned])
          {
            v72 = 1;
          }

          else
          {
            v72 = [v29 isPinned];
          }

          [v11 setItemIsPinned:v72];
          v28 = v104 + 1;
        }

        while ((v104 + 1) != v102);
        v102 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
      }

      while (v102);
    }

    else
    {
      v101 = 0;
      v27 = 0;
    }

    v74 = [NSSet setWithArray:v99];
    [v99 removeAllObjects];
    v75 = [v74 allObjects];
    [v99 addObjectsFromArray:v75];

    v76 = v107;
    v77 = [NSSet setWithArray:v107];
    [v107 removeAllObjects];
    v78 = [v77 allObjects];
    [v107 addObjectsFromArray:v78];

    [v11 setItemSenders:v99];
    [v11 setItemRecipients:v107];
    if (v101)
    {
      v79 = [v107 containsObject:?];
      if (v27 & v79)
      {
        v80 = 3;
LABEL_56:
        [v11 setItemShareDirection:v80];
        v81 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v82 = [v9 slHighlight];
          v83 = [v82 identifier];
          v84 = [v103 itemSenders];
          *buf = 138412546;
          *v120 = v83;
          *&v120[8] = 2112;
          *&v120[10] = v84;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "#swy,identifier,%@,has senders, %@", buf, 0x16u);

          v9 = v98;
          v76 = v107;
        }

        v85 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = [v9 slHighlight];
          v87 = [v86 identifier];
          v88 = [v103 itemRecipients];
          *buf = 138412546;
          *v120 = v87;
          *&v120[8] = 2112;
          *&v120[10] = v88;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "#swy,identifier,%@,has recipients, %@", buf, 0x16u);

          v9 = v98;
          v76 = v107;
        }

        v89 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          v90 = [v9 slHighlight];
          v91 = [v90 identifier];
          v92 = [v103 itemShareDirection];
          *buf = 138412546;
          *v120 = v91;
          *&v120[8] = 2048;
          *&v120[10] = v92;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "#swy,identifier,%@,itemShareDirection, %lu", buf, 0x16u);

          v76 = v107;
        }

        v73 = v103;
        v10 = v94;
        v3 = v95;
        goto LABEL_63;
      }
    }

    else
    {
      LOBYTE(v79) = 0;
    }

    if (v79 & 1 | ((v27 & 1) == 0))
    {
      v80 = 2;
    }

    else
    {
      v80 = 1;
    }

    goto LABEL_56;
  }

  v73 = &__NSArray0__struct;
  v9 = v6;
LABEL_64:

LABEL_65:

  return v73;
}

- (id)redactURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 length];
    if (v5 >> 1 >= 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5 >> 1;
    }

    v7 = [v4 substringToIndex:v6];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%lu", v7, [v4 hash]);
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (void)updateSharedContentsDeletedAtSource:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MOSharedWithYouManager *)self _sharedWithYouEnabled])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __70__MOSharedWithYouManager_updateSharedContentsDeletedAtSource_handler___block_invoke;
    v8[3] = &unk_100336198;
    v9 = v7;
    [(MOSharedWithYouManager *)self _updateSharedContentsDeletedAtSource:v6 handler:v8];
    [(MOSharedWithYouManager *)self waitForQueueEmpty];
  }

  else
  {
    (*(v7 + 2))(v7, 0, &__NSDictionary0__struct);
  }
}

uint64_t __70__MOSharedWithYouManager_updateSharedContentsDeletedAtSource_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateSharedContentsDeletedAtSource:(id)a3 handler:(id)a4
{
  v41 = a3;
  v38 = a4;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#swy,_updateSharedContentsDeletedAtSource", buf, 2u);
  }

  v40 = [v41 getDurationOfMOEventArray];
  *buf = 0;
  v62 = buf;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__21;
  v65 = __Block_byref_object_dispose__21;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__21;
  v59 = __Block_byref_object_dispose__21;
  v60 = 0;
  v6 = [v40 startDate];
  v7 = [v40 endDate];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = __71__MOSharedWithYouManager__updateSharedContentsDeletedAtSource_handler___block_invoke;
  v54[3] = &unk_100337768;
  v54[4] = buf;
  v54[5] = &v55;
  [(MOSharedWithYouManager *)self fetchSharedContentBetweenStartDate:v6 EndDate:v7 CompletionHandler:v54];

  [(MOSharedWithYouManager *)self waitForQueueEmpty];
  if (*(v62 + 5))
  {
    v43 = objc_alloc_init(NSMutableArray);
    v42 = objc_alloc_init(NSMutableArray);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = v41;
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (v9)
    {
      v10 = *v50;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v49 + 1) + 8 * i);
          v13 = *(v62 + 5);
          v14 = [v12 identifierFromProvider];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            if ([v12 rehydrationFailCount])
            {
              v16 = -[MORehydrationThresholdMetrics initWithCategory:provider:failureCount:]([MORehydrationThresholdMetrics alloc], "initWithCategory:provider:failureCount:", [v12 category], objc_msgSend(v12, "provider"), objc_msgSend(v12, "rehydrationFailCount"));
              v48 = 0;
              [(MORehydrationThresholdMetrics *)v16 submitMetricsWithError:&v48];
              v17 = v48;
              [v12 setRehydrationFailCount:0];
              [v43 addObject:v12];
            }
          }

          else
          {
            [v12 setRehydrationFailCount:{objc_msgSend(v12, "rehydrationFailCount") + 1}];
            [v42 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v49 objects:v69 count:16];
      }

      while (v9);
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v42 count];
      *v67 = 134217984;
      v68 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#swy,%ld shared content item(s) failed rehydration, therefore update rehydration failure count.", v67, 0xCu);
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v43 count];
      *v67 = 134217984;
      v68 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#swy,%ld previously rehydration failed shared content item(s) now are found, therefore change rehydration failure count.", v67, 0xCu);
    }

    v22 = [MORehydrationMetrics alloc];
    v23 = [v8 firstObject];
    v24 = [v23 category];
    v25 = [v8 firstObject];
    v26 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v22, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v24, [v25 provider], 1, 0, objc_msgSend(v8, "count"), 1, objc_msgSend(v42, "count"), objc_msgSend(v43, "count"));

    v47 = 0;
    [(MORehydrationMetrics *)v26 submitMetricsWithError:&v47];
    v27 = v47;
    v28 = [v42 copy];
    [v43 addObjectsFromArray:v28];

    v29 = [(MOSharedWithYouManager *)self momentStore];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = __71__MOSharedWithYouManager__updateSharedContentsDeletedAtSource_handler___block_invoke_161;
    v44[3] = &unk_1003377B8;
    v30 = v43;
    v45 = v30;
    v46 = v38;
    [v29 storeEvents:v30 CompletionHandler:v44];
  }

  else
  {
    v31 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "#swy,nil query result from shared content fetching, no events updated.", v67, 2u);
    }

    if (v38)
    {
      (*(v38 + 2))(v38, v56[5], &__NSDictionary0__struct);
    }

    v32 = [MORehydrationMetrics alloc];
    v33 = [v41 firstObject];
    v34 = [v33 category];
    v35 = [v41 firstObject];
    v36 = [v35 provider];
    v37 = [v56[5] description];
    v30 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v32, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v34, v36, 0, v37, [v41 count], 1, objc_msgSend(v41, "count"), 0.0);

    v53 = 0;
    [(MORehydrationMetrics *)v30 submitMetricsWithError:&v53];
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(buf, 8);
}

void __71__MOSharedWithYouManager__updateSharedContentsDeletedAtSource_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = *(*(*(a1 + 32) + 8) + 40);
        v13 = [v11 slHighlight];
        v14 = [v13 identifier];
        [v12 setObject:v11 forKeyedSubscript:v14];
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;
}

void __71__MOSharedWithYouManager__updateSharedContentsDeletedAtSource_handler___block_invoke_161(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySharedWithYou);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__MOSharedWithYouManager__updateSharedContentsDeletedAtSource_handler___block_invoke_161_cold_1(a1, v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#swy,update %ld shared content event(s) in database succeeded!", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)saveHighlights:(uint64_t)a1 handler:.cold.1(uint64_t a1)
{
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)saveHighlights:(os_log_t)log handler:.cold.2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#swy,eventsToSave count,%ld", buf, 0xCu);
}

void __71__MOSharedWithYouManager__updateSharedContentsDeletedAtSource_handler___block_invoke_161_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "#swy,update %ld shared content event(s) in database failed, error %@", &v6, 0x16u);
}

@end