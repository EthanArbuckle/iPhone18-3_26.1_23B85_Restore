@interface MONowPlayingMediaManager
- (BOOL)_needRefreshAppInfo:(id)a3;
- (BOOL)_persistMediaAppInfoPlistFile:(id)a3 withData:(id)a4;
- (BOOL)streamNowPlayingEventsFromSource:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6 processEvent:(id)a7;
- (MONowPlayingMediaManager)initWithNowPlayingStream:(id)a3 momentStore:(id)a4;
- (MONowPlayingMediaManager)initWithUniverse:(id)a3;
- (double)countTotalPlayTime:(id)a3;
- (id)_calculateEndDateFromMediaPlaySessions:(id)a3;
- (id)_calculateStartDateFromMediaPlaySessions:(id)a3;
- (id)_createEventFromMediaPlayGroupsByDayTitle:(id)a3;
- (id)_createEventFromMediaPlaySessions:(id)a3;
- (id)_createNewLeisureMediaEventsFromMediaPlays:(id)a3 storedEvents:(id)a4;
- (id)_createNewMediaPlayEventsFromMediaPlays:(id)a3 storedEvents:(id)a4;
- (id)_filterMediaSessionsBasedOnApps:(id)a3;
- (id)_filterMediaSessionsBasedOnMusicApps:(id)a3;
- (id)_findUnrehdyratedEventsFromStoredEvents:(id)a3 rehydratedEvents:(id)a4;
- (id)_generateMediaPlayGroupsByDayTitle:(id)a3;
- (id)_generateMediaPlaySessionGroupsByDay:(id)a3;
- (id)_generateMediaPlaySessionsFrom:(id)a3;
- (id)_getMediaAppCategoryPlistFileURL;
- (id)_getMediaAppInfoPlistFileURL;
- (id)_groupMediaPlayGroupsByTitle:(id)a3;
- (id)_groupMediaPlaySessionsByDay:(id)a3;
- (id)_groupMediaPlaySessionsByTitle:(id)a3;
- (id)_groupMediaPlaySessionsByTitleDay:(id)a3;
- (id)_providerIdOfStartDate:(id)a3 endDate:(id)a4;
- (id)_readMediaAppInfoPlistFile:(id)a3;
- (id)_rehydratedMediaEvents:(id)a3 usingNowPlayingEvents:(id)a4;
- (id)_rehydratedMediaSessionsForEvents:(id)a3 usingNowPlayingEvents:(id)a4;
- (id)getStringFromBMDeviceType:(int64_t)a3;
- (id)groupDevicesBaseOnType:(id)a3;
- (id)rehydratedMediaPlayEvents:(id)a3;
- (unint64_t)makeDuplicationHashForEvent:(id)a3;
- (void)_fetchAppCateogryByBundleIds:(id)a3;
- (void)_fetchMediaPlayEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_fetchNowPlayingEventsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)_getMediaAppCategoryPlistFileURL;
- (void)_getMediaAppInfoPlistFileURL;
- (void)_rehydratedMediaPlayEvents:(id)a3 handler:(id)a4;
- (void)_removeOldMediaAppCategoryPlistFile:(id)a3;
- (void)_saveMediaPlayGroupsByDayTitle:(id)a3 startDate:(id)a4 handler:(id)a5;
- (void)_saveMediaPlaySessionsEvents:(id)a3 handler:(id)a4;
- (void)_setDynamicProperties:(id)a3 mediaPlay:(id)a4;
- (void)_updateLearnFromAppStatusTable:(id)a3;
- (void)fetchMediaPlayEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)rehydratedMediaPlayEvents:(id)a3 handler:(id)a4;
@end

@implementation MONowPlayingMediaManager

- (MONowPlayingMediaManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 getService:v6];
  configurationManager = self->_configurationManager;
  self->_configurationManager = v7;

  v9 = BiomeLibrary();
  v10 = [v9 Media];
  v11 = [v10 NowPlaying];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v4 getService:v13];

  v15 = [(MONowPlayingMediaManager *)self initWithNowPlayingStream:v11 momentStore:v14];
  return v15;
}

- (MONowPlayingMediaManager)initWithNowPlayingStream:(id)a3 momentStore:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v37 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager initWithDuetStore:ppContactStore:cnContactStore:momentStore:configurationManager:];
    }

    v38 = +[NSAssertionHandler currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"MONowPlayingMediaManager.m" lineNumber:105 description:@"Invalid parameter not satisfying: momentStore"];

    goto LABEL_9;
  }

  if (!v8)
  {
LABEL_9:
    v36 = 0;
    goto LABEL_10;
  }

  v40.receiver = self;
  v40.super_class = MONowPlayingMediaManager;
  v10 = [(MONowPlayingMediaManager *)&v40 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_stream, a3);
    v12 = objc_opt_new();
    syncService = v11->_syncService;
    v11->_syncService = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MONowPlayingMediaManager", v14);
    queue = v11->_queue;
    v11->_queue = v15;

    objc_storeStrong(&v11->_momentStore, a4);
    v17 = [NSSet alloc];
    v18 = [v17 initWithArray:kFirstPartyMediaBundleId];
    firstPartyBundleIdSet = v11->_firstPartyBundleIdSet;
    v11->_firstPartyBundleIdSet = v18;

    v20 = [NSSet alloc];
    v21 = [v20 initWithArray:kMediaBundleIdDenyList];
    mediaBundleDeniedIdSet = v11->_mediaBundleDeniedIdSet;
    v11->_mediaBundleDeniedIdSet = v21;

    v23 = +[NSCalendar currentCalendar];
    v24 = objc_alloc_init(NSDateFormatter);
    [(NSDateFormatter *)v24 setCalendar:v23];
    [(NSDateFormatter *)v24 setDateFormat:@"yyyy-MM-dd"];
    dateFormatter = v11->_dateFormatter;
    v11->_dateFormatter = v24;
    v26 = v24;

    v27 = [(MONowPlayingMediaManager *)v11 _getMediaAppCategoryPlistFileURL];
    plistFileURL = v11->_plistFileURL;
    v11->_plistFileURL = v27;

    v29 = [(MONowPlayingMediaManager *)v11 _getMediaAppInfoPlistFileURL];
    plistAppInfoFileURL = v11->_plistAppInfoFileURL;
    v11->_plistAppInfoFileURL = v29;

    [(MONowPlayingMediaManager *)v11 _removeOldMediaAppCategoryPlistFile:v11->_plistFileURL];
    v31 = [(MONowPlayingMediaManager *)v11 _readMediaAppInfoPlistFile:v11->_plistAppInfoFileURL];
    bundleIdAppInfoMappings = v11->_bundleIdAppInfoMappings;
    v11->_bundleIdAppInfoMappings = v31;

    [(MOConfigurationManagerBase *)v11->_configurationManager getDoubleSettingForKey:@"kMOMediaAMSAppInfoRefreshInterval" withFallback:604800.0];
    v34 = v33;

    v35 = v34;
    v11->_kMediaInfoRefreshInterval = v35;
  }

  self = v11;
  v36 = self;
LABEL_10:

  return v36;
}

- (BOOL)streamNowPlayingEventsFromSource:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6 processEvent:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  [v12 timeIntervalSinceReferenceDate];
  v16 = v15;
  [v13 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = CFAbsoluteTimeGetCurrent() + -864000.0;
  if (v16 <= v19)
  {
    v16 = v19;
  }

  if (v11)
  {
    v20 = [v11 name];
    v21 = -[MONowPlayingMediaManager getStringFromBMDeviceType:](self, "getStringFromBMDeviceType:", [v11 platform]);
    if (v16 < v18)
    {
      stream = self->_stream;
      v52 = v11;
      v23 = [NSArray arrayWithObjects:&v52 count:1];
      v34 = 0;
LABEL_8:
      v24 = [NSNumber numberWithDouble:v16];
      v25 = [NSNumber numberWithDouble:v18];
      BYTE1(v33) = v11 == 0;
      LOBYTE(v33) = 0;
      v26 = [(BMStream *)stream publishersForDevices:v23 withUseCase:@"Moments" startTime:v24 endTime:v25 maxEvents:0 lastN:0 reversed:v33 includeLocal:&__block_literal_global_59 pipeline:?];

      if (v11)
      {
      }

      v27 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        *&buf[22] = 2112;
        v49 = v20;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Call publishersForDevices with startTime, %f, endTime, %f, device, %@", buf, 0x20u);
      }

      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = __Block_byref_object_copy__47;
      v50 = __Block_byref_object_dispose__47;
      v51 = 0;
      v28 = [v26 merge];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = __98__MONowPlayingMediaManager_streamNowPlayingEventsFromSource_startDate_endDate_error_processEvent___block_invoke_158;
      v43[3] = &unk_1003406A0;
      v43[4] = &v44;
      v43[5] = buf;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __98__MONowPlayingMediaManager_streamNowPlayingEventsFromSource_startDate_endDate_error_processEvent___block_invoke_2;
      v36[3] = &unk_1003406C8;
      v37 = v12;
      v38 = v13;
      v20 = v20;
      v39 = v20;
      v42 = v34;
      v21 = v21;
      v40 = v21;
      v41 = v14;
      v29 = [v28 sinkWithCompletion:v43 receiveInput:v36];

      if (a6)
      {
        *a6 = *(*&buf[8] + 40);
      }

      v30 = *(v45 + 24);

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v44, 8);

      goto LABEL_19;
    }
  }

  else
  {
    v21 = 0;
    if (v16 < v18)
    {
      stream = self->_stream;
      v23 = &__NSArray0__struct;
      v34 = 1;
      v20 = @"local";
      goto LABEL_8;
    }

    v20 = @"local";
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    *&buf[22] = 2112;
    v49 = v20;
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Stop calling publishersForDevices due to inverted start/end timestamp, startTime, %f, endTime, %f, device, %@", buf, 0x20u);
  }

  (*(v14 + 2))(v14, 0);
  v30 = 1;
LABEL_19:

  return v30 & 1;
}

void __98__MONowPlayingMediaManager_streamNowPlayingEventsFromSource_startDate_endDate_error_processEvent___block_invoke_158(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state])
  {
    if ([v6 state] == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      v3 = [v6 error];
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __98__MONowPlayingMediaManager_streamNowPlayingEventsFromSource_startDate_endDate_error_processEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [NSDate alloc];
  [v11 timestamp];
  v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  if ([v4 isOnOrAfter:*(a1 + 32)] && objc_msgSend(v4, "isOnOrBefore:", *(a1 + 40)))
  {
    v5 = [MONowPlayingEvent alloc];
    v6 = [v11 eventBody];
    v7 = *(a1 + 72);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v11 timestamp];
    v10 = [(MONowPlayingEvent *)v5 initWithNowPlayingEvent:v6 name:v8 isRemote:(v7 & 1) == 0 deviceSource:v9 timestamp:?];

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_fetchNowPlayingEventsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MONowPlayingMediaManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke;
  v15[3] = &unk_10033DFC8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke(uint64_t a1)
{
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = __Block_byref_object_copy__47;
  v61[4] = __Block_byref_object_dispose__47;
  v62 = +[NSMutableSet set];
  v45 = objc_opt_new();
  v2 = +[NSMutableArray array];
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) syncService];
  v60 = 0;
  v5 = [v4 remoteDevicesWithError:&v60];
  v6 = v60;

  if (v6)
  {
    (*(*(a1 + 56) + 16))();
    v42 = 0;
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(v77, [v5 count], v7);
    }

    v42 = [*(a1 + 32) groupDevicesBaseOnType:v5];
    *v73 = 0;
    *&v73[8] = v73;
    *&v73[16] = 0x3032000000;
    v74 = __Block_byref_object_copy__47;
    v75 = __Block_byref_object_dispose__47;
    v76 = objc_opt_new();
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v58[6] = v73;
    v59 = 0;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_165;
    v58[3] = &unk_1003406F0;
    v58[4] = v8;
    v58[5] = v61;
    v11 = [v8 streamNowPlayingEventsFromSource:0 startDate:v9 endDate:v10 error:&v59 processEvent:v58];
    v12 = v59;
    if (v11)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [*(*&v73[8] + 40) count];
        *buf = 134217984;
        v66 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully fetched %ld NowPlaying events from Biome local device", buf, 0xCu);
      }

      if ([*(*&v73[8] + 40) count])
      {
        [v45 addObjectsFromArray:*(*&v73[8] + 40)];
      }
    }

    else
    {
      v15 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_2();
      }

      [*(*&v73[8] + 40) removeAllObjects];
      [v2 addObject:v12];
    }

    _Block_object_dispose(v73, 8);
  }

  objc_autoreleasePoolPop(v3);
  if (!v6)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [v42 allKeys];
    v41 = [obj countByEnumeratingWithState:&v54 objects:v72 count:16];
    if (v41)
    {
      v40 = *v55;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v55 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v54 + 1) + 8 * i);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v44 = v16;
          v17 = [v42 objectForKeyedSubscript:?];
          v18 = [v17 countByEnumeratingWithState:&v50 objects:v71 count:16];
          if (v18)
          {
            v47 = *v51;
            v46 = v17;
            do
            {
              v19 = 0;
              do
              {
                if (*v51 != v47)
                {
                  objc_enumerationMutation(v46);
                }

                v20 = *(*(&v50 + 1) + 8 * v19);
                v21 = objc_autoreleasePoolPush();
                *v73 = 0;
                *&v73[8] = v73;
                *&v73[16] = 0x3032000000;
                v74 = __Block_byref_object_copy__47;
                v75 = __Block_byref_object_dispose__47;
                v76 = objc_opt_new();
                v22 = *(a1 + 32);
                v23 = *(a1 + 40);
                v24 = *(a1 + 48);
                v48[6] = v73;
                v49 = 0;
                v48[0] = _NSConcreteStackBlock;
                v48[1] = 3221225472;
                v48[2] = __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_167;
                v48[3] = &unk_1003406F0;
                v48[4] = v22;
                v48[5] = v61;
                v25 = [v22 streamNowPlayingEventsFromSource:v20 startDate:v23 endDate:v24 error:&v49 processEvent:v48];
                v26 = v49;
                if (v25)
                {
                  v27 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    v28 = a1;
                    v29 = v2;
                    v30 = [*(*&v73[8] + 40) count];
                    v31 = [v20 description];
                    *buf = 134218498;
                    v66 = v30;
                    v67 = 2112;
                    v68 = v44;
                    v69 = 2112;
                    v70 = v31;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Successfully fetched %ld NowPlaying events from Biome iCloud device with source type, %@, device, %@", buf, 0x20u);

                    v2 = v29;
                    a1 = v28;
                  }

                  if ([*(*&v73[8] + 40) count])
                  {
                    [v45 addObjectsFromArray:*(*&v73[8] + 40)];
                  }
                }

                else
                {
                  v32 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v66 = v26;
                    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "completionHandler not called due to biome query error: %@", buf, 0xCu);
                  }

                  [*(*&v73[8] + 40) removeAllObjects];
                  [v2 addObject:v26];
                }

                _Block_object_dispose(v73, 8);
                objc_autoreleasePoolPop(v21);
                v19 = v19 + 1;
              }

              while (v18 != v19);
              v17 = v46;
              v18 = [v46 countByEnumeratingWithState:&v50 objects:v71 count:16];
            }

            while (v18);
          }
        }

        v41 = [obj countByEnumeratingWithState:&v54 objects:v72 count:16];
      }

      while (v41);
    }

    if ([v2 count])
    {
      v63[0] = NSLocalizedFailureErrorKey;
      v63[1] = NSMultipleUnderlyingErrorsKey;
      v64[0] = @"Failed to fetch NowPlaying events from Biome";
      v64[1] = v2;
      v33 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
      v34 = [NSError errorWithDomain:@"MomentsFetchErrorDomain" code:50897 userInfo:v33];
    }

    else
    {
      v34 = 0;
    }

    if (*(a1 + 56))
    {
      v35 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v45 count];
        v37 = *(a1 + 40);
        v38 = *(a1 + 48);
        *v73 = 134218498;
        *&v73[4] = v36;
        *&v73[12] = 2112;
        *&v73[14] = v37;
        *&v73[22] = 2112;
        v74 = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Fetched %ld NowPlaying events from Biome all devices, startDate, %@, endDate, %@", v73, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  _Block_object_dispose(v61, 8);
}

uint64_t __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_165(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) makeDuplicationHashForEvent:v3]);
    if (([*(*(*(a1 + 40) + 8) + 40) containsObject:v5] & 1) == 0)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
    }

    [*(*(*(a1 + 48) + 8) + 40) addObject:v7];

    v4 = v7;
  }

  return _objc_release_x1(v3, v4);
}

uint64_t __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_167(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) makeDuplicationHashForEvent:v3]);
    if (([*(*(*(a1 + 40) + 8) + 40) containsObject:v5] & 1) == 0)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
    }

    v4 = v7;
  }

  return _objc_release_x1(v3, v4);
}

- (unint64_t)makeDuplicationHashForEvent:(id)a3
{
  v3 = a3;
  [v3 timestamp];
  v5 = floor(v4 / 60.0);
  v6 = +[BSHashBuilder builder];
  v7 = [v3 bundleID];
  v8 = [v6 appendString:v7];
  v9 = [v3 title];
  v10 = [v8 appendString:v9];
  v11 = [v10 appendInteger:{objc_msgSend(v3, "playbackState")}];
  v12 = [v3 iTunesStoreIdentifier];

  v13 = [v11 appendString:v12];
  v14 = [v13 appendDouble:v5];
  v15 = [v14 hash];

  return v15;
}

- (id)groupDevicesBaseOnType:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = -[MONowPlayingMediaManager getStringFromBMDeviceType:](self, "getStringFromBMDeviceType:", [v11 platform]);
        if (v13)
        {
          v14 = [v5 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v15 = objc_opt_new();
            [v5 setObject:v15 forKeyedSubscript:v13];
          }

          v16 = [v5 objectForKeyedSubscript:v13];
          [v16 addObject:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)getStringFromBMDeviceType:(int64_t)a3
{
  if (a3 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1003407D0[a3];
  }
}

- (id)_groupMediaPlaySessionsByDay:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
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
        dateFormatter = self->_dateFormatter;
        v13 = [v11 startDate];
        v14 = [(NSDateFormatter *)dateFormatter stringFromDate:v13];

        v15 = [v5 objectForKeyedSubscript:v14];

        if (!v15)
        {
          v16 = objc_opt_new();
          [v5 setObject:v16 forKeyedSubscript:v14];
        }

        v17 = [v5 objectForKeyedSubscript:v14];
        [v17 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_needRefreshAppInfo:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_bundleIdAppInfoMappings objectForKey:v4];
  if (v5 && (v6 = v5, [(NSMutableDictionary *)self->_bundleIdAppInfoMappings objectForKey:v4], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(NSMutableDictionary *)self->_bundleIdAppInfoMappings objectForKeyedSubscript:v4];
    v9 = [v8 objectForKeyedSubscript:@"date"];
    v10 = v9;
    if (v9 && ([v9 isEqualToString:&stru_1003416B0] & 1) == 0)
    {
      v12 = [(NSDateFormatter *)self->_dateFormatter dateFromString:v10];
      Current = CFAbsoluteTimeGetCurrent();
      [v12 timeIntervalSinceReferenceDate];
      v11 = Current - v14 > self->_kMediaInfoRefreshInterval;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_fetchAppCateogryByBundleIds:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    bundleIdAppInfoMappings = self->_bundleIdAppInfoMappings;
    if (bundleIdAppInfoMappings && [(NSMutableDictionary *)bundleIdAppInfoMappings count])
    {
      v7 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v28 = v5;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          v12 = 0;
          do
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v33 + 1) + 8 * v12);
            v14 = objc_autoreleasePoolPush();
            v15 = +[NSCharacterSet whitespaceCharacterSet];
            v16 = [v13 stringByTrimmingCharactersInSet:v15];

            if ([(MONowPlayingMediaManager *)self _needRefreshAppInfo:v16])
            {
              [v7 addObject:v16];
            }

            objc_autoreleasePoolPop(v14);
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v10);
      }

      v5 = v28;
      if (!v7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v7 = [NSMutableSet setWithSet:v5];
      if (!v7)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    if ([v7 count])
    {
      v17 = [AMSBag bagForProfile:@"MomentsUIService" profileVersion:@"1"];
      v18 = [[AMSMediaTask alloc] initWithType:0 clientIdentifier:@"com.apple.momentsd" clientVersion:@"1" bag:v17];
      v19 = [v7 allObjects];
      [v18 setBundleIdentifiers:v19];
      v20 = dispatch_semaphore_create(0);
      v21 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Start to fetch category info with bundleIds, %@", buf, 0xCu);
      }

      v22 = [v18 perform];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = __57__MONowPlayingMediaManager__fetchAppCateogryByBundleIds___block_invoke;
      v30[3] = &unk_100340718;
      v30[4] = self;
      v31 = v7;
      v23 = v20;
      v32 = v23;
      [v22 addFinishBlock:v30];
      v24 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/PromptSource/NowPlaying/MONowPlayingMediaManager.m", 476, "[MONowPlayingMediaManager _fetchAppCateogryByBundleIds:]"];
      v29 = 0;
      v25 = MOSemaphoreWaitAndFaultIfTimeout_Internal(v23, &v29, v24, 120.0);
      v26 = v29;
      if (!v25)
      {
        v27 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [MOOnboardingAndSettingsPersistence fetchScreenTimeEnablementStatus];
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
}

void __57__MONowPlayingMediaManager__fetchAppCateogryByBundleIds___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v7 = [a2 responseDataItems];
    v61 = v7;
    v62 = a1;
    if ([v7 count])
    {
      v9 = 0;
      *&v8 = 138412546;
      v60 = v8;
      while (1)
      {
        v10 = [v7 objectAtIndexedSubscript:v9, v60];
        v11 = [v10 objectForKey:@"attributes"];
        v12 = v11;
        if (v11)
        {
          break;
        }

LABEL_22:

        if ([v7 count]<= ++v9)
        {
          goto LABEL_26;
        }
      }

      v13 = [v11 objectForKey:@"genreDisplayName"];
      v68 = [v12 objectForKey:@"name"];
      v14 = [v12 objectForKey:@"platformAttributes"];
      v15 = v14;
      if (!v14)
      {
LABEL_21:

        goto LABEL_22;
      }

      v66 = v13;
      v16 = [v14 objectForKey:@"ios"];
      v17 = v16;
      if (!v16)
      {
LABEL_20:

        v13 = v66;
        goto LABEL_21;
      }

      v18 = [v16 objectForKey:@"bundleId"];
      v19 = a1;
      v20 = objc_opt_new();
      v21 = +[NSCharacterSet whitespaceCharacterSet];
      v64 = v18;
      v22 = [v18 stringByTrimmingCharactersInSet:v21];

      [v20 setObject:v66 forKey:@"category"];
      v23 = [*(v19 + 32) dateFormatter];
      v24 = objc_opt_new();
      v25 = [v23 stringFromDate:v24];
      [v20 setObject:v25 forKey:@"date"];

      v26 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v76 = v66;
        v77 = 2112;
        v78 = v64;
        v79 = 2112;
        v80 = v68;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Successfully fetched category name, %@, %@, %@", buf, 0x20u);
      }

      v27 = [v17 objectForKey:@"artwork"];
      v28 = v27;
      if (!v27)
      {
        [v20 setObject:&stru_1003416B0 forKey:@"bkColor"];
        v29 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = v60;
          v76 = v64;
          v77 = 2112;
          v78 = v68;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Unable to fetch background color due to empty artwork, %@, %@", buf, 0x16u);
        }

        goto LABEL_19;
      }

      v29 = [v27 objectForKey:@"bgColor"];
      if (v29)
      {
        [v20 setObject:v29 forKey:@"bkColor"];
        v30 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v76 = v29;
          v77 = 2112;
          v78 = v64;
          v79 = 2112;
          v80 = v68;
          v31 = v30;
          v32 = "Successfully fetched background color, %@, %@, %@";
          v33 = 32;
LABEL_25:
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, v32, buf, v33);
        }
      }

      else
      {
        [v20 setObject:&stru_1003416B0 forKey:@"bkColor"];
        v30 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = v60;
          v76 = v64;
          v77 = 2112;
          v78 = v68;
          v31 = v30;
          v32 = "Unable to fetch background color due to empty bkColor, %@, %@";
          v33 = 22;
          goto LABEL_25;
        }
      }

LABEL_19:
      v34 = [*(v62 + 32) bundleIdAppInfoMappings];
      [v34 setObject:v20 forKey:v22];

      a1 = v62;
      v7 = v61;
      goto LABEL_20;
    }

LABEL_26:
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = *(a1 + 40);
    v67 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (!v67)
    {
      goto LABEL_40;
    }

    v35 = *v71;
    v36 = @"category";
LABEL_28:
    v37 = 0;
    while (1)
    {
      if (*v71 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v70 + 1) + 8 * v37);
      v39 = [*(a1 + 32) bundleIdAppInfoMappings];
      v40 = [v39 objectForKey:v38];
      v69 = v38;
      if (v40)
      {
        v41 = v40;
        v42 = [*(a1 + 32) bundleIdAppInfoMappings];
        v43 = [v42 objectForKey:v38];
        [v43 objectForKeyedSubscript:v36];
        v45 = v44 = v36;
        if (v45)
        {
          v46 = [*(a1 + 32) bundleIdAppInfoMappings];
          v47 = [v46 objectForKey:v38];
          v48 = v44;
          v49 = v35;
          v50 = v47;
          v51 = [v47 objectForKeyedSubscript:v48];
          v65 = [v51 isEqualToString:&stru_1003416B0];

          v35 = v49;
          a1 = v62;

          v36 = @"category";
          if ((v65 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v36 = v44;
      }

LABEL_37:
      v52 = objc_opt_new();
      [v52 setObject:&stru_1003416B0 forKey:v36];
      [v52 setObject:&stru_1003416B0 forKey:@"date"];
      [v52 setObject:&stru_1003416B0 forKey:@"bkColor"];
      v53 = [*(a1 + 32) dateFormatter];
      v54 = objc_opt_new();
      v55 = [v53 stringFromDate:v54];
      [v52 setObject:v55 forKey:@"date"];

      v56 = [*(a1 + 32) bundleIdAppInfoMappings];
      [v56 setObject:v52 forKey:v69];

LABEL_38:
      if (v67 == ++v37)
      {
        v67 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
        if (!v67)
        {
LABEL_40:

          v57 = *(a1 + 32);
          v58 = [v57 plistAppInfoFileURL];
          v59 = [*(a1 + 32) bundleIdAppInfoMappings];
          [v57 _persistMediaAppInfoPlistFile:v58 withData:v59];

          v5 = 0;
          v6 = v61;
          goto LABEL_41;
        }

        goto LABEL_28;
      }
    }
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __57__MONowPlayingMediaManager__fetchAppCateogryByBundleIds___block_invoke_cold_1();
  }

LABEL_41:

  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)_getMediaAppCategoryPlistFileURL
{
  v2 = +[MOPersistenceManager userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"mediaAppCategory.plist"];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MONowPlayingMediaManager _getMediaAppCategoryPlistFileURL];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_getMediaAppInfoPlistFileURL
{
  v2 = +[MOPersistenceManager userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"mediaAppInfo.plist"];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MONowPlayingMediaManager _getMediaAppInfoPlistFileURL];
    }

    v4 = 0;
  }

  return v4;
}

- (void)_removeOldMediaAppCategoryPlistFile:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [MONowPlayingMediaManager _removeOldMediaAppCategoryPlistFile:v7];
      }

      v8 = [v3 path];
      v11 = 0;
      [v4 removeItemAtPath:v8 error:&v11];
      v9 = v11;

      if (v9)
      {
        v10 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [MONowPlayingMediaManager _removeOldMediaAppCategoryPlistFile:];
        }
      }
    }
  }
}

- (id)_readMediaAppInfoPlistFile:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [MONowPlayingMediaManager _readMediaAppInfoPlistFile:v7];
      }

      v16 = 0;
      v8 = [[NSMutableDictionary alloc] initWithContentsOfURL:v3 error:&v16];
      v9 = v16;
      v10 = [NSMutableDictionary dictionaryWithDictionary:v8];

      if (v9)
      {
        v11 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [MONowPlayingMediaManager _readMediaAppInfoPlistFile:];
        }

        v12 = 0;
      }

      else
      {
        v12 = v10;
      }
    }

    else
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "No media app info plist found at path.", v15, 2u);
      }

      v12 = objc_alloc_init(NSMutableDictionary);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_persistMediaAppInfoPlistFile:(id)a3 withData:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v17 = 0;
    v6 = [NSPropertyListSerialization dataWithPropertyList:a4 format:100 options:0 error:&v17];
    v7 = v17;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v16 = 0;
      v12 = [v6 writeToURL:v5 options:805306369 error:&v16];
      v9 = v16;
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
      v10 = v13;
      if (!v9 && (v12 & 1) != 0)
      {
        v11 = 1;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15[0] = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Media app info was successfully written to plist.", v15, 2u);
        }

        v9 = v10;
        goto LABEL_19;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MONowPlayingMediaManager _persistMediaAppInfoPlistFile:withData:];
      }
    }

    else
    {
      v9 = v7;
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MONowPlayingMediaManager _persistMediaAppInfoPlistFile:withData:];
      }
    }

    v11 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MONowPlayingMediaManager _persistMediaAppInfoPlistFile:withData:];
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (id)_groupMediaPlaySessionsByTitleDay:(id)a3
{
  v3 = a3;
  v44 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v56 objects:v64 count:16];
  v40 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 startDate];
        if (v11)
        {
          v12 = v11;
          v13 = [v9 title];
          if (v13)
          {
            v14 = v13;
            v15 = [v9 bundleId];

            if (!v15)
            {
              goto LABEL_13;
            }

            dateFormatter = self->_dateFormatter;
            v17 = [v9 startDate];
            v12 = [(NSDateFormatter *)dateFormatter stringFromDate:v17];

            v18 = [v9 title];
            v19 = [v18 stringByAppendingString:v12];

            v20 = [v9 bundleId];
            v21 = [v20 stringByAppendingString:v19];

            v22 = [v44 objectForKeyedSubscript:v21];

            if (!v22)
            {
              v23 = objc_opt_new();
              [v44 setObject:v23 forKeyedSubscript:v21];
            }

            v24 = [v44 objectForKeyedSubscript:v21];
            [v24 addObject:v9];

            v4 = v40;
          }
        }

LABEL_13:
        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = v44;
  obj = [v44 allKeys];
  v43 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v43)
  {
    v42 = *v53;
    do
    {
      v26 = 0;
      do
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v26;
        v27 = *(*(&v52 + 1) + 8 * v26);
        context = objc_autoreleasePoolPush();
        v28 = [v25 objectForKeyedSubscript:v27];
        v29 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [MOMediaPlaySession redactString:v27];
          *buf = 138412290;
          v62 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Media sessions grouped for title and day: %@", buf, 0xCu);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v31 = v28;
        v32 = [v31 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v49;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v49 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v48 + 1) + 8 * j);
              v37 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = [v36 description];
                *buf = 138412290;
                v62 = v38;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "TitleAndDayGrouping: media session with description: %@", buf, 0xCu);
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v48 objects:v60 count:16];
          }

          while (v33);
        }

        objc_autoreleasePoolPop(context);
        v26 = v46 + 1;
        v25 = v44;
      }

      while ((v46 + 1) != v43);
      v43 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v43);
  }

  return v25;
}

- (id)_groupMediaPlaySessionsByTitle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 title];
        v12 = [v4 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = objc_opt_new();
          [v4 setObject:v13 forKeyedSubscript:v11];
        }

        v14 = [v4 objectForKeyedSubscript:v11];
        [v14 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_groupMediaPlayGroupsByTitle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 title];
        v12 = [v10 title];

        if (!v12)
        {

          v11 = &stru_1003416B0;
        }

        v13 = [v4 objectForKeyedSubscript:v11];

        if (!v13)
        {
          v14 = objc_opt_new();
          [v4 setObject:v14 forKeyedSubscript:v11];
        }

        v15 = [v4 objectForKeyedSubscript:v11];
        [v15 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_calculateStartDateFromMediaPlaySessions:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSDate distantFuture];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 startDate];
          v12 = [v11 earlierDate:v4];
          v13 = [v10 startDate];

          if (v12 == v13)
          {
            v14 = [v10 startDate];

            v4 = v14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_calculateEndDateFromMediaPlaySessions:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSDate distantPast];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 endDate];
          v12 = [v11 laterDate:v4];
          v13 = [v10 endDate];

          if (v12 == v13)
          {
            v14 = [v10 endDate];

            v4 = v14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_generateMediaPlaySessionsFrom:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 count])
  {
    v6 = [(MONowPlayingMediaManager *)self _groupMediaPlayGroupsByTitle:v4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __59__MONowPlayingMediaManager__generateMediaPlaySessionsFrom___block_invoke;
    v11[3] = &unk_100340740;
    v11[4] = self;
    v7 = v5;
    v12 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v8 = v12;
    v9 = v7;
  }

  return v5;
}

void __59__MONowPlayingMediaManager__generateMediaPlaySessionsFrom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v48;
    v9 = &GEOPOICategoryGasStation_ptr;
    v33 = *v48;
    v34 = v4;
    while (1)
    {
      v10 = 0;
      v35 = v6;
      do
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if ([v11 playbackState] != 5)
        {
          if (v7 && [v7 playbackState] == 1 && (objc_msgSend(v11, "playbackState") == 3 || objc_msgSend(v11, "playbackState") == 2 || objc_msgSend(v11, "playbackState") == 4))
          {
            [v7 timestamp];
            v14 = v13;
            [v11 timestamp];
            v16 = v15;
            v17 = [objc_alloc(v9[229]) initWithTimeIntervalSinceReferenceDate:v14];
            v18 = [objc_alloc(v9[229]) initWithTimeIntervalSinceReferenceDate:v16];
            [v18 timeIntervalSinceDate:v17];
            if (v19 > 30.0)
            {
              v20 = v19;
              if ([v11 duration] && v20 > (3 * objc_msgSend(v11, "duration")) && (objc_msgSend(v11, "isRemote") & 1) != 0)
              {

LABEL_23:
                goto LABEL_24;
              }

              v41 = v18;
              v21 = *(*(a1 + 32) + 104);
              v22 = [v7 bundleID];
              v23 = +[NSCharacterSet whitespaceCharacterSet];
              v24 = [v22 stringByTrimmingCharactersInSet:v23];
              v25 = [v21 objectForKeyedSubscript:v24];

              v40 = v25;
              if (v25)
              {
                v46 = [v25 objectForKeyedSubscript:@"bkColor"];
              }

              else
              {
                v46 = &stru_1003416B0;
              }

              v39 = *(a1 + 40);
              v38 = [MOMediaPlaySession alloc];
              v45 = [v7 title];
              v44 = [v7 album];
              v43 = [v7 bundleID];
              v37 = [v7 iTunesStoreIdentifier];
              v26 = [v7 mediaType];
              v36 = [v7 artist];
              v27 = [v7 duration];
              v28 = [v7 isRemote];
              v29 = [v7 deviceSource];
              BYTE4(v31) = v28;
              LODWORD(v31) = v27;
              v18 = v41;
              v30 = [(MOMediaPlaySession *)v38 initWithTitle:v45 album:v44 bundleId:v43 productId:v37 genre:&stru_1003416B0 mediaType:v26 artist:v36 startDate:v17 endDate:v41 duration:v31 isRemote:v29 deviceSource:v46 bgColor:?];
              [v39 addObject:v30];

              v8 = v33;
              v4 = v34;
              v9 = &GEOPOICategoryGasStation_ptr;
              v6 = v35;
            }
          }

          v17 = v7;
          v7 = v11;
          goto LABEL_23;
        }

LABEL_24:
        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v6)
      {
        goto LABEL_28;
      }
    }
  }

  v7 = 0;
LABEL_28:
}

- (void)_updateLearnFromAppStatusTable:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 bundleId];

        if (v11)
        {
          v12 = [v10 bundleId];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "start to update LFTA status.", v14, 2u);
    }

    [MOEventBundleProcessor updateLearnedFromTheAppDictionary:v4];
  }
}

- (id)_generateMediaPlayGroupsByDayTitle:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 count])
  {
    v6 = [(MONowPlayingMediaManager *)self _generateMediaPlaySessionsFrom:v4];
    v7 = [(MONowPlayingMediaManager *)self _filterMediaSessionsBasedOnMusicApps:v6];
    [(MONowPlayingMediaManager *)self countTotalPlayTime:v7];
    v9 = v8;
    v10 = [(MONowPlayingMediaManager *)self _filterMediaSessionsBasedOnApps:v7];
    [(MONowPlayingMediaManager *)self _updateLearnFromAppStatusTable:v7];
    [(MONowPlayingMediaManager *)self countTotalPlayTime:v10];
    v12 = v11;
    v13 = v11 / v9;
    if (v9 <= 0.0)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = v13;
    }

    v15 = [(MONowPlayingMediaManager *)self _groupMediaPlaySessionsByTitleDay:v10];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __63__MONowPlayingMediaManager__generateMediaPlayGroupsByDayTitle___block_invoke;
    v22[3] = &unk_100340768;
    v16 = v5;
    v23 = v16;
    v24 = v14;
    [v15 enumerateKeysAndObjectsUsingBlock:v22];
    v17 = [[MOMediaPlayMetrics alloc] initWithFirstPartyAppRatio:v14 firstPartyAppTime:v12 musciAppTime:v9];
    v21 = 0;
    [(MOMediaPlayMetrics *)v17 submitMetricsWithError:&v21];
    v18 = v21;
    v19 = v16;
  }

  return v5;
}

void __63__MONowPlayingMediaManager__generateMediaPlayGroupsByDayTitle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
    v12 = 0.0;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v49 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 endDate];
        v17 = [v14 startDate];
        [v16 timeIntervalSinceDate:v17];
        v19 = v18;

        v20 = [v8 firstObject];
        if ([v20 duration])
        {
          v21 = [v8 firstObject];
          v22 = [v21 duration];

          if (v19 <= v22)
          {
            goto LABEL_10;
          }

          v20 = [v8 firstObject];
          v19 = [v20 duration];
        }

LABEL_10:
        v12 = v12 + v19;
        objc_autoreleasePoolPop(v15);
      }

      v10 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v10)
      {
        goto LABEL_14;
      }
    }
  }

  v12 = 0.0;
LABEL_14:

  v23 = [v8 firstObject];
  v24 = [v23 mediaType];
  v25 = [v8 firstObject];
  v26 = [v25 bundleId];
  v27 = [MOMediaPlaySession getMOPlaySessionMediaType:v24 bundleId:v26];
  v28 = [v27 unsignedIntValue];

  if (v28 == 1 || v12 >= 60.0)
  {
    v44 = *(a1 + 32);
    v29 = [MOMediaPlay alloc];
    v48 = [v8 firstObject];
    v41 = [v48 title];
    v47 = [v8 firstObject];
    v39 = [v47 album];
    v46 = [v8 firstObject];
    v40 = [v46 bundleId];
    v43 = [v8 firstObject];
    v30 = [v43 productId];
    v42 = [v8 firstObject];
    v38 = [v42 mediaType];
    v31 = [v8 firstObject];
    v32 = [v31 artist];
    v33 = v7;
    [NSNumber numberWithDouble:v12];
    v34 = v45 = v5;
    v35 = [NSNumber numberWithDouble:*(a1 + 40)];
    LODWORD(v37) = v33;
    v36 = [(MOMediaPlay *)v29 initWithTitle:v41 album:v39 bundleId:v40 productId:v30 genre:&stru_1003416B0 mediaType:v38 artist:v32 sumTimePlayed:v34 repetitions:v37 mediaPlaySessions:v8 firstPartyTimePlayedRatio:v35];
    [v44 addObject:v36];

    v5 = v45;
  }
}

- (id)_filterMediaSessionsBasedOnMusicApps:(id)a3
{
  v4 = a3;
  v53 = objc_opt_new();
  v5 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v65;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v64 + 1) + 8 * i);
        v12 = [v11 bundleId];

        if (v12)
        {
          v13 = [v11 bundleId];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v8);
  }

  v48 = v5;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v6;
  v14 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v61;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v60 + 1) + 8 * j);
        firstPartyBundleIdSet = self->_firstPartyBundleIdSet;
        v20 = [v18 bundleId];
        if ([(NSSet *)firstPartyBundleIdSet containsObject:v20])
        {
          v21 = [v18 title];
          v22 = [v21 length];

          if (!v22)
          {
            continue;
          }

          v23 = [v18 bundleId];
          v24 = [v23 isEqualToString:@"com.apple.MediaPlayer.RemotePlayerService"];

          if (!v24)
          {
            goto LABEL_21;
          }

          v20 = [v18 mediaType];
          if ([v20 containsString:@"Music"])
          {
            v25 = [v18 productId];
            if (v25)
            {
              v26 = v25;
              v27 = [v18 productId];
              v28 = [v27 isEqualToString:&stru_1003416B0];

              if (v28)
              {
                continue;
              }

LABEL_21:
              [v53 addObject:v18];
              continue;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v15);
  }

  v29 = v48;
  [(MONowPlayingMediaManager *)self _fetchAppCateogryByBundleIds:v48];
  v51 = [MOMediaPlaySession describeCategory:6011];
  v50 = [MOMediaPlaySession describeCategory:6009];
  v49 = [MOMediaPlaySession describeCategory:6016];
  bundleIdAppInfoMappings = self->_bundleIdAppInfoMappings;
  if (bundleIdAppInfoMappings && [(NSMutableDictionary *)bundleIdAppInfoMappings count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v52 = obj;
    v31 = [v52 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v31)
    {
      v32 = v31;
      v54 = *v57;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v57 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v34 = *(*(&v56 + 1) + 8 * k);
          v35 = objc_autoreleasePoolPush();
          v36 = self->_bundleIdAppInfoMappings;
          v37 = v34;
          v38 = [v34 bundleId];
          v39 = +[NSCharacterSet whitespaceCharacterSet];
          v40 = [v38 stringByTrimmingCharactersInSet:v39];
          v41 = [(NSMutableDictionary *)v36 objectForKeyedSubscript:v40];

          if (v41)
          {
            v42 = [v41 objectForKeyedSubscript:@"category"];
          }

          else
          {
            v42 = &stru_1003416B0;
          }

          v43 = self->_firstPartyBundleIdSet;
          v44 = [v37 bundleId];
          if (![(NSSet *)v43 containsObject:v44]&& v42 && (([(__CFString *)v42 isEqualToString:v51]& 1) != 0 || ([(__CFString *)v42 isEqualToString:v50]& 1) != 0 || ([(__CFString *)v42 isEqualToString:v49]& 1) != 0))
          {
            mediaBundleDeniedIdSet = self->_mediaBundleDeniedIdSet;
            v46 = [v37 bundleId];
            LOBYTE(mediaBundleDeniedIdSet) = [(NSSet *)mediaBundleDeniedIdSet containsObject:v46];

            if ((mediaBundleDeniedIdSet & 1) == 0)
            {
              [v53 addObject:v37];
            }
          }

          else
          {
          }

          objc_autoreleasePoolPop(v35);
        }

        v32 = [v52 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v32);
    }

    v29 = v48;
  }

  return v53;
}

- (id)_filterMediaSessionsBasedOnApps:(id)a3
{
  v4 = a3;
  v42 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v43 = *v45;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        firstPartyBundleIdSet = self->_firstPartyBundleIdSet;
        v11 = [v9 bundleId];
        if (![(NSSet *)firstPartyBundleIdSet containsObject:v11])
        {

LABEL_16:
          v23 = [v9 endDate];
          v24 = [v9 startDate];
          [v23 timeIntervalSinceDate:v24];
          v26 = v25;

          bundleIdAppInfoMappings = self->_bundleIdAppInfoMappings;
          v28 = [v9 bundleId];
          v29 = +[NSCharacterSet whitespaceCharacterSet];
          v30 = [v28 stringByTrimmingCharactersInSet:v29];
          v31 = [(NSMutableDictionary *)bundleIdAppInfoMappings objectForKeyedSubscript:v30];

          if (v31)
          {
            v32 = [v31 objectForKeyedSubscript:@"category"];
          }

          else
          {
            v32 = &stru_1003416B0;
          }

          v33 = [v9 bundleId];
          v34 = [v9 mediaType];
          v35 = [MOMediaPlaySession isValidThirdPartyEvent:v33 bundleCategory:v32 mediaTypeString:v34 playTime:v26];

          if (v35)
          {
            v36 = [v9 title];

            if (v36)
            {
              [v42 addObject:v9];
            }
          }

          continue;
        }

        v12 = [v9 title];
        v13 = [v12 length];

        if (!v13)
        {
          goto LABEL_16;
        }

        v14 = [v9 bundleId];
        v15 = [v14 isEqualToString:@"com.apple.Music"];
        if ((v15 & 1) == 0)
        {
          v16 = [v9 bundleId];
          v41 = v16;
          if (([v16 isEqualToString:@"com.apple.podcasts"] & 1) == 0)
          {

LABEL_33:
            [v42 addObject:v9];
            continue;
          }
        }

        v17 = v5;
        v18 = [v9 album];
        if (!v18)
        {
          if (!v15)
          {
LABEL_24:
          }

LABEL_25:

          v5 = v17;
          continue;
        }

        v19 = v18;
        v20 = [v9 album];
        if (([v20 isEqualToString:&stru_1003416B0] & 1) != 0 || (objc_msgSend(v9, "productId"), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
        {

          if (!v15)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        v22 = v21;
        v39 = [v9 productId];
        if ([v39 isEqualToString:&stru_1003416B0])
        {
          v40 = 1;
        }

        else
        {
          v38 = [v9 productId];
          v40 = [v38 isEqualToString:@"null"];
        }

        if ((v15 & 1) == 0)
        {
        }

        v5 = v17;
        if ((v40 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v7);
  }

  return v42;
}

- (double)countTotalPlayTime:(id)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 endDate];
        v11 = [v9 startDate];
        [v10 timeIntervalSinceDate:v11];
        v7 = v7 + v12;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)_generateMediaPlaySessionGroupsByDay:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(MONowPlayingMediaManager *)self _generateMediaPlaySessionsFrom:v4];
    v7 = [(MONowPlayingMediaManager *)self _filterMediaSessionsBasedOnApps:v6];
    v8 = [(MONowPlayingMediaManager *)self _groupMediaPlaySessionsByDay:v7];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)_createEventFromMediaPlayGroupsByDayTitle:(id)a3
{
  v5 = a3;
  v6 = [v5 mediaPlaySessions];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MONowPlayingMediaManager _createEventFromMediaPlayGroupsByDayTitle:];
    }

    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MONowPlayingMediaManager.m" lineNumber:854 description:{@"mediaPlay has no mediaPlaySessions. (in %s:%d)", "-[MONowPlayingMediaManager _createEventFromMediaPlayGroupsByDayTitle:]", 854}];
  }

  v10 = [v5 mediaPlaySessions];
  v11 = [(MONowPlayingMediaManager *)self _calculateStartDateFromMediaPlaySessions:v10];

  v12 = [v5 mediaPlaySessions];

  v13 = [(MONowPlayingMediaManager *)self _calculateEndDateFromMediaPlaySessions:v12];

  v14 = [MOEvent alloc];
  v15 = +[NSUUID UUID];
  v16 = +[NSDate date];
  v17 = [(MOEvent *)v14 initWithEventIdentifier:v15 startDate:v11 endDate:v13 creationDate:v16 provider:3 category:4];

  v18 = [(MONowPlayingMediaManager *)self configurationManager];
  LODWORD(v19) = 1242802176;
  [v18 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v19];
  v21 = [v13 dateByAddingTimeInterval:v20];
  [(MOEvent *)v17 setExpirationDate:v21];

  return v17;
}

- (void)_saveMediaPlayGroupsByDayTitle:(id)a3 startDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSDate dateWithTimeIntervalSinceNow:-864000.0];
  if ([v9 isBeforeDate:v11])
  {
    v12 = v9;

    v11 = v12;
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__47;
  v23[4] = __Block_byref_object_dispose__47;
  v24 = 0;
  momentStore = self->_momentStore;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __77__MONowPlayingMediaManager__saveMediaPlayGroupsByDayTitle_startDate_handler___block_invoke;
  v22[3] = &unk_100337E98;
  v22[4] = v23;
  [(MOEventStore *)momentStore fetchEventsWithStartDateAfter:v11 Category:4 CompletionHandler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __77__MONowPlayingMediaManager__saveMediaPlayGroupsByDayTitle_startDate_handler___block_invoke_2;
  v21[3] = &unk_100340790;
  v21[4] = self;
  v21[5] = v23;
  v14 = [v8 _pas_mappedArrayWithTransform:v21];
  v15 = self->_momentStore;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __77__MONowPlayingMediaManager__saveMediaPlayGroupsByDayTitle_startDate_handler___block_invoke_3;
  v18[3] = &unk_1003377B8;
  v16 = v14;
  v19 = v16;
  v17 = v10;
  v20 = v17;
  [(MOEventStore *)v15 storeEvents:v16 CompletionHandler:v18];

  _Block_object_dispose(v23, 8);
}

id __77__MONowPlayingMediaManager__saveMediaPlayGroupsByDayTitle_startDate_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _createEventFromMediaPlayGroupsByDayTitle:v3];
  if ([v4 category] == 4)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v5 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = v3;
    obj = v6;
    v9 = 0;
    v26 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = *(a1 + 32);
        v14 = [v4 startDate];
        v15 = [v4 endDate];
        v16 = [v13 _providerIdOfStartDate:v14 endDate:v15];

        v17 = *(a1 + 32);
        v18 = [v11 startDate];
        v19 = [v11 endDate];
        v20 = [v17 _providerIdOfStartDate:v18 endDate:v19];

        v9 |= [v16 isEqualToString:v20];
        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
    v21 = obj;

    v3 = v24;
    if (v9)
    {
      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {

    v21 = v6;
  }

  v22 = v4;
LABEL_15:

  return v22;
}

void __77__MONowPlayingMediaManager__saveMediaPlayGroupsByDayTitle_startDate_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__MONowPlayingMediaManager__saveMediaPlayGroupsByDayTitle_startDate_handler___block_invoke_3_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "saved repeated or played media events, count, %lu", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_saveMediaPlaySessionsEvents:(id)a3 handler:(id)a4
{
  v38 = a3;
  v5 = a4;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__47;
  v51 = __Block_byref_object_dispose__47;
  v52 = 0;
  v6 = [[NSSet alloc] initWithObjects:{&off_10036C2F8, 0}];
  momentStore = self->_momentStore;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = __65__MONowPlayingMediaManager__saveMediaPlaySessionsEvents_handler___block_invoke;
  v46[3] = &unk_1003378A0;
  v46[4] = &v47;
  [(MOEventStore *)momentStore fetchLastEventOfCategories:v6 CompletionHandler:v46];
  v33 = v6;
  v35 = objc_opt_new();
  v34 = v5;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = [v38 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v9)
  {
    v10 = *v43;
    obj = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v38 objectForKeyedSubscript:v12];
        if ([v14 count])
        {
          v15 = [(MONowPlayingMediaManager *)self _createEventFromMediaPlaySessions:v14];
          v16 = v15;
          if (v48[5] && ([v15 startDate], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48[5], "startDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isAfterDate:", v18), v18, v17, !v19))
          {
            if (v48[5])
            {
              v20 = [v16 startDate];
              v21 = [v48[5] startDate];
              v22 = [v20 isEqualToDate:v21];

              if (v22)
              {
                v23 = [v16 startDate];
                v24 = [v16 endDate];
                v25 = [(MONowPlayingMediaManager *)self _providerIdOfStartDate:v23 endDate:v24];

                v26 = [v48[5] startDate];
                v27 = [v48[5] endDate];
                v28 = [(MONowPlayingMediaManager *)self _providerIdOfStartDate:v26 endDate:v27];

                if (([v25 isEqualToString:v28] & 1) == 0)
                {
                  [v35 addObject:v16];
                }
              }
            }
          }

          else
          {
            [v35 addObject:v16];
          }
        }

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = obj;
      v29 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
      v9 = v29;
    }

    while (v29);
  }

  v30 = self->_momentStore;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = __65__MONowPlayingMediaManager__saveMediaPlaySessionsEvents_handler___block_invoke_2;
  v39[3] = &unk_1003377B8;
  v31 = v35;
  v40 = v31;
  v32 = v34;
  v41 = v32;
  [(MOEventStore *)v30 storeEvents:v31 CompletionHandler:v39];

  _Block_object_dispose(&v47, 8);
}

void __65__MONowPlayingMediaManager__saveMediaPlaySessionsEvents_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__MONowPlayingMediaManager__saveMediaPlaySessionsEvents_handler___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "saved mediaPlaySession events, count, %lu", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (id)_createEventFromMediaPlaySessions:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MONowPlayingMediaManager _createEventFromMediaPlaySessions:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MONowPlayingMediaManager.m" lineNumber:947 description:{@"mediaPlaySessions has no sessions. (in %s:%d)", "-[MONowPlayingMediaManager _createEventFromMediaPlaySessions:]", 947}];
  }

  v8 = [(MONowPlayingMediaManager *)self _calculateStartDateFromMediaPlaySessions:v5];
  v9 = [(MONowPlayingMediaManager *)self _calculateEndDateFromMediaPlaySessions:v5];

  v10 = [MOEvent alloc];
  v11 = +[NSUUID UUID];
  v12 = +[NSDate date];
  v13 = [(MOEvent *)v10 initWithEventIdentifier:v11 startDate:v8 endDate:v9 creationDate:v12 provider:3 category:6];

  v14 = [v9 dateByAddingTimeInterval:2419200.0];
  [(MOEvent *)v13 setExpirationDate:v14];

  return v13;
}

- (id)_providerIdOfStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v7 = v6 / 0.01;
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [[NSString alloc] initWithFormat:@"%ld, %ld", v7, (v9 / 0.01)];

  return v10;
}

- (void)rehydratedMediaPlayEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MONowPlayingMediaManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__MONowPlayingMediaManager_rehydratedMediaPlayEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydratedMediaPlayEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "no event to rehydrate, returning nil", buf, 2u);
    }

    v7[2](v7, &__NSArray0__struct, 0);
  }

  v9 = [v6 getDurationOfMOEventArray];
  v10 = [v9 startDate];
  v11 = [v9 endDate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __63__MONowPlayingMediaManager__rehydratedMediaPlayEvents_handler___block_invoke;
  v14[3] = &unk_10033EF30;
  v16 = self;
  v17 = v7;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [(MONowPlayingMediaManager *)self _fetchNowPlayingEventsBetweenStartDate:v10 EndDate:v11 CompletionHandler:v14];
}

void __63__MONowPlayingMediaManager__rehydratedMediaPlayEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__MONowPlayingMediaManager__rehydratedMediaPlayEvents_handler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
    v8 = [MORehydrationMetrics alloc];
    v9 = [*(a1 + 32) firstObject];
    v10 = [v9 category];
    v11 = [*(a1 + 32) firstObject];
    v12 = [v11 provider];
    v13 = [v6 description];
    v14 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v8, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v10, v12, 0, v13, [*(a1 + 32) count], 3, objc_msgSend(*(a1 + 32), "count"), 0.0);

    v23 = 0;
    [(MORehydrationMetrics *)v14 submitMetricsWithError:&v23];
    goto LABEL_14;
  }

  v15 = [*(a1 + 32) firstObject];
  v16 = [v15 category];

  if (v16 == 6)
  {
    v17 = [*(a1 + 40) _rehydratedMediaSessionsForEvents:*(a1 + 32) usingNowPlayingEvents:v5];
  }

  else
  {
    if (v16 != 4)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v17 = [*(a1 + 40) _rehydratedMediaEvents:*(a1 + 32) usingNowPlayingEvents:v5];
  }

  v14 = v17;
LABEL_11:
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(MORehydrationMetrics *)v14 count];
    v20 = [*(a1 + 32) count];
    v21 = [*(a1 + 32) firstObject];
    v22 = [v21 describeCategory];
    *buf = 134218498;
    v25 = v19;
    v26 = 2048;
    v27 = v20;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "rehydrated media events count, %lu, stored media events count, %lu, category, %@", buf, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

- (id)rehydratedMediaPlayEvents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 getDurationOfMOEventArray];
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__47;
    v18 = __Block_byref_object_dispose__47;
    v19 = 0;
    v6 = [v5 startDate];
    v7 = [v5 endDate];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __54__MONowPlayingMediaManager_rehydratedMediaPlayEvents___block_invoke;
    v13[3] = &unk_100337E98;
    v13[4] = buf;
    [(MONowPlayingMediaManager *)self _fetchNowPlayingEventsBetweenStartDate:v6 EndDate:v7 CompletionHandler:v13];

    [(MONowPlayingMediaManager *)self waitForQueueEmpty];
    v8 = [v4 firstObject];
    v9 = [v8 category];

    if (v9 == 6)
    {
      v10 = [(MONowPlayingMediaManager *)self _rehydratedMediaSessionsForEvents:v4 usingNowPlayingEvents:*(v15 + 5)];
    }

    else
    {
      if (v9 != 4)
      {
        v11 = 0;
        goto LABEL_11;
      }

      v10 = [(MONowPlayingMediaManager *)self _rehydratedMediaEvents:v4 usingNowPlayingEvents:*(v15 + 5)];
    }

    v11 = v10;
LABEL_11:
    _Block_object_dispose(buf, 8);

    goto LABEL_12;
  }

  v5 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "no event to rehydrate, returning...", buf, 2u);
  }

  v11 = &__NSArray0__struct;
LABEL_12:

  return v11;
}

- (id)_rehydratedMediaSessionsForEvents:(id)a3 usingNowPlayingEvents:(id)a4
{
  v6 = a3;
  v38 = self;
  v34 = a4;
  v39 = [(MONowPlayingMediaManager *)self _generateMediaPlaySessionGroupsByDay:?];
  if ([v39 count])
  {
    v35 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v54;
      v36 = *v54;
      v37 = v6;
      do
      {
        v11 = 0;
        v40 = v8;
        do
        {
          if (*v54 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v53 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          if ([v12 category] == 6)
          {
            v42 = v13;
            v43 = v11;
            v44 = v9;
            dateFormatter = v38->_dateFormatter;
            v15 = [v12 startDate];
            v16 = [(NSDateFormatter *)dateFormatter stringFromDate:v15];

            v45 = v16;
            v46 = objc_opt_new();
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v47 = [v39 objectForKeyedSubscript:v16];
            v17 = [v47 countByEnumeratingWithState:&v49 objects:v61 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v50;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v50 != v19)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v21 = *(*(&v49 + 1) + 8 * i);
                  v22 = [v21 startDate];
                  v23 = [v12 startDate];
                  if ([v22 isOnOrAfter:v23])
                  {
                    v24 = [v21 endDate];
                    v25 = [v12 endDate];
                    v26 = [v24 isOnOrBefore:v25];

                    if (v26)
                    {
                      [v46 addObject:v21];
                    }
                  }

                  else
                  {
                  }
                }

                v18 = [v47 countByEnumeratingWithState:&v49 objects:v61 count:16];
              }

              while (v18);
            }

            v27 = v46;
            v10 = v36;
            v8 = v40;
            v13 = v42;
            v11 = v43;
            if ([v46 count])
            {
              v28 = [v12 copy];
              [v28 setMediaPlaySessions:v46];
              v29 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v58 = v45;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "rehydrated mediaPlay sessions for day: %@", buf, 0xCu);
              }

              [v35 addObject:v28];
              v27 = v46;
            }

            v9 = (v44 + 1);

            v6 = v37;
          }

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v11 != v8);
        v8 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v30 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:]([MORehydrationMetrics alloc], "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 6, 3, 1, 0, v9, 3, (v9 - [v35 count]), 0.0);
    v48 = 0;
    [(MORehydrationMetrics *)v30 submitMetricsWithError:&v48];
    v31 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v35 count];
      *buf = 134218240;
      v58 = v32;
      v59 = 1024;
      v60 = v9;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "rehydrated media play session event count, %lu, stored events count, %d", buf, 0x12u);
    }
  }

  else
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(&v30->super.super, OS_LOG_TYPE_ERROR))
    {
      [MONowPlayingMediaManager _rehydratedMediaSessionsForEvents:usingNowPlayingEvents:];
    }

    v35 = &__NSArray0__struct;
  }

  return v35;
}

- (id)_rehydratedMediaEvents:(id)a3 usingNowPlayingEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MONowPlayingMediaManager *)self _generateMediaPlayGroupsByDayTitle:v7];
  if ([v8 count])
  {
    v43 = self;
    v39 = v7;
    v40 = v6;
    v44 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v51;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v50 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [v14 mediaPlaySessions];
          v17 = [(MONowPlayingMediaManager *)v43 _calculateStartDateFromMediaPlaySessions:v16];

          v18 = [v14 mediaPlaySessions];
          v19 = [(MONowPlayingMediaManager *)v43 _calculateEndDateFromMediaPlaySessions:v18];

          v20 = [(MONowPlayingMediaManager *)v43 _providerIdOfStartDate:v17 endDate:v19];
          [v44 setObject:v14 forKeyedSubscript:v20];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v11);
    }

    v41 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v40;
    v21 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v47;
      v25 = v43;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v46 + 1) + 8 * j);
          v28 = objc_autoreleasePoolPush();
          if ([v27 category] == 4)
          {
            v29 = [v27 startDate];
            v30 = [v27 endDate];
            v31 = [(MONowPlayingMediaManager *)v25 _providerIdOfStartDate:v29 endDate:v30];
            v32 = [v44 objectForKeyedSubscript:v31];

            v25 = v43;
            if (v32)
            {
              v33 = [v27 copy];
              [(MONowPlayingMediaManager *)v43 _setDynamicProperties:v33 mediaPlay:v32];
              [v41 addObject:v33];
            }

            v23 = (v23 + 1);
          }

          objc_autoreleasePoolPop(v28);
        }

        v22 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    v34 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:]([MORehydrationMetrics alloc], "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 4, 3, 1, 0, v23, 3, (v23 - [v41 count]), 0.0);
    v45 = 0;
    [(MORehydrationMetrics *)v34 submitMetricsWithError:&v45];
    v35 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    v8 = v38;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v41 count];
      *buf = 134218240;
      v55 = v36;
      v56 = 1024;
      v57 = v23;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "rehydrated leisure media event count, %lu, stored events count, %d", buf, 0x12u);
    }

    v7 = v39;
    v6 = v40;
  }

  else
  {
    v44 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [MONowPlayingMediaManager _rehydratedMediaEvents:usingNowPlayingEvents:];
    }

    v41 = &__NSArray0__struct;
  }

  return v41;
}

- (void)_setDynamicProperties:(id)a3 mediaPlay:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 title];

  if (v7)
  {
    v8 = [v6 title];
    [v5 setMediaTitle:v8];

    v9 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [MONowPlayingMediaManager _setDynamicProperties:v5 mediaPlay:?];
    }
  }

  v10 = [v6 album];

  if (v10)
  {
    v11 = [v6 album];
    [v5 setMediaAlbum:v11];

    v12 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [MONowPlayingMediaManager _setDynamicProperties:v5 mediaPlay:?];
    }
  }

  v13 = [v6 bundleId];

  if (v13)
  {
    v14 = [v6 bundleId];
    [v5 setMediaPlayerBundleId:v14];

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [MONowPlayingMediaManager _setDynamicProperties:v5 mediaPlay:?];
    }
  }

  v16 = [v6 productId];

  if (v16)
  {
    v17 = [v6 productId];
    [v5 setMediaProductId:v17];
  }

  v18 = [v6 genre];

  if (v18)
  {
    v19 = [v6 genre];
    [v5 setMediaGenre:v19];
  }

  v20 = [v6 mediaType];

  if (v20)
  {
    v21 = [v6 mediaType];
    [v5 setMediaType:v21];

    v22 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [MONowPlayingMediaManager _setDynamicProperties:v5 mediaPlay:?];
    }
  }

  v23 = [v6 artist];

  if (v23)
  {
    v24 = [v6 artist];
    [v5 setMediaArtist:v24];
  }

  v25 = [v6 sumTimePlayed];

  if (v25)
  {
    v26 = [v6 sumTimePlayed];
    [v5 setMediaSumTimePlayed:v26];

    v27 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [MONowPlayingMediaManager _setDynamicProperties:v5 mediaPlay:?];
    }
  }

  if ([v6 repetitions])
  {
    v28 = [[NSNumber alloc] initWithInt:{objc_msgSend(v6, "repetitions")}];
    [v5 setMediaRepetitions:v28];
    v29 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [MONowPlayingMediaManager _setDynamicProperties:v5 mediaPlay:?];
    }
  }

  v30 = [v6 mediaPlaySessions];

  if (v30)
  {
    v31 = [v6 mediaPlaySessions];
    [v5 setMediaPlaySessions:v31];

    v32 = _mo_log_facility_get_os_log(&MOLogFacilityRepeatedMedia);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [MONowPlayingMediaManager _setDynamicProperties:v5 mediaPlay:?];
    }
  }

  v33 = [v6 firstPartyTimePlayedRatio];

  if (v33)
  {
    v34 = [v6 firstPartyTimePlayedRatio];
    v35 = [v5 mediaEvent];
    [v35 setMediaFirstPartyTimePlayedRatio:v34];
  }
}

- (void)fetchMediaPlayEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MONowPlayingMediaManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __98__MONowPlayingMediaManager_fetchMediaPlayEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)_fetchMediaPlayEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v25 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 4];
  v24 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 6];
  v14 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 3];
  v33[0] = v25;
  v33[1] = v24;
  v15 = [NSArray arrayWithObjects:v33 count:2];
  v16 = [NSCompoundPredicate orPredicateWithSubpredicates:v15];

  v32[0] = v16;
  v32[1] = v14;
  v17 = [NSArray arrayWithObjects:v32 count:2];
  v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v17];

  v19 = [v13 filteredArrayUsingPredicate:v18];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __99__MONowPlayingMediaManager__fetchMediaPlayEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v26[3] = &unk_10033C1E8;
  v30 = v11;
  v31 = v12;
  v27 = v19;
  v28 = self;
  v29 = v10;
  v20 = v11;
  v21 = v10;
  v22 = v19;
  v23 = v12;
  [(MONowPlayingMediaManager *)self _fetchNowPlayingEventsBetweenStartDate:v21 EndDate:v20 CompletionHandler:v26];
}

void __99__MONowPlayingMediaManager__fetchMediaPlayEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetching media play sessions from source hit error", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
    v9 = [MORehydrationMetrics alloc];
    v10 = [v6 description];
    v11 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v9, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 4, 3, 0, v10, [*(a1 + 32) count], 3, objc_msgSend(*(a1 + 32), "count"), 0.0);

    v91 = 0;
    [(MORehydrationMetrics *)v11 submitMetricsWithError:&v91];
    goto LABEL_61;
  }

  v11 = objc_opt_new();
  v12 = [*(a1 + 40) _rehydratedMediaEvents:*(a1 + 32) usingNowPlayingEvents:v5];
  v13 = [v12 mutableCopy];

  v14 = [*(a1 + 40) _rehydratedMediaSessionsForEvents:*(a1 + 32) usingNowPlayingEvents:v5];
  v61 = [v14 mutableCopy];

  v62 = objc_opt_new();
  v15 = [*(a1 + 40) _createNewLeisureMediaEventsFromMediaPlays:v5 storedEvents:*(a1 + 32)];
  v66 = [v15 mutableCopy];

  v16 = [*(a1 + 40) _createNewMediaPlayEventsFromMediaPlays:v5 storedEvents:*(a1 + 32)];
  v65 = [v16 mutableCopy];

  if ([v13 count])
  {
    [(MORehydrationMetrics *)v11 addObjectsFromArray:v13];
  }

  v17 = v61;
  if ([v61 count])
  {
    [(MORehydrationMetrics *)v11 addObjectsFromArray:v61];
  }

  v18 = v62;
  if ([v66 count])
  {
    [v62 addObjectsFromArray:v66];
  }

  if ([v65 count])
  {
    [v62 addObjectsFromArray:v65];
  }

  if ([v13 count] && objc_msgSend(v66, "count"))
  {
    v71 = v11;
    v54 = a1;
    v56 = v7;
    v59 = v5;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v52 = v13;
    obj = v13;
    v67 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (!v67)
    {
      goto LABEL_34;
    }

    v64 = *v88;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v88 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v69 = v19;
        v20 = *(*(&v87 + 1) + 8 * v19);
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v73 = v66;
        v21 = [v73 countByEnumeratingWithState:&v83 objects:v102 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v84;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v84 != v23)
              {
                objc_enumerationMutation(v73);
              }

              v25 = *(*(&v83 + 1) + 8 * i);
              v26 = [v20 startDate];
              v27 = [v25 startDate];
              if ([v26 isEqualToDate:v27])
              {
                v28 = [v20 mediaTitle];
                v29 = [v25 mediaTitle];
                v30 = [v28 isEqualToString:v29];

                if (!v30)
                {
                  continue;
                }

                [(MORehydrationMetrics *)v71 removeObject:v20];
                v26 = [v20 eventIdentifier];
                [v25 setEventIdentifier:v26];
              }

              else
              {
              }
            }

            v22 = [v73 countByEnumeratingWithState:&v83 objects:v102 count:16];
          }

          while (v22);
        }

        v19 = v69 + 1;
      }

      while ((v69 + 1) != v67);
      v67 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
      if (!v67)
      {
LABEL_34:

        v6 = 0;
        v5 = v59;
        a1 = v54;
        v7 = v56;
        v11 = v71;
        v13 = v52;
        v17 = v61;
        v18 = v62;
        break;
      }
    }
  }

  if ([v17 count] && objc_msgSend(v65, "count"))
  {
    v53 = v13;
    v55 = a1;
    v31 = v11;
    v57 = v7;
    v58 = v6;
    v60 = v5;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v68 = v17;
    v72 = [v68 countByEnumeratingWithState:&v79 objects:v101 count:16];
    if (v72)
    {
      v70 = *v80;
      do
      {
        v32 = 0;
        do
        {
          if (*v80 != v70)
          {
            objc_enumerationMutation(v68);
          }

          v74 = v32;
          v33 = *(*(&v79 + 1) + 8 * v32);
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v34 = v65;
          v35 = [v34 countByEnumeratingWithState:&v75 objects:v100 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v76;
            do
            {
              for (j = 0; j != v36; j = j + 1)
              {
                if (*v76 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v75 + 1) + 8 * j);
                v40 = [v33 startDate];
                v41 = [v39 startDate];
                v42 = [v40 isEqualToDate:v41];

                if (v42)
                {
                  [(MORehydrationMetrics *)v31 removeObject:v33];
                  v43 = [v33 eventIdentifier];
                  [v39 setEventIdentifier:v43];
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v75 objects:v100 count:16];
            }

            while (v36);
          }

          v32 = v74 + 1;
        }

        while (v74 + 1 != v72);
        v72 = [v68 countByEnumeratingWithState:&v79 objects:v101 count:16];
      }

      while (v72);
    }

    v6 = v58;
    v5 = v60;
    a1 = v55;
    v7 = v57;
    v11 = v31;
    v13 = v53;
    v17 = v61;
    v18 = v62;
  }

  if ([(MORehydrationMetrics *)v11 count])
  {
    [v7 setObject:v11 forKey:@"rehydratedEvents"];
  }

  if ([v18 count])
  {
    [v7 setObject:v18 forKey:@"newEvents"];
  }

  v44 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = v11;
    v46 = v13;
    v47 = a1;
    v48 = *(a1 + 48);
    v49 = *(a1 + 56);
    v50 = [(MORehydrationMetrics *)v45 count];
    v51 = [v62 count];
    *buf = 138413058;
    v93 = v48;
    v13 = v46;
    v94 = 2112;
    v95 = v49;
    a1 = v47;
    v96 = 2048;
    v97 = v50;
    v17 = v61;
    v98 = 2048;
    v99 = v51;
    v11 = v45;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated event count, %lu, new event count, %lu", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
LABEL_61:
}

- (id)_createNewLeisureMediaEventsFromMediaPlays:(id)a3 storedEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_opt_new();
    v33 = v7;
    if ([v7 count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v42;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v41 + 1) + 8 * i);
            v15 = [v14 startDate];
            v16 = [v14 endDate];
            v17 = [(MONowPlayingMediaManager *)self _providerIdOfStartDate:v15 endDate:v16];
            [v8 addObject:v17];
          }

          v11 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v11);
      }
    }

    v32 = v6;
    v18 = [(MONowPlayingMediaManager *)self _generateMediaPlayGroupsByDayTitle:v6];
    v34 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v36 = *v38;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v38 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v37 + 1) + 8 * j);
          v23 = objc_autoreleasePoolPush();
          v24 = [(MONowPlayingMediaManager *)self _createEventFromMediaPlayGroupsByDayTitle:v22];
          v25 = [v24 startDate];
          v26 = [v24 endDate];
          v27 = [(MONowPlayingMediaManager *)self _providerIdOfStartDate:v25 endDate:v26];

          if (![v8 count])
          {
            if (!v24)
            {
              goto LABEL_23;
            }

LABEL_22:
            [(MONowPlayingMediaManager *)self _setDynamicProperties:v24 mediaPlay:v22];
            [v34 addObject:v24];
            goto LABEL_23;
          }

          if ([v8 count])
          {
            v28 = [v8 containsObject:v27];
            if (v24)
            {
              if ((v28 & 1) == 0)
              {
                goto LABEL_22;
              }
            }
          }

LABEL_23:

          objc_autoreleasePoolPop(v23);
        }

        v20 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v20);
    }

    v29 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v34 count];
      *buf = 134217984;
      v46 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "new leisure media event count, %lu", buf, 0xCu);
    }

    v6 = v32;
    v7 = v33;
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "no media play are fetched to create new leisure media events", buf, 2u);
    }

    v34 = 0;
  }

  return v34;
}

- (id)_createNewMediaPlayEventsFromMediaPlays:(id)a3 storedEvents:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_opt_new();
    if ([v6 count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v45;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v45 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v44 + 1) + 8 * i);
            v14 = [v13 startDate];
            v15 = [v13 endDate];
            v16 = [(MONowPlayingMediaManager *)self _providerIdOfStartDate:v14 endDate:v15];
            [v7 addObject:v16];
          }

          v10 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
        }

        while (v10);
      }
    }

    v17 = [(MONowPlayingMediaManager *)self _generateMediaPlaySessionGroupsByDay:v5, v6, v5];
    v36 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v38 = v17;
    obj = [v17 allKeys];
    v18 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * j);
          v23 = objc_autoreleasePoolPush();
          v24 = [v38 objectForKeyedSubscript:v22];
          if ([v24 count])
          {
            v25 = [(MONowPlayingMediaManager *)self _createEventFromMediaPlaySessions:v24];
            [v25 startDate];
            v27 = v26 = v7;
            v28 = [v25 endDate];
            v29 = [(MONowPlayingMediaManager *)self _providerIdOfStartDate:v27 endDate:v28];

            v7 = v26;
            if ([v26 count])
            {
              if (![v26 count])
              {
                goto LABEL_24;
              }

              v30 = [v26 containsObject:v29];
              if (!v25 || (v30 & 1) != 0)
              {
                goto LABEL_24;
              }

LABEL_23:
              [v25 setMediaPlaySessions:v24];
              [v36 addObject:v25];
            }

            else if (v25)
            {
              goto LABEL_23;
            }

LABEL_24:
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v19);
    }

    v31 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v36 count];
      *buf = 134217984;
      v49 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "new media play event count, %lu", buf, 0xCu);
    }

    v6 = v34;
    v5 = v35;
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no media play are fetched to create new media play events", buf, 2u);
    }

    v36 = 0;
  }

  return v36;
}

- (id)_findUnrehdyratedEventsFromStoredEvents:(id)a3 rehydratedEvents:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    if ([v5 count])
    {
      v7 = objc_opt_new();
      v8 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v34 + 1) + 8 * i) eventIdentifier];
            v15 = [v14 UUIDString];
            [v8 addObject:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v11);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = v5;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * j);
            v22 = [v21 eventIdentifier];
            v23 = [v22 UUIDString];
            v24 = [v8 containsObject:v23];

            if ((v24 & 1) == 0)
            {
              [v21 setRehydrationFailCount:{objc_msgSend(v21, "rehydrationFailCount") + 1}];
              [v7 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v18);
      }

      v6 = v28;
      v5 = v29;
    }

    else
    {
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "no stored events for rehydration", buf, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityMediaPlaySessions);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "no media events are rehydrated", buf, 2u);
    }

    v7 = v5;
  }

  return v7;
}

void __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "number of devices for nowplaying events, %lu", buf, 0xCu);
}

void __93__MONowPlayingMediaManager__fetchNowPlayingEventsBetweenStartDate_EndDate_CompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__MONowPlayingMediaManager__fetchAppCateogryByBundleIds___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getMediaAppCategoryPlistFileURL
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getMediaAppInfoPlistFileURL
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeOldMediaAppCategoryPlistFile:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 138412290;
  v2 = @"mediaAppCategory.plist";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "File %@ found.", &v1, 0xCu);
}

- (void)_removeOldMediaAppCategoryPlistFile:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_readMediaAppInfoPlistFile:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 138412290;
  v2 = @"mediaAppInfo.plist";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "File %@ found.", &v1, 0xCu);
}

- (void)_readMediaAppInfoPlistFile:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistMediaAppInfoPlistFile:withData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistMediaAppInfoPlistFile:withData:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistMediaAppInfoPlistFile:withData:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createEventFromMediaPlayGroupsByDayTitle:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __77__MONowPlayingMediaManager__saveMediaPlayGroupsByDayTitle_startDate_handler___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__MONowPlayingMediaManager__saveMediaPlaySessionsEvents_handler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createEventFromMediaPlaySessions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __63__MONowPlayingMediaManager__rehydratedMediaPlayEvents_handler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydratedMediaSessionsForEvents:usingNowPlayingEvents:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydratedMediaEvents:usingNowPlayingEvents:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setDynamicProperties:(void *)a1 mediaPlay:.cold.1(void *a1)
{
  v1 = [a1 mediaTitle];
  v2 = [MOMediaPlaySession redactString:v1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v3, v4, "has title, %@", v5, v6, v7, v8, v9);
}

- (void)_setDynamicProperties:(void *)a1 mediaPlay:.cold.2(void *a1)
{
  v1 = [a1 mediaAlbum];
  v2 = [MOMediaPlaySession redactString:v1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v3, v4, "has album name, %@", v5, v6, v7, v8, v9);
}

- (void)_setDynamicProperties:(void *)a1 mediaPlay:.cold.3(void *a1)
{
  v1 = [a1 mediaPlayerBundleId];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v2, v3, "has media player bundleID, %@", v4, v5, v6, v7, v8);
}

- (void)_setDynamicProperties:(void *)a1 mediaPlay:.cold.4(void *a1)
{
  v1 = [a1 mediaType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v2, v3, "has mediaType, %@", v4, v5, v6, v7, v8);
}

- (void)_setDynamicProperties:(void *)a1 mediaPlay:.cold.5(void *a1)
{
  v1 = [a1 mediaSumTimePlayed];
  [v1 doubleValue];
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v2, v3, "has sumTimePlayed, %f", v4, v5, v6, v7, 0);
}

- (void)_setDynamicProperties:(void *)a1 mediaPlay:.cold.6(void *a1)
{
  v1 = [a1 mediaRepetitions];
  [v1 unsignedLongValue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v2, v3, "has repetition, %lu", v4, v5, v6, v7, v8);
}

- (void)_setDynamicProperties:(void *)a1 mediaPlay:.cold.7(void *a1)
{
  v1 = [a1 mediaPlaySessions];
  [v1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v2, v3, "has media play sessions, %lu", v4, v5, v6, v7, v8);
}

@end