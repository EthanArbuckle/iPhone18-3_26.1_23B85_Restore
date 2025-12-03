@interface MOPhotoManager
- (BOOL)_doesAssetHaveFaceProcessing:(id)processing;
- (BOOL)_doesAssetHaveSceneProcessing:(id)processing;
- (BOOL)_persistPhotoMemoryPlistFile:(id)file withData:(id)data;
- (BOOL)isCandidateForMemoryEvent:(id)event;
- (BOOL)isDesirableCategoryOrTrigger:(id)trigger;
- (MOPhotoManager)initWithUniverse:(id)universe;
- (id)_calculateDistanceBetweenUserLocation:(id)location PhotoLocation:(id)photoLocation;
- (id)_createEventFromAsset:(id)asset;
- (id)_createEventFromPhotoMemory:(id)memory;
- (id)_fetchCuratedAssetsForPhotoMemory:(id)memory;
- (id)_findUnrehydratedEventsWithStoredEvents:(id)events photoMemories:(id)memories;
- (id)_getPhotoMemoryPlistFileURL;
- (id)_getPhotosByAssetProperties:(id)properties UserLocations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory MinDistance:(double)distance;
- (id)_readPhotoMemoryPlistFile:(id)file;
- (id)_sceneLabelsForSceneClassifications:(id)classifications;
- (id)getClassificationInfo:(id)info;
- (id)getPersonsInAsset:(id)asset;
- (id)getTraitsOverrideArray;
- (id)initializeVisualIdentifierView;
- (id)intializeEntityTaggingService;
- (unint64_t)gmsAvailabilityStatus;
- (void)_buildCuratedAssetMap:(id)map handler:(id)handler;
- (void)_createNewEventsFromPhotoMemories:(id)memories storedEvents:(id)events handler:(id)handler;
- (void)_fetchCuratedPhotosFromHighlights:(id)highlights StartDate:(id)date EndDate:(id)endDate BundleInterfaceType:(unint64_t)type Locations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory handler:(id)handler;
- (void)_fetchPhotoMemoriesBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler;
- (void)_fetchPhotoMemoryEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)_fetchPhotosTraitsFromAssets:(id)assets StartDate:(id)date EndDate:(id)endDate handler:(id)handler;
- (void)_fetchSharedPhotosBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler;
- (void)_fetchUnprocessedPhotosBetweenStartDate:(id)date EndDate:(id)endDate Locations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory handler:(id)handler;
- (void)_getPhotoMemoryPlistFileURL;
- (void)_rehydratePhotoMemories:(id)memories handler:(id)handler;
- (void)_rehydrateSharedPhotos:(id)photos handler:(id)handler;
- (void)_rehydrateStoredEvents:(id)events fromPhotoMemories:(id)memories fetchResult:(id)result handler:(id)handler;
- (void)_saveEvents:(id)events category:(unint64_t)category handler:(id)handler;
- (void)_scheduleMediaAnalysisDeferredProcessing:(id)processing;
- (void)_setDynamicPropertiesForMemoryEvent:(id)event fromMemory:(id)memory keyAsset:(id)asset;
- (void)deletePhotoMemoryPlistFile;
- (void)fetchAssetUsingID:(id)d handler:(id)handler;
- (void)fetchPhotoMemoryEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)fetchPhotosBetweenStartDate:(id)date EndDate:(id)endDate SuggestionID:(id)d BundleInterfaceType:(unint64_t)type Locations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory handler:(id)handler;
- (void)intializeEntityTaggingService;
- (void)rehydratePhotoMemories:(id)memories handler:(id)handler;
- (void)rehydrateSharedPhotos:(id)photos handler:(id)handler;
@end

@implementation MOPhotoManager

- (unint64_t)gmsAvailabilityStatus
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__MOPhotoManager_gmsAvailabilityStatus__block_invoke;
  block[3] = &unk_100335F40;
  block[4] = selfCopy;
  if (gmsAvailabilityStatus_onceToken != -1)
  {
    dispatch_once(&gmsAvailabilityStatus_onceToken, block);
  }

  objc_sync_exit(selfCopy);

  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    gmsAvailabilityStatus = selfCopy->_gmsAvailabilityStatus;
    *buf = 134217984;
    v8 = gmsAvailabilityStatus;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "gmsAvailabilityStatus,%lu", buf, 0xCu);
  }

  return selfCopy->_gmsAvailabilityStatus;
}

- (MOPhotoManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [universeCopy getService:v10];

    if (v11)
    {
      +[PHPhotoLibrary enableMultiLibraryMode];
      v51 = 0;
      v12 = [PHPhotoLibrary openPhotoLibraryWithWellKnownIdentifier:1 error:&v51];
      v13 = v51;
      if (v13)
      {
        v14 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MOPhotoManager initWithUniverse:];
        }
      }

      v50 = v13;
      v15 = [PHPhotoLibrary openPhotoLibraryWithWellKnownIdentifier:3 error:&v50];
      v16 = v50;

      if (v16)
      {
        v17 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [MOPhotoManager initWithUniverse:];
        }
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [universeCopy getService:v19];

      obj = v15;
      if (v20)
      {
        if (!v12 || !v15)
        {
          v45 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [MOPhotoManager initWithUniverse:];
          }

          exit(1);
        }

        v49 = v16;
        v21 = v12;
        v46 = [v12 suggestedMePersonIdentifierWithError:&v49];
        v22 = v49;

        if (v22)
        {
          v23 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [MOPhotoManager initWithUniverse:];
          }
        }

        librarySpecificFetchOptions = [v21 librarySpecificFetchOptions];
        v25 = [PHPerson fetchMePersonWithOptions:librarySpecificFetchOptions];
        firstObject = [v25 firstObject];

        v27 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = firstObject;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Me person from Photos: %@", buf, 0xCu);
        }

        v48.receiver = self;
        v48.super_class = MOPhotoManager;
        v28 = [(MOPhotoManager *)&v48 init];
        v29 = v22;
        v12 = v21;
        v30 = v46;
        if (v28)
        {
          v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v32 = dispatch_queue_create("MOPhotoManager", v31);
          queue = v28->_queue;
          v28->_queue = v32;

          objc_storeStrong(&v28->_photoLibrary, v12);
          objc_storeStrong(&v28->_syndicationPhotoLibrary, obj);
          objc_storeStrong(&v28->_eventStore, v20);
          objc_storeStrong(&v28->_configurationManager, v8);
          objc_storeStrong(&v28->_defaultsManager, v11);
          objc_storeStrong(&v28->_suggestedMePersonIdentifier, v46);
          objc_storeStrong(&v28->_mePerson, firstObject);
          initializeVisualIdentifierView = [(MOPhotoManager *)v28 initializeVisualIdentifierView];
          visualIdentifierView = v28->_visualIdentifierView;
          v28->_visualIdentifierView = initializeVisualIdentifierView;

          intializeEntityTaggingService = [(MOPhotoManager *)v28 intializeEntityTaggingService];
          entityTaggingSerice = v28->_entityTaggingSerice;
          v28->_entityTaggingSerice = intializeEntityTaggingService;

          v38 = objc_alloc_init(CNContactStore);
          contactStore = v28->_contactStore;
          v28->_contactStore = v38;
        }

        self = v28;

        v16 = v29;
        selfCopy = self;
      }

      else
      {
        v43 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [MORoutineServiceManager initWithUniverse:];
        }

        v30 = +[NSAssertionHandler currentHandler];
        [v30 handleFailureInMethod:a2 object:self file:@"MOPhotoManager.m" lineNumber:132 description:@"Invalid parameter not satisfying: eventStore"];
        selfCopy = 0;
      }
    }

    else
    {
      v42 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager initWithUniverse:];
      }

      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"MOPhotoManager.m" lineNumber:111 description:@"Invalid parameter not satisfying: defaultsManager"];
      selfCopy = 0;
    }
  }

  else
  {
    v41 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MOPhotoManager.m" lineNumber:105 description:@"Invalid parameter not satisfying: configurationManager"];
    selfCopy = 0;
  }

  return selfCopy;
}

unint64_t __39__MOPhotoManager_gmsAvailabilityStatus__block_invoke(uint64_t a1)
{
  result = +[MOPlatformInfo generativeModelsAvailabilityStatus];
  *(*(a1 + 32) + 8) = result;
  return result;
}

- (id)_sceneLabelsForSceneClassifications:(id)classifications
{
  classificationsCopy = classifications;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(PFSceneTaxonomy);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = classificationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v5 nodeRefForSceneClassId:{objc_msgSend(v11, "sceneIdentifier", v20)}];
        v13 = PFSceneTaxonomyNodeNetworkId();
        if (v12)
        {
          v14 = v13 == 1;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          [v11 confidence];
          v16 = v15;
          PFSceneTaxonomyNodeSearchThreshold();
          if (v16 >= v17)
          {
            v18 = PFSceneTaxonomyNodeName();
            if (v18)
            {
              [v4 addObject:v18];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)initializeVisualIdentifierView
{
  v2 = +[GDViewService defaultService];
  v10 = 0;
  v3 = [v2 visualIdentifierViewWithError:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = v3;
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#megadome failed to get visualIdentifierView with error: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)intializeEntityTaggingService
{
  v9 = 0;
  v2 = objc_opt_new();
  v3 = [[GDEntityTaggingService alloc] initWithConfig:v2 error:&v9];
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MOPhotoManager *)&v9 intializeEntityTaggingService];
    }

    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (void)fetchPhotosBetweenStartDate:(id)date EndDate:(id)endDate SuggestionID:(id)d BundleInterfaceType:(unint64_t)type Locations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory handler:(id)handler
{
  mandatoryCopy = mandatory;
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  locationsCopy = locations;
  handlerCopy = handler;
  v20 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v34 = dateCopy;
    v35 = 2112;
    v36 = endDateCopy;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2048;
    typeCopy = type;
    v41 = 1024;
    v42 = mandatoryCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "fetchPhotosBetweenStartDate, startDate, %@, endDate, %@, suggestionID, %@, interfaceType, %lu, isLocationCheckMandatory, %d", buf, 0x30u);
  }

  queue = [(MOPhotoManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __130__MOPhotoManager_fetchPhotosBetweenStartDate_EndDate_SuggestionID_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke;
  block[3] = &unk_10033F300;
  block[4] = self;
  v27 = dateCopy;
  v28 = endDateCopy;
  v29 = locationsCopy;
  v32 = mandatoryCopy;
  v30 = handlerCopy;
  typeCopy2 = type;
  v22 = handlerCopy;
  v23 = locationsCopy;
  v24 = endDateCopy;
  v25 = dateCopy;
  dispatch_async(queue, block);
}

void __130__MOPhotoManager_fetchPhotosBetweenStartDate_EndDate_SuggestionID_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setShouldPrefetchCount:1];
  v4 = [NSPredicate predicateWithFormat:@"%K >= %@ && %K <= %@", @"endDate", *(a1 + 40), @"startDate", *(a1 + 48)];
  [v3 setPredicate:v4];

  v5 = [PHAssetCollection fetchAssetCollectionsWithType:6 subtype:1000000301 options:v3];
  v6 = v5;
  if (!v5 || ([v5 fetchError], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [v6 fetchError];
      *buf = 138412802;
      *v74 = v9;
      *&v74[8] = 2112;
      *&v74[10] = v10;
      *&v74[18] = 2112;
      *&v74[20] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetch highlight from photo library failed, start date, %@, end date, %@, error, %@", buf, 0x20u);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 80);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = __130__MOPhotoManager_fetchPhotosBetweenStartDate_EndDate_SuggestionID_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke_314;
    v71[3] = &unk_10033F2B0;
    v72 = *(a1 + 64);
    [v12 _fetchUnprocessedPhotosBetweenStartDate:v13 EndDate:v14 Locations:v15 IsLocationCheckMandatory:v16 handler:v71];
    v17 = v72;
LABEL_6:

    goto LABEL_7;
  }

  v18 = [v6 fetchedObjects];
  v19 = [v18 count];

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (!v19)
  {
    if (v21)
    {
      v43 = *(a1 + 40);
      v44 = *(a1 + 48);
      *buf = 138412546;
      *v74 = v43;
      *&v74[8] = 2112;
      *&v74[10] = v44;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "fetch highlight from photo library successful, but fetched object count is invalid, start date, %@, end date, %@", buf, 0x16u);
    }

    v45 = *(a1 + 32);
    v46 = *(a1 + 40);
    v47 = *(a1 + 48);
    v48 = *(a1 + 56);
    v49 = *(a1 + 80);
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = __130__MOPhotoManager_fetchPhotosBetweenStartDate_EndDate_SuggestionID_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke_316;
    v69[3] = &unk_10033F2B0;
    v70 = *(a1 + 64);
    [v45 _fetchUnprocessedPhotosBetweenStartDate:v46 EndDate:v47 Locations:v48 IsLocationCheckMandatory:v49 handler:v69];
    v17 = v70;
    goto LABEL_6;
  }

  v50 = a1;
  if (v21)
  {
    *buf = 134217984;
    *v74 = [v6 count];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "fetch highlight from photo library successful, highlightcount, %lu", buf, 0xCu);
  }

  v52 = v3;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v51 = v6;
  v22 = v6;
  v23 = [v22 countByEnumeratingWithState:&v65 objects:v93 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v66;
    v26 = 1;
    v53 = v22;
    do
    {
      v27 = 0;
      do
      {
        if (*v66 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v65 + 1) + 8 * v27);
        v29 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v28 localIdentifier];
          v31 = [v28 localStartDate];
          v60 = [v28 localEndDate];
          v59 = [v28 assetsCount];
          v58 = [v28 type];
          v57 = [v28 category];
          v56 = [v28 sharingComposition];
          [v28 promotionScore];
          v33 = v32;
          v55 = [v28 isEnriched];
          v34 = [v28 enrichmentState];
          v54 = [v28 visibilityState];
          v35 = [v28 kind];
          *buf = 67112194;
          *v74 = v26;
          *&v74[4] = 2112;
          *&v74[6] = v30;
          *&v74[14] = 2112;
          *&v74[16] = v31;
          *&v74[24] = 2112;
          *&v74[26] = v60;
          v75 = 2048;
          v76 = v59;
          v77 = 1024;
          v78 = v58;
          v79 = 1024;
          v80 = v57;
          v81 = 1024;
          v82 = v56;
          v83 = 2048;
          v84 = v33;
          v85 = 1024;
          v86 = v55;
          v87 = 1024;
          v88 = v34;
          v22 = v53;
          v89 = 1024;
          v90 = v54;
          v91 = 1024;
          v92 = v35;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "highlight[%d] info, id, %@, start date, %@, end date, %@, assetsCount, %lu, type, %hu, category, %hu, sharingComposition, %hu, promotionScore, %f, isEnriched, %d, enrichmentState, %hu, visibilityState, %hu, kind, %hu", buf, 0x64u);
        }

        ++v26;
        v27 = v27 + 1;
      }

      while (v24 != v27);
      v24 = [v22 countByEnumeratingWithState:&v65 objects:v93 count:16];
    }

    while (v24);
  }

  v36 = v22;
  v38 = *(v50 + 32);
  v37 = *(v50 + 40);
  v39 = *(v50 + 72);
  v40 = *(v50 + 48);
  v41 = *(v50 + 56);
  v42 = *(v50 + 80);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = __130__MOPhotoManager_fetchPhotosBetweenStartDate_EndDate_SuggestionID_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke_317;
  v61[3] = &unk_10033F2D8;
  v61[4] = v38;
  v62 = v37;
  v63 = *(v50 + 48);
  v64 = *(v50 + 64);
  [v38 _fetchCuratedPhotosFromHighlights:v36 StartDate:v62 EndDate:v40 BundleInterfaceType:v39 Locations:v41 IsLocationCheckMandatory:v42 handler:v61];

  v6 = v51;
  v3 = v52;
LABEL_7:
}

void __130__MOPhotoManager_fetchPhotosBetweenStartDate_EndDate_SuggestionID_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke_317(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  if ([*(a1 + 32) gmsAvailabilityStatus] == 1)
  {
    v32 = v12;
    v33 = v11;
    v34 = v10;
    v35 = v9;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v10;
    v14 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          v19 = v13[4];
          v20 = [v18 sceneClassifications];
          v21 = [v19 _sceneLabelsForSceneClassifications:v20];

          v22 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [v18 uuid];
            v24 = [v18 localIdentifier];
            *buf = 138412802;
            v42 = v23;
            v43 = 2112;
            v44 = v24;
            v45 = 2112;
            v46 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "fetchPhotosBetweenStartDate, #scenes, shortlisted assets with uuid %@ and localIdentifier %@ and scenes %@", buf, 0x20u);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v15);
    }

    v25 = [PHSceneClassification fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:obj];
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v13[5];
      v28 = v13[6];
      *buf = 138412802;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "fetchPhotosBetweenStartDate, #scenes, startDate, %@, endDate, %@, scenes, %@", buf, 0x20u);
    }

    v29 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    v9 = v35;
    v11 = v33;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = v13[5];
      v31 = v13[6];
      *buf = 138412802;
      v42 = v30;
      v43 = 2112;
      v44 = v31;
      v45 = 2112;
      v46 = v33;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "fetchPhotosBetweenStartDate, #traits, startDate, %@, endDate, %@, traits, %@", buf, 0x20u);
    }

    v10 = v34;
    v12 = v32;
  }

  (*(v13[7] + 16))();
}

- (id)getClassificationInfo:(id)info
{
  infoCopy = info;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#megadome,getClassificationInfo,personLocalIdentifier, %@", buf, 0xCu);
  }

  if (!infoCopy)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#megadome,personLocalIdentifier is nil", buf, 2u);
    }

    v15 = 0;
    goto LABEL_57;
  }

  v6 = [(GDVisualIdentifierView *)self->_visualIdentifierView personForIdentifier:infoCopy];
  v7 = v6;
  if (!v6)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOPhotoManager getClassificationInfo:];
    }

    v15 = 0;
    goto LABEL_56;
  }

  entityIdentifier = [v6 entityIdentifier];
  stringValue = [entityIdentifier stringValue];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = stringValue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#megadome,personLocalIdentifierMD, %@", buf, 0xCu);
  }

  if (!stringValue)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = infoCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#megadome,could not get MD identifier for personLocalIdentifier %@", buf, 0xCu);
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_55;
  }

  v11 = [[GDPersonTaggingOptions alloc] initWithTagThresholds:&off_10036EB58];
  entityTaggingSerice = self->_entityTaggingSerice;
  v41 = 0;
  v13 = [(GDEntityTaggingService *)entityTaggingSerice entityTagsForIdentifier:stringValue options:v11 error:&v41];
  v14 = v41;
  if (v14)
  {
    obj = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager _fetchClassificationForSignificantContacts:];
    }

LABEL_11:
    v15 = 0;
    goto LABEL_54;
  }

  if (!v13)
  {
    obj = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [MOPhotoManager getClassificationInfo:];
    }

    goto LABEL_11;
  }

  v33 = v11;
  v34 = stringValue;
  v35 = infoCopy;
  v32 = v13;
  scoredPersonEntityTags = [v13 scoredPersonEntityTags];
  v15 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = scoredPersonEntityTags;
  v17 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (!v17)
  {
    goto LABEL_51;
  }

  v18 = v17;
  v19 = *v38;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v38 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v37 + 1) + 8 * i);
      v22 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 tag];
        [v21 score];
        *buf = 134218240;
        v43 = v23;
        v44 = 2048;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "#megadome,personTag,%ld,score,%f", buf, 0x16u);
      }

      if ([v21 tag] == 4)
      {
        v25 = 4;
      }

      else if ([v21 tag] == 22)
      {
        v25 = 22;
      }

      else if ([v21 tag] == 21)
      {
        v25 = 21;
      }

      else if ([v21 tag] == 26)
      {
        v25 = 26;
      }

      else if ([v21 tag] == 15)
      {
        v25 = 15;
      }

      else if ([v21 tag] == 3)
      {
        v25 = 3;
      }

      else if ([v21 tag] == 27)
      {
        v25 = 27;
      }

      else if ([v21 tag] == 28)
      {
        v25 = 28;
      }

      else
      {
        if ([v21 tag] != 29)
        {
          continue;
        }

        v25 = 29;
      }

      v26 = [MOPersonRelationship alloc];
      [v21 score];
      v27 = [(MOPersonRelationship *)v26 initWithRelationship:v25 score:&stru_1003416B0 source:?];
      if (v27)
      {
        v28 = v27;
        v29 = [(MOPersonRelationship *)v27 copy];
        [v15 addObject:v29];
      }
    }

    v18 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  }

  while (v18);
LABEL_51:

  v30 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v43 = v15;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "#megadome,classification, %@", buf, 0xCu);
  }

  infoCopy = v35;
  v11 = v33;
  stringValue = v34;
  v13 = v32;
  v14 = 0;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:

  return v15;
}

- (id)getPersonsInAsset:(id)asset
{
  assetCopy = asset;
  v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:assetCopy];
  [v5 setPersonContext:0];
  [v5 setIncludedDetectionTypes:&off_10036E2C8];
  v91 = assetCopy;
  v87 = v5;
  v6 = [PHPerson fetchPersonsInAsset:assetCopy options:v5];
  v89 = +[NSMutableSet set];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v6;
  v98 = [obj countByEnumeratingWithState:&v106 objects:v129 count:16];
  if (v98)
  {
    v97 = *v107;
    selfCopy = self;
    do
    {
      for (i = 0; i != v98; i = i + 1)
      {
        if (*v107 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v106 + 1) + 8 * i);
        if ([v8 type] != -1)
        {
          v99 = i;
          displayName = [v8 displayName];
          name = [v8 name];
          personUri = [v8 personUri];
          v9 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            localIdentifier = [v91 localIdentifier];
            type = [v8 type];
            contactMatchingDictionary = [v8 contactMatchingDictionary];
            v11 = [contactMatchingDictionary description];
            isMe = [v8 isMe];
            faceCount = [v8 faceCount];
            isVerified = [v8 isVerified];
            verifiedType = [v8 verifiedType];
            detectionType = [v8 detectionType];
            localIdentifier2 = [v8 localIdentifier];
            *buf = 138415106;
            v112 = localIdentifier;
            v113 = 2048;
            v114 = type;
            v115 = 2112;
            v116 = v11;
            v117 = 1024;
            *v118 = isMe;
            *&v118[4] = 2112;
            *&v118[6] = name;
            *&v118[14] = 2112;
            *&v118[16] = displayName;
            *&v118[24] = 2112;
            *&v118[26] = personUri;
            v119 = 2048;
            v120 = faceCount;
            v121 = 1024;
            v122 = isVerified;
            self = selfCopy;
            v123 = 2048;
            v124 = verifiedType;
            v125 = 1024;
            v126 = detectionType;
            v127 = 2112;
            v128 = localIdentifier2;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asset : %@, type : %ld, contactMatchingDictionary : %@, isMe : %d, name : %@, displayName : %@, personURI : %@, faceCount : %ld, verified : %d, verifiedType : %ld, detectionType : %hd, localIdentifier : %@", buf, 0x6Eu);
          }

          isMe2 = [v8 isMe];
          if (isMe2)
          {
            v19 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              localIdentifier3 = [v8 localIdentifier];
              *buf = 138412290;
              v112 = localIdentifier3;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "got current person as me person from Photos, localIdentifier : %@", buf, 0xCu);
            }
          }

          mePerson = [(MOPhotoManager *)self mePerson];

          if (mePerson)
          {
            v22 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              mePerson2 = [(MOPhotoManager *)self mePerson];
              localIdentifier4 = [mePerson2 localIdentifier];
              *buf = 138412290;
              v112 = localIdentifier4;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "got me person from Photo person localIdentifier :  %@", buf, 0xCu);
            }

            localIdentifier5 = [v8 localIdentifier];
            mePerson3 = [(MOPhotoManager *)self mePerson];
            localIdentifier6 = [mePerson3 localIdentifier];

            if (localIdentifier5 == localIdentifier6)
            {
              v28 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Current person matched with the me Person", buf, 2u);
              }

              isMe2 = 1;
            }
          }

          suggestedMePersonIdentifier = [(MOPhotoManager *)self suggestedMePersonIdentifier];

          if (suggestedMePersonIdentifier)
          {
            v30 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              suggestedMePersonIdentifier2 = [(MOPhotoManager *)self suggestedMePersonIdentifier];
              *buf = 138412290;
              v112 = suggestedMePersonIdentifier2;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "got inferred me person from Photos, localIdentifier : %@", buf, 0xCu);
            }

            suggestedMePersonIdentifier3 = [(MOPhotoManager *)self suggestedMePersonIdentifier];
            localIdentifier7 = [v8 localIdentifier];
            v34 = [suggestedMePersonIdentifier3 isEqualToString:localIdentifier7];

            if (v34)
            {
              v35 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Current PHPerson matched as the inferred Me Person, setting it as mePerson", buf, 2u);
              }

              isMe2 = 1;
            }
          }

          localIdentifier8 = [v8 localIdentifier];
          v37 = [(MOPhotoManager *)self getClassificationInfo:localIdentifier8];

          v38 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v112 = v37;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "people relationships : %@", buf, 0xCu);
          }

          v39 = displayName;
          if ([displayName length])
          {
            givenName2 = displayName;
            if (!givenName2)
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (![personUri length])
            {
              goto LABEL_55;
            }

            v94 = isMe2;
            v110[0] = CNContactGivenNameKey;
            v110[1] = CNContactFamilyNameKey;
            v51 = [NSArray arrayWithObjects:v110 count:2];
            contactStore = self->_contactStore;
            v105 = 0;
            v53 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:personUri keysToFetch:v51 error:&v105];
            v54 = v105;
            v55 = v54;
            v96 = v53;
            if (v53)
            {
              v88 = v54;
              givenName = [v53 givenName];
              v57 = givenName;
              if (givenName)
              {
                v58 = givenName;
              }

              else
              {
                v58 = &stru_1003416B0;
              }

              familyName = [v53 familyName];
              v60 = familyName;
              if (familyName)
              {
                v61 = familyName;
              }

              else
              {
                v61 = &stru_1003416B0;
              }

              v62 = [NSString stringWithFormat:@"%@ %@", v58, v61];

              v63 = +[NSCharacterSet whitespaceCharacterSet];
              v64 = [v62 stringByTrimmingCharactersInSet:v63];

              if ([v64 length])
              {
                givenName2 = [v53 givenName];
              }

              else
              {
                givenName2 = 0;
              }

              v68 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
              v39 = displayName;
              v55 = v88;
              isMe2 = v94;
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v112 = v64;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Fetched contact full name : %@", buf, 0xCu);
              }
            }

            else
            {
              v65 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
              v64 = v65;
              if (v55)
              {
                isMe2 = v94;
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  [v55 description];
                  v67 = v66 = v55;
                  *buf = 138412546;
                  v112 = personUri;
                  v113 = 2112;
                  v114 = v67;
                  _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to fetch contact:%@ error: %@", buf, 0x16u);

                  v55 = v66;
                }
              }

              else
              {
                isMe2 = v94;
                if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v112 = personUri;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "No contact found for URI : %@", buf, 0xCu);
                }
              }

              givenName2 = 0;
            }

            if (!givenName2)
            {
LABEL_55:
              if ([name length])
              {
                v69 = +[NSCharacterSet whitespaceCharacterSet];
                v70 = [name stringByTrimmingCharactersInSet:v69];

                v71 = [v70 componentsSeparatedByString:@" "];
                givenName2 = [v71 firstObject];

                v72 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
                if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v112 = givenName2;
                  _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Using fallback resolved name from person.name: %@", buf, 0xCu);
                }
              }

              else
              {
                givenName2 = 0;
              }
            }
          }

          if ([givenName2 length])
          {
            v73 = [MOPerson alloc];
            localIdentifier9 = [v8 localIdentifier];
            if ([personUri length])
            {
              v75 = personUri;
            }

            else
            {
              v75 = 0;
            }

            type2 = [v8 type];
            suggestedMePersonIdentifier4 = [(MOPhotoManager *)self suggestedMePersonIdentifier];
            if (((suggestedMePersonIdentifier4 == 0) & ~isMe2) != 0)
            {
              v79 = type2 == 1;
              mePerson4 = [(MOPhotoManager *)self mePerson];
              LOBYTE(v86) = mePerson4 != 0;
              v78 = [(MOPerson *)v73 initWithLocalIdentifier:localIdentifier9 name:givenName2 contactIdentifier:v75 family:0 isPHPersonTypeImportant:v79 isMePerson:0 mePersonIdentified:0.0 personRelationships:0.0 priorityScore:v86 significanceScore:v37];
            }

            else
            {
              LOBYTE(v86) = 1;
              v78 = [(MOPerson *)v73 initWithLocalIdentifier:localIdentifier9 name:givenName2 contactIdentifier:v75 family:0 isPHPersonTypeImportant:type2 == 1 isMePerson:isMe2 mePersonIdentified:0.0 personRelationships:0.0 priorityScore:v86 significanceScore:v37];
            }

            [(MOPerson *)v78 setSourceEventAccessType:4];
            [v89 addObject:v78];
          }

          i = v99;
          goto LABEL_69;
        }

        v39 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          [v91 localIdentifier];
          v104 = v100 = i;
          type3 = [v8 type];
          contactMatchingDictionary2 = [v8 contactMatchingDictionary];
          v43 = [contactMatchingDictionary2 description];
          displayName2 = [v8 displayName];
          personUri2 = [v8 personUri];
          faceCount2 = [v8 faceCount];
          v47 = v39;
          isVerified2 = [v8 isVerified];
          verifiedType2 = [v8 verifiedType];
          detectionType2 = [v8 detectionType];
          *buf = 138414338;
          v112 = v104;
          v113 = 2048;
          v114 = type3;
          v115 = 2112;
          v116 = v43;
          v117 = 2112;
          *v118 = displayName2;
          *&v118[8] = 2112;
          *&v118[10] = personUri2;
          *&v118[18] = 2048;
          *&v118[20] = faceCount2;
          *&v118[28] = 1024;
          *&v118[30] = isVerified2;
          v39 = v47;
          v119 = 2048;
          v120 = verifiedType2;
          self = selfCopy;
          v121 = 1024;
          v122 = detectionType2;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Asset : %@, skipping as type : %ld, contactMatchingDictionary : %@, displayName : %@, personURI : %@, faceCount : %ld, verified : %d, verifiedType : %ld, detectionType : %hd", buf, 0x54u);

          i = v100;
        }

LABEL_69:
      }

      v98 = [obj countByEnumeratingWithState:&v106 objects:v129 count:16];
    }

    while (v98);
  }

  v81 = [v89 count];
  v82 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v83 = os_log_type_enabled(v82, OS_LOG_TYPE_INFO);
  if (v81)
  {
    if (v83)
    {
      allObjects = [v89 allObjects];
      *buf = 138412290;
      v112 = allObjects;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "people names from current asset : %@ ", buf, 0xCu);
    }
  }

  else if (v83)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "got no people from current asset", buf, 2u);
  }

  return v89;
}

- (void)_fetchCuratedPhotosFromHighlights:(id)highlights StartDate:(id)date EndDate:(id)endDate BundleInterfaceType:(unint64_t)type Locations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory handler:(id)handler
{
  mandatoryCopy = mandatory;
  highlightsCopy = highlights;
  dateCopy = date;
  endDateCopy = endDate;
  locationsCopy = locations;
  handlerCopy = handler;
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = dateCopy;
    *&buf[12] = 2112;
    *&buf[14] = endDateCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#photoscuration, fetchCuratedPhotosFromHighlights, startDate, %@, endDate, %@", buf, 0x16u);
  }

  v81 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = highlightsCopy;
  v73 = [obj countByEnumeratingWithState:&v105 objects:v120 count:16];
  if (v73)
  {
    v72 = *v106;
    v71 = PHAssetPropertySetSceneAnalysis;
    v70 = PHAssetPropertySetMediaAnalysis;
    v69 = PHAssetPropertySetAesthetic;
    v68 = PHAssetPropertySetSceneprint;
    v67 = PHAssetPropertySetUserActivity;
    do
    {
      v16 = 0;
      do
      {
        if (*v106 != v72)
        {
          v17 = v16;
          objc_enumerationMutation(obj);
          v16 = v17;
        }

        v75 = v16;
        v18 = *(*(&v105 + 1) + 8 * v16);
        photoLibrary = [(MOPhotoManager *)self photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        [librarySpecificFetchOptions setIncludeGuestAssets:1];
        v119[0] = v71;
        v119[1] = v70;
        v119[2] = v69;
        v119[3] = v68;
        v119[4] = v67;
        v20 = [NSArray arrayWithObjects:v119 count:5];
        [librarySpecificFetchOptions setFetchPropertySets:v20];

        [librarySpecificFetchOptions setShouldPrefetchCount:1];
        [librarySpecificFetchOptions setHighlightCurationType:1];
        v104 = 0;
        v77 = [PHAsset fetchSummaryCurationForHighlight:v18 fetchOptions:librarySpecificFetchOptions allowsOnDemand:1 error:&v104];
        v76 = v104;
        fetchError = [v77 fetchError];
        v22 = (fetchError | v76) != 0;

        if (v22)
        {
          v23 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            localIdentifier = [v18 localIdentifier];
            fetchError2 = [v77 fetchError];
            *buf = 138412546;
            *&buf[4] = localIdentifier;
            *&buf[12] = 2112;
            *&buf[14] = fetchError2;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#photoscuration, fetching curated assets for highlight, %@, hit error, %@", buf, 0x16u);
          }
        }

        else
        {
          v26 = [v77 count] == 0;
          v23 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          v27 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
          if (v26)
          {
            if (v27)
            {
              localIdentifier2 = [v18 localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier2;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "#photoscuration, fetching curated assets for highlight, %@, asset count is 0", buf, 0xCu);
            }
          }

          else
          {
            if (v27)
            {
              localIdentifier3 = [v18 localIdentifier];
              v29 = [v77 count];
              *buf = 138412546;
              *&buf[4] = localIdentifier3;
              *&buf[12] = 2048;
              *&buf[14] = v29;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "#photoscuration, fetching curated assets successful for highlight, %@, asset count, %lu", buf, 0x16u);
            }

            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v23 = v77;
            v30 = [v23 countByEnumeratingWithState:&v100 objects:v118 count:16];
            if (v30)
            {
              v31 = *v101;
              do
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v101 != v31)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v33 = *(*(&v100 + 1) + 8 * i);
                  [v33 fetchPropertySetsIfNeeded];
                  creationDate = [v33 creationDate];
                  v35 = [creationDate betweenDate:dateCopy andDate:endDateCopy];

                  if (v35)
                  {
                    [v81 addObject:v33];
                    v36 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                    {
                      localIdentifier4 = [v33 localIdentifier];
                      creationDate2 = [v33 creationDate];
                      *buf = 138412546;
                      *&buf[4] = localIdentifier4;
                      *&buf[12] = 2112;
                      *&buf[14] = creationDate2;
                      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "#photoscuration, fetched asset within timerange identifier, %@, creationDate, %@", buf, 0x16u);
                    }
                  }
                }

                v30 = [v23 countByEnumeratingWithState:&v100 objects:v118 count:16];
              }

              while (v30);
            }
          }
        }

        v16 = v75 + 1;
      }

      while ((v75 + 1) != v73);
      v73 = [obj countByEnumeratingWithState:&v105 objects:v120 count:16];
    }

    while (v73);
  }

  if ([v81 count])
  {
    configurationManager = [(MOPhotoManager *)self configurationManager];
    v41 = configurationManager;
    if (type == 7)
    {
      [configurationManager getDoubleSettingForKey:@"Photos_DistanceFromHomeThreshold" withFallback:75.0];
    }

    else
    {
      [configurationManager getDoubleSettingForKey:@"Photos_DistanceFromDefaultThreshold" withFallback:200.0];
    }

    v78 = [(MOPhotoManager *)self _getPhotosByAssetProperties:v81 UserLocations:locationsCopy IsLocationCheckMandatory:mandatoryCopy MinDistance:?];

    v44 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = [v78 count];
      *buf = 134217984;
      *&buf[4] = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "#photoscuration, total filtered photos count, %lu", buf, 0xCu);
    }

    v46 = objc_opt_new();
    v80 = objc_opt_new();
    if ([v78 count])
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v47 = v78;
      v48 = [v47 countByEnumeratingWithState:&v96 objects:v115 count:16];
      if (v48)
      {
        v49 = *v97;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v97 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = *(*(&v96 + 1) + 8 * j);
            if ([(MOPhotoManager *)self _doesAssetHaveSceneProcessing:v51]|| [(MOPhotoManager *)self _doesAssetHaveFaceProcessing:v51])
            {
              [v46 addObject:v51];
            }

            else
            {
              [v80 addObject:v51];
              v52 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                uuid = [v51 uuid];
                *buf = 138412290;
                *&buf[4] = uuid;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "#photoscuration, asset has not completed scene or face processing yet, %@", buf, 0xCu);
              }
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v96 objects:v115 count:16];
        }

        while (v48);
      }
    }

    v54 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = [v80 count];
      *buf = 134217984;
      *&buf[4] = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "#photoscuration, total photos which need to request MAD process count, %lu", buf, 0xCu);
    }

    v56 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = [v46 count];
      *buf = 134217984;
      *&buf[4] = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "#photoscuration, total final assets for bundling count, %lu", buf, 0xCu);
    }

    [(MOPhotoManager *)self _scheduleMediaAnalysisDeferredProcessing:v80];
    if ([v46 count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v110 = __Block_byref_object_copy__39;
      v111 = __Block_byref_object_dispose__39;
      v112 = objc_opt_new();
      v90 = 0;
      v91 = &v90;
      v92 = 0x3032000000;
      v93 = __Block_byref_object_copy__39;
      v94 = __Block_byref_object_dispose__39;
      v95 = objc_opt_new();
      v84 = 0;
      v85 = &v84;
      v86 = 0x3032000000;
      v87 = __Block_byref_object_copy__39;
      v88 = __Block_byref_object_dispose__39;
      v89 = objc_opt_new();
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = __133__MOPhotoManager__fetchCuratedPhotosFromHighlights_StartDate_EndDate_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke;
      v83[3] = &unk_10033F328;
      v83[4] = buf;
      v83[5] = &v90;
      [(MOPhotoManager *)self _buildCuratedAssetMap:v46 handler:v83];
      v58 = v91[5];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = __133__MOPhotoManager__fetchCuratedPhotosFromHighlights_StartDate_EndDate_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke_2;
      v82[3] = &unk_100337E98;
      v82[4] = &v84;
      [(MOPhotoManager *)self _fetchPhotosTraitsFromAssets:v58 StartDate:dateCopy EndDate:endDateCopy handler:v82];
      (*(handlerCopy + 2))(handlerCopy, *(*&buf[8] + 40), v91[5], v85[5], 0);
      _Block_object_dispose(&v84, 8);

      _Block_object_dispose(&v90, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v113 = NSLocalizedDescriptionKey;
      v114 = @"#photoscuration, no curated filtered assets available";
      v59 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v60 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v59];

      v61 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = dateCopy;
        *&buf[12] = 2112;
        *&buf[14] = endDateCopy;
        *&buf[22] = 2112;
        v110 = v60;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "#photoscuration, fetchCuratedPhotosFromHighlights, start date, %@, end date, %@, error, %@", buf, 0x20u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v60);
    }
  }

  else
  {
    v116 = NSLocalizedDescriptionKey;
    v117 = @"#photoscuration, no curated highlights assets fetched from photos";
    v42 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v78 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v42];

    v43 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = dateCopy;
      *&buf[12] = 2112;
      *&buf[14] = endDateCopy;
      *&buf[22] = 2112;
      v110 = v78;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "#photoscuration, fetchCuratedPhotosFromHighlights, start date, %@, end date, %@, error, %@", buf, 0x20u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v78);
  }
}

void __133__MOPhotoManager__fetchCuratedPhotosFromHighlights_StartDate_EndDate_BundleInterfaceType_Locations_IsLocationCheckMandatory_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)getTraitsOverrideArray
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__MOPhotoManager_getTraitsOverrideArray__block_invoke;
  block[3] = &unk_100335F40;
  block[4] = selfCopy;
  if (getTraitsOverrideArray_onceToken != -1)
  {
    dispatch_once(&getTraitsOverrideArray_onceToken, block);
  }

  v3 = getTraitsOverrideArray_traitsOverrideArray;
  objc_sync_exit(selfCopy);

  return v3;
}

void __40__MOPhotoManager_getTraitsOverrideArray__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultsManager];
  obj = [v1 objectForKey:@"PhotoTraitsOverrideAdditionalTraitsArray"];

  if (obj)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&getTraitsOverrideArray_traitsOverrideArray, obj);
    }
  }
}

- (void)_fetchPhotosTraitsFromAssets:(id)assets StartDate:(id)date EndDate:(id)endDate handler:(id)handler
{
  assetsCopy = assets;
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v70 = dateCopy;
    v71 = 2112;
    v72 = endDateCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#traits, fetchPhotosTraitsFromAssets, startDate, %@, endDate, %@", buf, 0x16u);
  }

  v14 = objc_opt_new();
  if ([assetsCopy count])
  {
    v48 = handlerCopy;
    v49 = endDateCopy;
    v50 = dateCopy;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v47 = assetsCopy;
    v15 = assetsCopy;
    v16 = [v15 countByEnumeratingWithState:&v63 objects:v77 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v64;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v63 + 1) + 8 * i);
          uuid = [v20 uuid];
          [v14 addObject:uuid];

          v22 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            uuid2 = [v20 uuid];
            *buf = 138412290;
            v70 = uuid2;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "#traits, fetchPhotosTraitsFromAssets, asset uuid, %@", buf, 0xCu);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v63 objects:v77 count:16];
      }

      while (v17);
    }

    photoLibrary = self->_photoLibrary;
    v62 = 0;
    v25 = [(PHPhotoLibrary *)photoLibrary requestPersonalTraitsForAssetsWithUUIDs:v14 error:&v62];
    v26 = v62;
    if (v26)
    {
      v75 = NSLocalizedDescriptionKey;
      v76 = @"#traits, no traits";
      v27 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v28 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v27];

      v29 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      endDateCopy = v49;
      dateCopy = v50;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v70 = v50;
        v71 = 2112;
        v72 = v49;
        v73 = 2112;
        v74 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "#traits, fetchPhotosTraitsFromAssets, start date, %@, end date, %@, error, %@", buf, 0x20u);
      }

      handlerCopy[2](handlerCopy, 0, v26);
      assetsCopy = v47;
      goto LABEL_48;
    }

    v31 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    endDateCopy = v49;
    dateCopy = v50;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v70 = v50;
      v71 = 2112;
      v72 = v49;
      v73 = 2112;
      v74 = v25;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "#traits, fetchPhotosTraitsFromAssets, startDate, %@, endDate, %@, traits, %@", buf, 0x20u);
    }

    getTraitsOverrideArray = [(MOPhotoManager *)self getTraitsOverrideArray];
    obj = getTraitsOverrideArray;
    if (getTraitsOverrideArray)
    {
      v52 = v25;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v33 = [getTraitsOverrideArray countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = 0;
        v36 = *v59;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v59 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v58 + 1) + 8 * j);
            if (v38)
            {
              v39 = [v38 objectForKey:kPHGraphPersonalTraitRelevantAssetUUIDs];
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v40 = [v39 countByEnumeratingWithState:&v54 objects:v67 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v55;
                do
                {
                  for (k = 0; k != v41; k = k + 1)
                  {
                    if (*v55 != v42)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v35 |= [v14 containsObject:*(*(&v54 + 1) + 8 * k)];
                  }

                  v41 = [v39 countByEnumeratingWithState:&v54 objects:v67 count:16];
                }

                while (v41);
              }
            }
          }

          v34 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v34);
        endDateCopy = v49;
        dateCopy = v50;
        handlerCopy = v48;
        if (v35)
        {
          v44 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          v26 = 0;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v70 = v50;
            v71 = 2112;
            v72 = v49;
            v73 = 2112;
            v74 = obj;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "#traits, fetchPhotosTraitsFromAssets, startDate, %@, endDate, %@, final traits (override), %@", buf, 0x20u);
          }

          v45 = [obj copy];
          assetsCopy = v47;
          v25 = v52;
          goto LABEL_47;
        }
      }

      v46 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      v25 = v52;
      v26 = 0;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v70 = dateCopy;
        v71 = 2112;
        v72 = endDateCopy;
        v73 = 2112;
        v74 = v52;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "#traits, fetchPhotosTraitsFromAssets, startDate, %@, endDate, %@, final traits (no override), %@", buf, 0x20u);
      }
    }

    v45 = [v25 copy];
    assetsCopy = v47;
LABEL_47:
    (handlerCopy)[2](handlerCopy, v45, 0);

    v28 = obj;
LABEL_48:

    goto LABEL_49;
  }

  v30 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "#traits, fetchPhotosTraitsFromAssets early exit because asset count is zero", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 0, 0);
LABEL_49:
}

- (void)_fetchUnprocessedPhotosBetweenStartDate:(id)date EndDate:(id)endDate Locations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory handler:(id)handler
{
  mandatoryCopy = mandatory;
  dateCopy = date;
  endDateCopy = endDate;
  locationsCopy = locations;
  handlerCopy = handler;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = dateCopy;
    *&buf[12] = 2112;
    *&buf[14] = endDateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#customcuration,fetchUnprocessedPhotosBetweenStartDate,startDate,%@, endDate,%@", buf, 0x16u);
  }

  photoLibrary = [(MOPhotoManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v113[0] = PHAssetPropertySetSceneAnalysis;
  v113[1] = PHAssetPropertySetMediaAnalysis;
  v113[2] = PHAssetPropertySetAesthetic;
  v113[3] = PHAssetPropertySetSceneprint;
  v13 = [NSArray arrayWithObjects:v113 count:4];
  [librarySpecificFetchOptions setFetchPropertySets:v13];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  endDateCopy = [NSPredicate predicateWithFormat:@"%K >= %@ && %K <= %@", @"creationDate", dateCopy, @"creationDate", endDateCopy];
  [librarySpecificFetchOptions setPredicate:endDateCopy];

  v84 = [PHAsset fetchAssetsWithOptions:librarySpecificFetchOptions];
  fetchError = [v84 fetchError];

  v16 = fetchError == 0;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v18 = v17;
  if (!v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      fetchError2 = [v84 fetchError];
      *buf = 138412802;
      *&buf[4] = dateCopy;
      *&buf[12] = 2112;
      *&buf[14] = endDateCopy;
      *&buf[22] = 2112;
      v104 = fetchError2;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#customcuration,fetchUnprocessedPhotosBetweenStartDate, start date, %@, end date, %@, fetching assets hit error, %@", buf, 0x20u);
    }

    fetchError3 = [v84 fetchError];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, fetchError3);
    goto LABEL_77;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = [v84 count];
    *buf = 134217984;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#customcuration,fetchUnprocessedPhotosBetweenStartDate,count %lu", buf, 0xCu);
  }

  if ([v84 count])
  {
    fetchError3 = objc_opt_new();
    v85 = objc_opt_new();
    v80 = objc_opt_new();
    v77 = objc_opt_new();
    v76 = objc_opt_new();
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v20 = v84;
    v21 = [v20 countByEnumeratingWithState:&v99 objects:v110 count:16];
    if (!v21)
    {
      goto LABEL_37;
    }

    v22 = *v100;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v100 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v99 + 1) + 8 * v23);
        [v24 fetchPropertySetsIfNeeded];
        if (([v24 mediaSubtypes] & 4) == 0 && (objc_msgSend(v24, "mediaSubtypes") & 0x80000) == 0 && (objc_msgSend(v24, "mediaSubtypes") & 0x20000) == 0 && objc_msgSend(v24, "mediaType") != 3)
        {
          importProperties = [v24 importProperties];
          if ([importProperties importedBy] == 2)
          {
            goto LABEL_24;
          }

          importProperties2 = [v24 importProperties];
          if ([importProperties2 importedBy] == 1)
          {
            goto LABEL_23;
          }

          importProperties3 = [v24 importProperties];
          if ([importProperties3 importedBy] == 8)
          {

LABEL_23:
LABEL_24:
          }

          else
          {
            importProperties4 = [v24 importProperties];
            v79 = [importProperties4 importedBy] == 12;

            if (!v79)
            {
              goto LABEL_32;
            }
          }

          isFavorite = [v24 isFavorite];
          v29 = fetchError3;
          if ((isFavorite & 1) == 0)
          {
            assetUserActivityProperties = [v24 assetUserActivityProperties];
            v31 = [assetUserActivityProperties shareCount] > 0;

            v29 = v85;
            if (!v31)
            {
              assetUserActivityProperties2 = [v24 assetUserActivityProperties];
              v33 = [assetUserActivityProperties2 viewCount] > 2;

              v29 = v80;
              if (!v33)
              {
                mediaAnalysisProperties = [v24 mediaAnalysisProperties];
                v35 = [mediaAnalysisProperties faceCount] == 0;

                if (v35)
                {
                  v29 = v76;
                }

                else
                {
                  v29 = v77;
                }
              }
            }
          }

          [v29 addObject:v24];
        }

LABEL_32:
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v37 = [v20 countByEnumeratingWithState:&v99 objects:v110 count:16];
      v21 = v37;
      if (!v37)
      {
LABEL_37:

        v38 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [fetchError3 count];
          *buf = 134217984;
          *&buf[4] = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "#customcuration,fetched %lu favorite photo", buf, 0xCu);
        }

        v40 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = [v85 count];
          *buf = 134217984;
          *&buf[4] = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "#customcuration,fetched %lu shared photo", buf, 0xCu);
        }

        v42 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = [v80 count];
          *buf = 134217984;
          *&buf[4] = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "#customcuration,fetched %lu viewed photo", buf, 0xCu);
        }

        v44 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = [v77 count];
          *buf = 134217984;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "#customcuration,fetched %lu people photo", buf, 0xCu);
        }

        v46 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = [v76 count];
          *buf = 134217984;
          *&buf[4] = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "#customcuration,fetched %lu sortedRest photo", buf, 0xCu);
        }

        v48 = objc_opt_new();
        [v48 addObjectsFromArray:fetchError3];
        [v48 addObjectsFromArray:v85];
        [v48 addObjectsFromArray:v80];
        [v48 addObjectsFromArray:v77];
        [v48 addObjectsFromArray:v76];
        v49 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [v48 count];
          *buf = 134217984;
          *&buf[4] = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "#customcuration,total asset count before location filtering,%lu", buf, 0xCu);
        }

        v51 = [(MOPhotoManager *)self _getPhotosByAssetProperties:v48 UserLocations:locationsCopy IsLocationCheckMandatory:mandatoryCopy MinDistance:200.0];
        v52 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [v51 count];
          *buf = 134217984;
          *&buf[4] = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "#customcuration,total filtered photos count,%lu", buf, 0xCu);
        }

        v54 = objc_opt_new();
        v55 = objc_opt_new();
        if ([v51 count])
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v56 = v51;
          v57 = [v56 countByEnumeratingWithState:&v95 objects:v109 count:16];
          if (v57)
          {
            v58 = *v96;
            do
            {
              for (i = 0; i != v57; i = i + 1)
              {
                if (*v96 != v58)
                {
                  objc_enumerationMutation(v56);
                }

                v60 = *(*(&v95 + 1) + 8 * i);
                v61 = [(MOPhotoManager *)self _doesAssetHaveSceneProcessing:v60];
                v62 = v54;
                if ((v61 & 1) == 0)
                {
                  if ([(MOPhotoManager *)self _doesAssetHaveFaceProcessing:v60])
                  {
                    v62 = v54;
                  }

                  else
                  {
                    v62 = v55;
                  }
                }

                [v62 addObject:v60];
              }

              v57 = [v56 countByEnumeratingWithState:&v95 objects:v109 count:16];
            }

            while (v57);
          }
        }

        v63 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = [v55 count];
          *buf = 134217984;
          *&buf[4] = v64;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "#customcuration,total photos which need to request process count,%lu", buf, 0xCu);
        }

        v65 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v66 = [v54 count];
          *buf = 134217984;
          *&buf[4] = v66;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "#customcuration,total final assets for bundling count,%lu", buf, 0xCu);
        }

        [(MOPhotoManager *)self _scheduleMediaAnalysisDeferredProcessing:v55];
        if ([v54 count])
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v104 = __Block_byref_object_copy__39;
          v105 = __Block_byref_object_dispose__39;
          v106 = objc_opt_new();
          v89 = 0;
          v90 = &v89;
          v91 = 0x3032000000;
          v92 = __Block_byref_object_copy__39;
          v93 = __Block_byref_object_dispose__39;
          v94 = objc_opt_new();
          v88[0] = _NSConcreteStackBlock;
          v88[1] = 3221225472;
          v88[2] = __109__MOPhotoManager__fetchUnprocessedPhotosBetweenStartDate_EndDate_Locations_IsLocationCheckMandatory_handler___block_invoke;
          v88[3] = &unk_10033F328;
          v88[4] = buf;
          v88[5] = &v89;
          [(MOPhotoManager *)self _buildCuratedAssetMap:v54 handler:v88];
          v67 = [*(*&buf[8] + 40) copy];
          v68 = [v90[5] copy];
          (*(handlerCopy + 2))(handlerCopy, v67, v68, 0);

          _Block_object_dispose(&v89, 8);
          _Block_object_dispose(buf, 8);
        }

        else
        {
          v107 = NSLocalizedDescriptionKey;
          v108 = @"#customcuration,no filtered curated photos inside the time range";
          v71 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          v72 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v71];

          v73 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            *&buf[4] = dateCopy;
            *&buf[12] = 2112;
            *&buf[14] = endDateCopy;
            *&buf[22] = 2112;
            v104 = v72;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "#customcuration,no photo assets to bundle after filtering, start date, %@, end date, %@, error, %@", buf, 0x20u);
          }

          (*(handlerCopy + 2))(handlerCopy, 0, 0, v72);
        }

        goto LABEL_77;
      }
    }
  }

  v111 = NSLocalizedDescriptionKey;
  v112 = @"#customcuration,no unprocessed photos inside the time range";
  v69 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
  fetchError3 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v69];

  v70 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = dateCopy;
    *&buf[12] = 2112;
    *&buf[14] = endDateCopy;
    *&buf[22] = 2112;
    v104 = fetchError3;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "#customcuration,fetchUnprocessedPhotosBetweenStartDate, start date, %@, end date, %@, error, %@", buf, 0x20u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, fetchError3);
LABEL_77:
}

void __109__MOPhotoManager__fetchUnprocessedPhotosBetweenStartDate_EndDate_Locations_IsLocationCheckMandatory_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)_buildCuratedAssetMap:(id)map handler:(id)handler
{
  mapCopy = map;
  handlerCopy = handler;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#assetscore, buildCuratedAssetMap", buf, 2u);
  }

  v82 = objc_alloc_init(NSMutableDictionary);
  v84 = objc_alloc_init(NSMutableArray);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = mapCopy;
  v7 = [obj countByEnumeratingWithState:&v104 objects:v118 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v105;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v105 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v104 + 1) + 8 * i);
        v12 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          uuid = [v11 uuid];
          [v11 curationScore];
          *buf = 138412546;
          v111 = uuid;
          v112 = 2048;
          v113 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#assetscore, asset, %@, score, %f", buf, 0x16u);
        }

        [v11 curationScore];
        if (v15 <= 2.22044605e-16)
        {
          uuid2 = [v11 uuid];
          [v84 addObject:uuid2];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v104 objects:v118 count:16];
    }

    while (v8);
  }

  v17 = objc_alloc_init(NSDictionary);
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v84 count];
    *buf = 134217984;
    v111 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#assetscore, assetUUID count, %lu", buf, 0xCu);
  }

  v20 = [v84 count];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#assetscore, assetUUIDs to request on demand score", buf, 2u);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v23 = v84;
    v24 = [v23 countByEnumeratingWithState:&v100 objects:v117 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v101;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v101 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v100 + 1) + 8 * j);
          v29 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v111 = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "#assetscore, assetUUID, %@", buf, 0xCu);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v100 objects:v117 count:16];
      }

      while (v25);
    }

    photoAnalysisClient = [(PHPhotoLibrary *)self->_photoLibrary photoAnalysisClient];
    v99 = 0;
    v31 = [photoAnalysisClient requestCurationScoreByAssetUUIDForAssetUUIDs:v23 error:&v99];
    v32 = v99;

    v33 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    v21 = v33;
    if (v32)
    {
      v34 = v82;
      v78 = v32;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager _buildCuratedAssetMap:handler:];
      }
    }

    else
    {
      v34 = v82;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#assetscore, requestCurationScoreByAssetUUIDForAssetUUIDs, successful", buf, 2u);
      }

      v78 = 0;
    }
  }

  else
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#assetscore, no need to invoke requestCurationScoreByAssetUUIDForAssetUUIDs SPI", buf, 2u);
    }

    v78 = 0;
    v31 = v17;
    v34 = v82;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obja = obj;
  v35 = [obja countByEnumeratingWithState:&v95 objects:v116 count:16];
  v83 = v31;
  if (v35)
  {
    v36 = v35;
    v37 = *v96;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v96 != v37)
        {
          objc_enumerationMutation(obja);
        }

        v39 = *(*(&v95 + 1) + 8 * k);
        [v39 curationScore];
        if (v40 <= 2.22044605e-16)
        {
          if (v31)
          {
            uuid3 = [v39 uuid];
            v42 = [v31 objectForKeyedSubscript:uuid3];

            v47 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
            v48 = v47;
            if (v42)
            {
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                uuid4 = [v39 uuid];
                localIdentifier = [v39 localIdentifier];
                [v42 floatValue];
                *buf = 138412802;
                v111 = uuid4;
                v112 = 2112;
                v113 = localIdentifier;
                v114 = 2048;
                v115 = v51;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "#assetscore, onDemandCurationScore for asset with uuid %@ and localIdentifier %@ is %f", buf, 0x20u);

                v31 = v83;
              }

              [v34 setObject:v42 forKey:v39];
            }

            else
            {
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                uuid5 = [v39 uuid];
                localIdentifier2 = [v39 localIdentifier];
                *buf = 138412546;
                v111 = uuid5;
                v112 = 2112;
                v113 = localIdentifier2;
                _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#assetscore, buildCuratedAssetMap, invalid score recieved for asset with uuid %@ and localIdentifier %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v42 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "#assetscore, curationScoreByAssetUUID is nil", buf, 2u);
            }
          }
        }

        else
        {
          [v39 curationScore];
          v41 = [NSNumber numberWithDouble:?];
          [v34 setObject:v41 forKey:v39];

          v42 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            uuid6 = [v39 uuid];
            localIdentifier3 = [v39 localIdentifier];
            [v39 curationScore];
            *buf = 138412802;
            v111 = uuid6;
            v112 = 2112;
            v113 = localIdentifier3;
            v114 = 2048;
            v115 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "#assetscore, persistedCurationScore for asset with uuid %@ and localIdentifier %@ is %f", buf, 0x20u);
          }
        }
      }

      v36 = [obja countByEnumeratingWithState:&v95 objects:v116 count:16];
    }

    while (v36);
  }

  v54 = [v34 keysSortedByValueUsingComparator:&__block_literal_global_55];
  v55 = [v54 count];
  if (v55 >= 0xD)
  {
    v56 = 13;
  }

  else
  {
    v56 = v55;
  }

  v81 = v54;
  v77 = [v54 subarrayWithRange:{0, v56}];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v57 = v34;
  v58 = [v57 countByEnumeratingWithState:&v91 objects:v109 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v92;
    do
    {
      for (m = 0; m != v59; m = m + 1)
      {
        if (*v92 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v91 + 1) + 8 * m);
        v63 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          localIdentifier4 = [v62 localIdentifier];
          v65 = [v57 objectForKey:v62];
          *buf = 138412546;
          v111 = localIdentifier4;
          v112 = 2112;
          v113 = v65;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "#assetscore, buildCuratedAssetMap, assetsInfo, asset.localIdentifier=%@ score=%@", buf, 0x16u);
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v91 objects:v109 count:16];
    }

    while (v59);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v66 = v77;
  v67 = [v66 countByEnumeratingWithState:&v87 objects:v108 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v88;
    do
    {
      for (n = 0; n != v68; n = n + 1)
      {
        if (*v88 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v87 + 1) + 8 * n);
        v72 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          localIdentifier5 = [v71 localIdentifier];
          uuid7 = [v71 uuid];
          *buf = 138412546;
          v111 = localIdentifier5;
          v112 = 2112;
          v113 = uuid7;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "#assetscore, buildCuratedAssetMap, sortedKeysSubArray, asset.localIdentifier=%@, asset.uuid=%@", buf, 0x16u);
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v87 objects:v108 count:16];
    }

    while (v68);
  }

  v75 = [v57 copy];
  v76 = [v66 copy];
  handlerCopy[2](handlerCopy, v75, v76);
}

- (void)_scheduleMediaAnalysisDeferredProcessing:(id)processing
{
  processingCopy = processing;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v8 = processingCopy;
  v9 = [v8 countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v85;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v85 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v84 + 1) + 8 * i);
        if ([(MOPhotoManager *)self _doesAssetHaveSceneProcessing:v13]|| (v14 = [(MOPhotoManager *)self _doesAssetHaveFaceProcessing:v13], v15 = v7, v14))
        {
          v16 = [(MOPhotoManager *)self _doesAssetHaveSceneProcessing:v13];
          v15 = v5;
          if (v16)
          {
            v17 = [(MOPhotoManager *)self _doesAssetHaveFaceProcessing:v13];
            v15 = v6;
            if (v17)
            {
              continue;
            }
          }
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v10);
  }

  v18 = +[VCPMediaAnalysisService analysisService];
  v67 = v8;
  v68 = v6;
  v66 = v18;
  v65 = v5;
  if ([v7 count])
  {
    v19 = +[VCPMediaAnalysisService defaultDeferredProcessingTypes];
    v20 = [v19 mutableCopy];

    v83 = 0;
    v62 = v20;
    v21 = [v18 requestDeferredProcessingTypes:v20 assets:v7 error:&v83];
    v22 = v83;
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v7 count];
      *buf = 134218498;
      v92 = v24;
      v93 = 1024;
      v94 = v21;
      v95 = 2112;
      v96 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "#MADRequest, sceneAndFaceAnalysisPending count, %ld, result, %d, error, %@", buf, 0x1Cu);
    }

    v59 = v22;

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v25 = v7;
    v26 = [v25 countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v80;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v80 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v79 + 1) + 8 * j);
          v31 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            localIdentifier = [v30 localIdentifier];
            *buf = 138412290;
            v92 = localIdentifier;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "#MADRequest, sceneAndFaceAnalysisPending, asset, %@", buf, 0xCu);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v27);
    }

    v8 = v67;
    v6 = v68;
    v18 = v66;
    v5 = v65;
  }

  if ([v5 count])
  {
    v33 = +[NSMutableIndexSet indexSet];
    [v33 addIndex:MADDeferredProcessingTypeScene];
    v78 = 0;
    v63 = v33;
    v34 = [v18 requestDeferredProcessingTypes:v33 assets:v5 error:&v78];
    v35 = v78;
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v5 count];
      *buf = 134218498;
      v92 = v37;
      v93 = 1024;
      v94 = v34;
      v95 = 2112;
      v96 = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "#MADRequest, sceneAnalysisPending count, %ld, result, %d, error, %@", buf, 0x1Cu);
    }

    v60 = v35;

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v38 = v5;
    v39 = [v38 countByEnumeratingWithState:&v74 objects:v89 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v75;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v75 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v74 + 1) + 8 * k);
          v44 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            localIdentifier2 = [v43 localIdentifier];
            *buf = 138412290;
            v92 = localIdentifier2;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "#MADRequest, sceneAnalysisPending, asset, %@", buf, 0xCu);
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v74 objects:v89 count:16];
      }

      while (v40);
    }

    v8 = v67;
    v6 = v68;
    v18 = v66;
    v5 = v65;
  }

  if ([v6 count])
  {
    v46 = +[NSMutableIndexSet indexSet];
    [v46 addIndex:MADDeferredProcessingTypeQuickFaceIdentification];
    v73 = 0;
    v64 = v46;
    v47 = [v18 requestDeferredProcessingTypes:v46 assets:v6 error:&v73];
    v48 = v73;
    v49 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = [v6 count];
      *buf = 134218498;
      v92 = v50;
      v93 = 1024;
      v94 = v47;
      v95 = 2112;
      v96 = v48;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "#MADRequest, faceAnalysisPending count, %ld, result, %d, error, %@", buf, 0x1Cu);
    }

    v61 = v48;

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v51 = v6;
    v52 = [v51 countByEnumeratingWithState:&v69 objects:v88 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v70;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v70 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v69 + 1) + 8 * m);
          v57 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            localIdentifier3 = [v56 localIdentifier];
            *buf = 138412290;
            v92 = localIdentifier3;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "#MADRequest, faceAnalysisPending, asset, %@", buf, 0xCu);
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v69 objects:v88 count:16];
      }

      while (v53);
    }

    v8 = v67;
    v6 = v68;
    v18 = v66;
    v5 = v65;
  }
}

- (BOOL)_doesAssetHaveSceneProcessing:(id)processing
{
  processingCopy = processing;
  sceneAnalysisProperties = [processingCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  if (VCPPhotosSceneProcessingVersion == sceneAnalysisVersion)
  {
    sceneAnalysisTimestamp = [sceneAnalysisProperties sceneAnalysisTimestamp];
    adjustmentVersion = [processingCopy adjustmentVersion];
    v8 = [sceneAnalysisTimestamp isEqualToDate:adjustmentVersion];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_doesAssetHaveFaceProcessing:(id)processing
{
  processingCopy = processing;
  faceAdjustmentVersion = [processingCopy faceAdjustmentVersion];
  v5 = +[PHAsset quickClassificationFaceAdjustmentVersion];
  if ([faceAdjustmentVersion isEqualToDate:v5])
  {
    v6 = 1;
  }

  else
  {
    faceAdjustmentVersion2 = [processingCopy faceAdjustmentVersion];
    adjustmentVersion = [processingCopy adjustmentVersion];
    v6 = [faceAdjustmentVersion2 isEqualToDate:adjustmentVersion];
  }

  return v6;
}

- (id)_calculateDistanceBetweenUserLocation:(id)location PhotoLocation:(id)photoLocation
{
  v5 = 0;
  if (location && photoLocation)
  {
    [location distanceFromLocation:photoLocation];
    v5 = [NSNumber numberWithDouble:?];
    v4 = vars8;
  }

  return v5;
}

- (id)_getPhotosByAssetProperties:(id)properties UserLocations:(id)locations IsLocationCheckMandatory:(BOOL)mandatory MinDistance:(double)distance
{
  mandatoryCopy = mandatory;
  propertiesCopy = properties;
  locationsCopy = locations;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v168 = [locationsCopy count];
    v169 = 1024;
    *v170 = mandatoryCopy;
    *&v170[4] = 2048;
    *&v170[6] = distance;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#assetfilter, user location count, %lu, isLocationCheckMandatory, %d, minDistance, %f", buf, 0x1Cu);
  }

  v124 = mandatoryCopy;

  v125 = objc_opt_new();
  v12 = objc_opt_new();
  v134 = objc_opt_new();
  v128 = objc_opt_new();
  v133 = objc_opt_new();
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = propertiesCopy;
  v13 = [obj countByEnumeratingWithState:&v160 objects:v185 count:16];
  v135 = v12;
  selfCopy = self;
  if (v13)
  {
    v14 = v13;
    v15 = *v161;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v161 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v160 + 1) + 8 * i);
        if ([v17 mediaType] != 3 && (objc_msgSend(v17, "mediaSubtypes") & 4) == 0 && (objc_msgSend(v17, "mediaSubtypes") & 0x80000) == 0 && (objc_msgSend(v17, "mediaSubtypes") & 0x20000) == 0)
        {
          importProperties = [v17 importProperties];
          if ([importProperties importedBy] == 2)
          {
            goto LABEL_17;
          }

          importProperties2 = [v17 importProperties];
          if ([importProperties2 importedBy] == 1)
          {
            goto LABEL_16;
          }

          importProperties3 = [v17 importProperties];
          if ([importProperties3 importedBy] == 8)
          {

            v12 = v135;
LABEL_16:

LABEL_17:
LABEL_18:
            [v125 addObject:v17];
            v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              goto LABEL_24;
            }

            localIdentifier = [v17 localIdentifier];
            creationDate = [v17 creationDate];
            mediaType = [v17 mediaType];
            mediaSubtypes = [v17 mediaSubtypes];
            importProperties4 = [v17 importProperties];
            importedBy = [importProperties4 importedBy];
            *buf = 138413314;
            v168 = localIdentifier;
            v169 = 2112;
            *v170 = creationDate;
            *&v170[8] = 2048;
            *&v170[10] = mediaType;
            v171 = 2048;
            v172 = mediaSubtypes;
            self = selfCopy;
            v173 = 2048;
            v174 = importedBy;
            v28 = v21;
            v29 = "#assetfilter, Accepted curated asset by properties, localIdentifier, %@, creationDate, %@, mediaType, %lu, mediaSubtypes, %lu, importProperties.importedBy, %lu";
            goto LABEL_23;
          }

          importProperties5 = [v17 importProperties];
          importedBy2 = [importProperties5 importedBy];

          self = selfCopy;
          v12 = v135;
          if (importedBy2 == 12)
          {
            goto LABEL_18;
          }
        }

        v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_24;
        }

        localIdentifier = [v17 localIdentifier];
        creationDate = [v17 creationDate];
        mediaType2 = [v17 mediaType];
        mediaSubtypes2 = [v17 mediaSubtypes];
        importProperties4 = [v17 importProperties];
        importedBy3 = [importProperties4 importedBy];
        *buf = 138413314;
        v168 = localIdentifier;
        v169 = 2112;
        *v170 = creationDate;
        *&v170[8] = 2048;
        *&v170[10] = mediaType2;
        v171 = 2048;
        v172 = mediaSubtypes2;
        self = selfCopy;
        v173 = 2048;
        v174 = importedBy3;
        v28 = v21;
        v29 = "#assetfilter, Denied curated asset by properties, localIdentifier, %@, creationDate, %@, mediaType, %lu, mediaSubtypes, %lu, importProperties.importedBy, %lu";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v29, buf, 0x34u);

        v12 = v135;
LABEL_24:
      }

      v14 = [obj countByEnumeratingWithState:&v160 objects:v185 count:16];
    }

    while (v14);
  }

  v35 = [locationsCopy count];
  log = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v36 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v35)
  {
    if (v36)
    {
      v37 = [locationsCopy count];
      *buf = 134217984;
      v168 = v37;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "#assetfilter, User location(s) available for checking, count, %lu", buf, 0xCu);
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    log = v125;
    v38 = v128;
    v130 = [log countByEnumeratingWithState:&v156 objects:v184 count:16];
    if (v130)
    {
      v129 = *v157;
      v39 = 1000.0;
      do
      {
        for (j = 0; j != v130; j = j + 1)
        {
          if (*v157 != v129)
          {
            objc_enumerationMutation(log);
          }

          v41 = *(*(&v156 + 1) + 8 * j);
          location = [v41 location];

          if (location)
          {
            v132 = j;
            v43 = [RTLocation alloc];
            location2 = [v41 location];
            [location2 coordinate];
            v46 = v45;
            location3 = [v41 location];
            [location3 coordinate];
            v49 = v48;
            location4 = [v41 location];
            [location4 horizontalAccuracy];
            v138 = [v43 initWithLatitude:0 longitude:v46 horizontalUncertainty:v49 date:v51];

            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v139 = locationsCopy;
            v52 = [v139 countByEnumeratingWithState:&v152 objects:v183 count:16];
            if (!v52)
            {
              goto LABEL_65;
            }

            v53 = v52;
            v54 = *v153;
            while (1)
            {
              for (k = 0; k != v53; k = k + 1)
              {
                if (*v153 != v54)
                {
                  objc_enumerationMutation(v139);
                }

                v56 = *(*(&v152 + 1) + 8 * k);
                if ([v12 containsObject:v41])
                {
                  v57 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
                  if (!os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_63;
                  }

                  localIdentifier2 = [v41 localIdentifier];
                  *buf = 138412290;
                  v168 = localIdentifier2;
                  v59 = v57;
                  v60 = "#assetfilter, Photo asset, %@, has already passed location check";
                  v61 = 12;
LABEL_58:
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, v60, buf, v61);
                  goto LABEL_59;
                }

                v57 = [(MOPhotoManager *)self _calculateDistanceBetweenUserLocation:v56 PhotoLocation:v138];
                if (!v57)
                {
                  localIdentifier2 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
                  if (os_log_type_enabled(localIdentifier2, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    v59 = localIdentifier2;
                    v60 = "#assetfilter, Photo asset, distanceInMeters is nil";
                    v61 = 2;
                    goto LABEL_58;
                  }

LABEL_59:

                  goto LABEL_63;
                }

                [v56 horizontalUncertainty];
                v63 = v62 + v62;
                if (v63 >= distance)
                {
                  distanceCopy = v63;
                }

                else
                {
                  distanceCopy = distance;
                }

                configurationManager = [(MOPhotoManager *)self configurationManager];
                [configurationManager getDoubleSettingForKey:@"Photos_DistanceFromDefaultMaxThreshold" withFallback:v39];
                v67 = v66;

                if (distanceCopy < v67)
                {
                  v67 = distanceCopy;
                }

                v68 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  [v56 latitude];
                  v136 = v69;
                  [v56 longitude];
                  v71 = v70;
                  [v56 horizontalUncertainty];
                  distanceCopy2 = distance;
                  v73 = v39;
                  v75 = v74;
                  localIdentifier3 = [v41 localIdentifier];
                  location5 = [v41 location];
                  [location5 coordinate];
                  v79 = v78;
                  location6 = [v41 location];
                  [location6 coordinate];
                  v82 = v81;
                  location7 = [v41 location];
                  [location7 horizontalAccuracy];
                  v85 = v84;
                  [v57 doubleValue];
                  *buf = 134547715;
                  v168 = v136;
                  v169 = 2053;
                  *v170 = v71;
                  *&v170[8] = 2048;
                  *&v170[10] = v75;
                  v39 = v73;
                  distance = distanceCopy2;
                  v171 = 2112;
                  v172 = localIdentifier3;
                  v173 = 2053;
                  v174 = v79;
                  v175 = 2053;
                  v176 = v82;
                  v177 = 2048;
                  v178 = v85;
                  v179 = 2048;
                  v180 = v86;
                  v181 = 2048;
                  v182 = v67;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "#assetfilter, userLocation, lat, %{sensitive}f, lon, %{sensitive}f, horizontalUncertainty, %f, Photo asset, %@, lat %{sensitive}f, lon, %{sensitive}f, horizontalAccuracy, %f, distanceInMeters, %f, distanceThreshold, %f", buf, 0x5Cu);

                  v12 = v135;
                }

                [v57 doubleValue];
                if (v87 < v67)
                {
                  self = selfCopy;
                  if (([v12 containsObject:v41] & 1) == 0)
                  {
                    [v12 addObject:v41];
                  }

                  localIdentifier2 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
                  if (os_log_type_enabled(localIdentifier2, OS_LOG_TYPE_INFO))
                  {
                    localIdentifier4 = [v41 localIdentifier];
                    [v57 doubleValue];
                    *buf = 138412802;
                    v168 = localIdentifier4;
                    v169 = 2048;
                    *v170 = v89;
                    *&v170[8] = 2048;
                    *&v170[10] = v67;
                    _os_log_impl(&_mh_execute_header, localIdentifier2, OS_LOG_TYPE_INFO, "#assetfilter, Adding photo asset, %@, since distanceInMeters, %f is cleared, distanceThreshold, %f", buf, 0x20u);
                  }

                  goto LABEL_59;
                }

                v90 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
                self = selfCopy;
                if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                {
                  localIdentifier5 = [v41 localIdentifier];
                  [v57 doubleValue];
                  *buf = 138412802;
                  v168 = localIdentifier5;
                  v169 = 2048;
                  *v170 = v92;
                  *&v170[8] = 2048;
                  *&v170[10] = v67;
                  _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "#assetfilter, Photo asset, %@, not added since distanceInMeters, %f is out of range, distanceThreshold, %f", buf, 0x20u);
                }

                [v134 addObject:v41];
LABEL_63:
              }

              v53 = [v139 countByEnumeratingWithState:&v152 objects:v183 count:16];
              if (!v53)
              {
LABEL_65:

                v38 = v128;
                j = v132;
                v93 = v138;
                goto LABEL_68;
              }
            }
          }

          v93 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            localIdentifier6 = [v41 localIdentifier];
            *buf = 138412290;
            v168 = localIdentifier6;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "#assetfilter, Filtering out, %@, location object is nil", buf, 0xCu);
          }

LABEL_68:
        }

        v130 = [log countByEnumeratingWithState:&v156 objects:v184 count:16];
      }

      while (v130);
    }
  }

  else
  {
    if (v36)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "#assetfilter, No user location available for checking", buf, 2u);
    }

    v38 = v128;
  }

  if (v124)
  {
    goto LABEL_92;
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v95 = v125;
  v96 = [v95 countByEnumeratingWithState:&v148 objects:v166 count:16];
  if (!v96)
  {
    goto LABEL_91;
  }

  v97 = v96;
  v98 = *v149;
  do
  {
    for (m = 0; m != v97; m = m + 1)
    {
      if (*v149 != v98)
      {
        objc_enumerationMutation(v95);
      }

      v100 = *(*(&v148 + 1) + 8 * m);
      location8 = [v100 location];
      if (location8 && [locationsCopy count])
      {

        continue;
      }

      importProperties6 = [v100 importProperties];
      if ([importProperties6 importedBy] == 2)
      {
      }

      else
      {
        importProperties7 = [v100 importProperties];
        importedBy4 = [importProperties7 importedBy];

        v12 = v135;
        if (importedBy4 != 1)
        {
          continue;
        }
      }

      v105 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        localIdentifier7 = [v100 localIdentifier];
        *buf = 138412290;
        v168 = localIdentifier7;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "#assetfilter, Photo asset, %@, adding photo as fallback", buf, 0xCu);
      }

      [v128 addObject:v100];
    }

    v97 = [v95 countByEnumeratingWithState:&v148 objects:v166 count:16];
  }

  while (v97);
LABEL_91:

  v38 = v128;
LABEL_92:
  if ([v12 count])
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v107 = v12;
    v108 = [v107 countByEnumeratingWithState:&v144 objects:v165 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v145;
      do
      {
        for (n = 0; n != v109; n = n + 1)
        {
          if (*v145 != v110)
          {
            objc_enumerationMutation(v107);
          }

          v112 = *(*(&v144 + 1) + 8 * n);
          v113 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
          {
            localIdentifier8 = [v112 localIdentifier];
            *buf = 138412290;
            v168 = localIdentifier8;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "#assetfilter, filteredInAsset, %@", buf, 0xCu);
          }

          [v133 addObject:v112];
        }

        v109 = [v107 countByEnumeratingWithState:&v144 objects:v165 count:16];
      }

      while (v109);
    }

    v12 = v135;
    v38 = v128;
  }

  if ([v38 count])
  {
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v115 = v38;
    v116 = [v115 countByEnumeratingWithState:&v140 objects:v164 count:16];
    if (v116)
    {
      v117 = v116;
      v118 = *v141;
      do
      {
        for (ii = 0; ii != v117; ii = ii + 1)
        {
          if (*v141 != v118)
          {
            objc_enumerationMutation(v115);
          }

          v120 = *(*(&v140 + 1) + 8 * ii);
          if (([v133 containsObject:v120] & 1) == 0)
          {
            v121 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
            if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
            {
              localIdentifier9 = [v120 localIdentifier];
              *buf = 138412290;
              v168 = localIdentifier9;
              _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "#assetfilter, fallbackResult, %@", buf, 0xCu);
            }

            [v133 addObject:v120];
          }
        }

        v117 = [v115 countByEnumeratingWithState:&v140 objects:v164 count:16];
      }

      while (v117);
    }

    v12 = v135;
    v38 = v128;
  }

  return v133;
}

- (void)_fetchSharedPhotosBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v11 = objc_opt_new();
  selfCopy = self;
  [v11 setPhotoLibrary:self->_syndicationPhotoLibrary];
  dateCopy = [NSPredicate predicateWithFormat:@"dateCreated > %@", dateCopy];
  v53[0] = dateCopy;
  v13 = [NSPredicate predicateWithFormat:@"additionalAttributes.importedByBundleIdentifier == %@", @"com.apple.MobileSMS"];
  v53[1] = v13;
  v14 = [NSArray arrayWithObjects:v53 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
  [v11 setInternalPredicate:v15];

  v16 = [PHAsset fetchAssetsWithOptions:v11];
  v17 = v16;
  if (!v16 || ![v16 count])
  {
    v51 = NSLocalizedDescriptionKey;
    v52 = @"photo fetch result is nil";
    v22 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    fetchError3 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v22];

    v23 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      countOfAssetCollections = dateCopy;
      v47 = 2112;
      v48 = endDateCopy;
      v49 = 2112;
      v50 = fetchError3;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "fetch result is nil from photo library, start date, %@, end date, %@, error, %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  fetchError = [v17 fetchError];

  v19 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v20 = v19;
  if (fetchError)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      fetchError2 = [v17 fetchError];
      *buf = 138412802;
      countOfAssetCollections = fetchError2;
      v47 = 2112;
      v48 = dateCopy;
      v49 = 2112;
      v50 = endDateCopy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "fetch shared photos from photo library hit error, %@, start date, %@, end date, %@", buf, 0x20u);
    }

    fetchError3 = [v17 fetchError];
LABEL_10:
    handlerCopy[2](handlerCopy, &__NSArray0__struct, fetchError3);
    goto LABEL_11;
  }

  v36 = handlerCopy;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    countOfAssetCollections = [v17 countOfAssetCollections];
    v47 = 2112;
    v48 = dateCopy;
    v49 = 2112;
    v50 = endDateCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "fetch %lu shared photos from photo library, start date, %@, end date, %@", buf, 0x20u);
  }

  v37 = endDateCopy;
  v38 = dateCopy;

  fetchError3 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = v17;
  v24 = v17;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * i);
        v30 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          localIdentifier = [v29 localIdentifier];
          creationDate = [v29 creationDate];
          *buf = 138412546;
          countOfAssetCollections = localIdentifier;
          v47 = 2112;
          v48 = creationDate;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, ",shared photo assetid, %@, creation date, %@", buf, 0x16u);
        }

        v33 = [(MOPhotoManager *)selfCopy _createEventFromAsset:v29];
        [fetchError3 addObject:v33];
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v26);
  }

  handlerCopy = v36;
  v36[2](v36, fetchError3, 0);
  endDateCopy = v37;
  dateCopy = v38;
  v17 = v35;
LABEL_11:
}

- (void)_fetchPhotoMemoriesBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoManager _fetchPhotoMemoriesBetweenStartDate:EndDate:handler:];
  }

  v13 = objc_opt_new();
  [v13 setPhotoLibrary:self->_photoLibrary];
  v14 = [NSPredicate predicateWithFormat:@"featuredState == %ul", 1];
  [v13 setInternalPredicate:v14];

  [v13 setIncludePendingMemories:1];
  v15 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v13];
  v16 = v15;
  if (!v15 || ![v15 count])
  {
    v62 = NSLocalizedDescriptionKey;
    v63 = @"photo memory fetch result is nil";
    v20 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    fetchError3 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v20];

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v53 = dateCopy;
      v54 = 2112;
      *v55 = endDateCopy;
      *&v55[8] = 2112;
      *v56 = fetchError3;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "#PhotoMemory,memories fetch result is nil, start date, %@, end date, %@, error, %@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  fetchError = [v16 fetchError];

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (fetchError)
  {
    if (v19)
    {
      fetchError2 = [v16 fetchError];
      *buf = 138412802;
      v53 = fetchError2;
      v54 = 2112;
      *v55 = dateCopy;
      *&v55[8] = 2112;
      *v56 = endDateCopy;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#PhotoMemory,fetch memories hit error, %@, start date, %@, end date, %@", buf, 0x20u);
    }

    fetchError3 = [v16 fetchError];
    handlerCopy[2](handlerCopy, &__NSArray0__struct, fetchError3);
    goto LABEL_12;
  }

  if (v19)
  {
    [MOPhotoManager _fetchPhotoMemoriesBetweenStartDate:v16 EndDate:? handler:?];
  }

  if (![v16 count])
  {
    v60 = NSLocalizedDescriptionKey;
    v61 = @"photo memory fetch count is invalid";
    v36 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    fetchError3 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v36];

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [MOPhotoManager _fetchPhotoMemoriesBetweenStartDate:EndDate:handler:];
    }

LABEL_11:

    handlerCopy[2](handlerCopy, &__NSArray0__struct, fetchError3);
    goto LABEL_12;
  }

  v40 = v13;
  v41 = v11;
  v42 = handlerCopy;
  v43 = endDateCopy;
  v44 = dateCopy;
  fetchError3 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = v16;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v48 + 1) + 8 * i);
        v28 = [(MOPhotoManager *)self isCandidateForMemoryEvent:v27];
        v29 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          localIdentifier = [v27 localIdentifier];
          pendingState = [v27 pendingState];
          isFavorite = [v27 isFavorite];
          category = [v27 category];
          *buf = 138413314;
          v53 = localIdentifier;
          v54 = 1024;
          *v55 = pendingState;
          *&v55[4] = 1024;
          *&v55[6] = isFavorite;
          *v56 = 2048;
          *&v56[2] = category;
          v57 = 1024;
          v58 = v28;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "#PhotoMemory,memoryInfo,id,%@,pendingState,%hu,isFavorite,%d,category,%lu,isCandidateForMemoryEvent,isSelected,%d", buf, 0x28u);
        }

        if (v28)
        {
          v30 = [(MOPhotoManager *)self _createEventFromPhotoMemory:v27];
          if (v30)
          {
            [fetchError3 addObject:v30];
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v24);
  }

  if ([fetchError3 count] < 4)
  {
    v35 = fetchError3;
  }

  else
  {
    v33 = [fetchError3 count];
    if (v33 >= 3)
    {
      v34 = 3;
    }

    else
    {
      v34 = v33;
    }

    v35 = [fetchError3 subarrayWithRange:{0, v34}];
  }

  v37 = v35;
  endDateCopy = v43;
  dateCopy = v44;
  v11 = v41;
  handlerCopy = v42;
  v13 = v40;
  v42[2](v42, v35, 0);

  v16 = v39;
LABEL_12:

  objc_autoreleasePoolPop(v11);
}

- (BOOL)isCandidateForMemoryEvent:(id)event
{
  eventCopy = event;
  if ([(MOPhotoManager *)self isDesirableCategoryOrTrigger:eventCopy])
  {
    [PHMemory fetchMomentsBackingMemory:eventCopy options:0];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v5 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v34;
      v9 = &GEOPOICategoryGasStation_ptr;
      v10 = &GEOPOICategoryGasStation_ptr;
      *&v6 = 138413314;
      v27 = v6;
      while (2)
      {
        v11 = 0;
        v28 = v7;
        do
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * v11);
          v13 = [v9[229] now];
          currentCalendar = [v10[227] currentCalendar];
          localStartDate = [v12 localStartDate];
          v32 = v13;
          v16 = [currentCalendar components:120 fromDate:localStartDate toDate:v13 options:0];

          v17 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            localIdentifier = [eventCopy localIdentifier];
            minute = [v16 minute];
            v18 = v9;
            v19 = v8;
            v20 = eventCopy;
            hour = [v16 hour];
            v22 = [v16 day];
            month = [v16 month];
            *buf = v27;
            v38 = localIdentifier;
            v39 = 2048;
            v40 = minute;
            v10 = &GEOPOICategoryGasStation_ptr;
            v41 = 2048;
            v42 = hour;
            eventCopy = v20;
            v8 = v19;
            v9 = v18;
            v7 = v28;
            v43 = 2048;
            v44 = v22;
            v45 = 2048;
            v46 = month;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#PhotoMemory,memory,id,%@,Break down: %li min : %li hours : %li days : %li months", buf, 0x34u);
          }

          v24 = [v16 day];
          if (v24 < 0x1C)
          {
            v25 = 1;
            goto LABEL_15;
          }

          v11 = v11 + 1;
        }

        while (v7 != v11);
        v7 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
LABEL_15:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)isDesirableCategoryOrTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([triggerCopy isRejected])
  {
    v4 = 0;
  }

  else
  {
    category = [triggerCopy category];
    v6 = category;
    v7 = category > 0x18;
    v23 = 0;
    v24[0] = &v23;
    v24[1] = 0x2020000000;
    v25 = 0;
    triggerTypes = [triggerCopy triggerTypes];
    v4 = v7 | (0xD3FF7Fu >> v6);
    if (!triggerTypes || ([triggerCopy triggerTypes], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count") == 0, v9, triggerTypes, v10))
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(MOPhotoManager *)v4 & 1 isDesirableCategoryOrTrigger:v11];
      }
    }

    else
    {
      v11 = objc_alloc_init(NSMutableIndexSet);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      triggerTypes2 = [triggerCopy triggerTypes];
      v13 = [triggerTypes2 countByEnumeratingWithState:&v19 objects:v26 count:16];
      if (v13)
      {
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(triggerTypes2);
            }

            -[NSObject addIndex:](v11, "addIndex:", [*(*(&v19 + 1) + 8 * i) unsignedIntegerValue]);
          }

          v13 = [triggerTypes2 countByEnumeratingWithState:&v19 objects:v26 count:16];
        }

        while (v13);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __47__MOPhotoManager_isDesirableCategoryOrTrigger___block_invoke;
      v18[3] = &unk_10033F370;
      v18[4] = &v23;
      [v11 enumerateIndexesUsingBlock:v18];
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(MOPhotoManager *)v4 & 1 isDesirableCategoryOrTrigger:v24, v16];
      }

      if (v4)
      {
        v4 = *(v24[0] + 24);
      }

      else
      {
        v4 = 0;
      }
    }

    _Block_object_dispose(&v23, 8);
  }

  return v4 & 1;
}

uint64_t __47__MOPhotoManager_isDesirableCategoryOrTrigger___block_invoke(uint64_t result, unint64_t a2, _BYTE *a3)
{
  if (a2 <= 0x19 && ((1 << a2) & 0x38288B4) != 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a3 = *(*(*(result + 32) + 8) + 24);
  return result;
}

- (id)_createEventFromAsset:(id)asset
{
  assetCopy = asset;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  creationDate = [assetCopy creationDate];
  creationDate2 = [assetCopy creationDate];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:creationDate endDate:creationDate2 creationDate:v9 provider:2 category:14];

  [(MOEvent *)v10 setPhotoMomentSource:3];
  localIdentifier = [assetCopy localIdentifier];
  [(MOEvent *)v10 setIdentifierFromProvider:localIdentifier];

  creationDate3 = [assetCopy creationDate];

  configurationManager = [(MOPhotoManager *)self configurationManager];
  LODWORD(v14) = 1242802176;
  [configurationManager getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v14];
  v16 = [creationDate3 dateByAddingTimeInterval:v15];
  [(MOEvent *)v10 setExpirationDate:v16];

  return v10;
}

- (id)_createEventFromPhotoMemory:(id)memory
{
  memoryCopy = memory;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [memoryCopy localIdentifier];
    v20 = 138412290;
    v21 = localIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#PhotoMemory,_createEventFromPhotoMemory,%@", &v20, 0xCu);
  }

  v7 = [MOEvent alloc];
  v8 = +[NSUUID UUID];
  creationDate = [memoryCopy creationDate];
  creationDate2 = [memoryCopy creationDate];
  v11 = +[NSDate date];
  v12 = [(MOEvent *)v7 initWithEventIdentifier:v8 startDate:creationDate endDate:creationDate2 creationDate:v11 provider:2 category:17];

  localIdentifier2 = [memoryCopy localIdentifier];
  [(MOEvent *)v12 setIdentifierFromProvider:localIdentifier2];

  creationDate3 = [memoryCopy creationDate];
  configurationManager = [(MOPhotoManager *)self configurationManager];
  LODWORD(v16) = 1242802176;
  [configurationManager getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v16];
  v18 = [creationDate3 dateByAddingTimeInterval:v17];
  [(MOEvent *)v12 setExpirationDate:v18];

  return v12;
}

- (void)_saveEvents:(id)events category:(unint64_t)category handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoManager _saveEvents:category:handler:];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__39;
  v37 = __Block_byref_object_dispose__39;
  v38 = 0;
  eventStore = self->_eventStore;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __47__MOPhotoManager__saveEvents_category_handler___block_invoke;
  v32[3] = &unk_1003378A0;
  v32[4] = &v33;
  [(MOEventStore *)eventStore fetchLastEventOfCategory:category CompletionHandler:v32];
  v9 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v43 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        if (!v34[5] || ([*(*(&v28 + 1) + 8 * v13) startDate], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34[5], "startDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isAfterDate:", v16), v16, v15, v17))
        {
          v18 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            eventIdentifier = [v14 eventIdentifier];
            *buf = 134218242;
            categoryCopy = category;
            v41 = 2112;
            v42 = eventIdentifier;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "saving category %lu photo,event,%@,", buf, 0x16u);
          }

          [v9 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v43 count:16];
    }

    while (v11);
  }

  v20 = self->_eventStore;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __47__MOPhotoManager__saveEvents_category_handler___block_invoke_427;
  v25[3] = &unk_10033F398;
  categoryCopy2 = category;
  v21 = handlerCopy;
  v26 = v21;
  [(MOEventStore *)v20 storeEvents:v9 CompletionHandler:v25];

  _Block_object_dispose(&v33, 8);
}

void __47__MOPhotoManager__saveEvents_category_handler___block_invoke_427(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__MOPhotoManager__saveEvents_category_handler___block_invoke_427_cold_1(a1);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)rehydrateSharedPhotos:(id)photos handler:(id)handler
{
  photosCopy = photos;
  handlerCopy = handler;
  queue = [(MOPhotoManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__MOPhotoManager_rehydrateSharedPhotos_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = photosCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = photosCopy;
  dispatch_async(queue, block);
}

- (void)_rehydrateSharedPhotos:(id)photos handler:(id)handler
{
  photosCopy = photos;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __49__MOPhotoManager__rehydrateSharedPhotos_handler___block_invoke;
  v51[3] = &unk_10033F3C0;
  v10 = v8;
  v52 = v10;
  v45 = v9;
  v53 = v45;
  [photosCopy enumerateObjectsUsingBlock:v51];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    *buf = 134217984;
    v58 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "start rehydrating shared photos with local identifiers, identifier count, %lu", buf, 0xCu);
  }

  if ([v10 count])
  {
    v13 = objc_opt_new();
    [v13 setPhotoLibrary:self->_syndicationPhotoLibrary];
    v14 = [PHAsset fetchAssetsWithLocalIdentifiers:v10 options:v13];
    v15 = v14;
    if (v14 && [v14 count])
    {
      fetchError = [v15 fetchError];

      v17 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      v18 = v17;
      if (!fetchError)
      {
        v41 = v13;
        v42 = v10;
        v43 = handlerCopy;
        v44 = photosCopy;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v23 = [v15 count];
          *buf = 134217984;
          v58 = v23;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "fetch %lu shared photos from syndication library for rehydration", buf, 0xCu);
        }

        fetchError2 = objc_alloc_init(NSMutableArray);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v40 = v15;
        obj = v15;
        v24 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
        v22 = v45;
        if (v24)
        {
          v25 = v24;
          v26 = &MOLogFacilityPhoto;
          v27 = *v48;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v48 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v47 + 1) + 8 * i);
              localIdentifier = [v29 localIdentifier];
              v31 = [v22 objectForKeyedSubscript:localIdentifier];

              if (v31)
              {
                v32 = [v31 copy];
                [v32 setPhotoAsset:v29];
                v33 = _mo_log_facility_get_os_log(v26);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  [v32 photoAsset];
                  v34 = fetchError2;
                  v36 = v35 = v26;
                  localIdentifier2 = [v36 localIdentifier];
                  *buf = 138412290;
                  v58 = localIdentifier2;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "assigning photoassets %@", buf, 0xCu);

                  v22 = v45;
                  v26 = v35;
                  fetchError2 = v34;
                }

                [fetchError2 addObject:v32];
              }
            }

            v25 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
          }

          while (v25);
        }

        v38 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v58 = fetchError2;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "shared photos rehydratedEvents %@", buf, 0xCu);
        }

        v39 = [fetchError2 copy];
        handlerCopy = v43;
        v43[2](v43, v39, 0);

        photosCopy = v44;
        v13 = v41;
        v10 = v42;
        v15 = v40;
        goto LABEL_14;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager _rehydrateSharedPhotos:v15 handler:?];
      }

      fetchError2 = [v15 fetchError];
    }

    else
    {
      v55 = NSLocalizedDescriptionKey;
      v56 = @"photo fetch result is nil";
      v20 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      fetchError2 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v20];

      v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager _rehydrateSharedPhotos:handler:];
      }
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, fetchError2);
    v22 = v45;
LABEL_14:

    goto LABEL_17;
  }

  v22 = v45;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }

LABEL_17:
}

void __49__MOPhotoManager__rehydrateSharedPhotos_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifierFromProvider];

  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 identifierFromProvider];
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "adding identifier to assetLocalIdentifiers: %@", &v11, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v3 identifierFromProvider];
    [v7 addObject:v8];

    v9 = *(a1 + 40);
    v10 = [v3 identifierFromProvider];
    [v9 setObject:v3 forKey:v10];
  }
}

- (void)rehydratePhotoMemories:(id)memories handler:(id)handler
{
  memoriesCopy = memories;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#PhotoMemory,invoking rehydratePhotoMemories", buf, 2u);
  }

  queue = [(MOPhotoManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__MOPhotoManager_rehydratePhotoMemories_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v13 = memoriesCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = memoriesCopy;
  dispatch_async(queue, block);
}

- (void)_rehydratePhotoMemories:(id)memories handler:(id)handler
{
  memoriesCopy = memories;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoManager _rehydratePhotoMemories:handler:];
  }

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = __50__MOPhotoManager__rehydratePhotoMemories_handler___block_invoke;
  v54[3] = &unk_100338810;
  v9 = objc_opt_new();
  v55 = v9;
  [memoriesCopy enumerateObjectsUsingBlock:v54];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOPhotoManager _rehydratePhotoMemories:v9 handler:?];
  }

  if ([v9 count])
  {
    v11 = objc_opt_new();
    selfCopy = self;
    [v11 setPhotoLibrary:self->_photoLibrary];
    v12 = [NSPredicate predicateWithFormat:@"featuredState == %ul", 1];
    [v11 setInternalPredicate:v12];

    [v11 setIncludePendingMemories:1];
    v13 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v11];
    v14 = v13;
    if (v13 && [v13 count])
    {
      fetchError = [v14 fetchError];

      v16 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      v17 = v16;
      if (fetchError)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [MOPhotoManager _rehydratePhotoMemories:v14 handler:?];
        }

        fetchError2 = [v14 fetchError];
        goto LABEL_15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [MOPhotoManager _rehydratePhotoMemories:v14 handler:?];
      }

      if ([v14 count])
      {
        v41 = v11;
        v42 = v9;
        v43 = handlerCopy;
        v44 = memoriesCopy;
        v21 = objc_opt_new();
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v40 = v14;
        v22 = v14;
        v23 = [v22 countByEnumeratingWithState:&v50 objects:v66 count:16];
        v24 = selfCopy;
        v45 = v22;
        v46 = v21;
        if (v23)
        {
          v25 = v23;
          v26 = *v51;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v51 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v28 = *(*(&v50 + 1) + 8 * i);
              v29 = [(MOPhotoManager *)v24 isCandidateForMemoryEvent:v28];
              v30 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                localIdentifier = [v28 localIdentifier];
                pendingState = [v28 pendingState];
                isFavorite = [v28 isFavorite];
                category = [v28 category];
                *buf = 138413314;
                v57 = localIdentifier;
                v58 = 1024;
                v59 = pendingState;
                v60 = 1024;
                v61 = isFavorite;
                v22 = v45;
                v24 = selfCopy;
                v62 = 2048;
                v63 = category;
                v64 = 1024;
                v65 = v29;
                _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "#PhotoMemory,memoryInfo,id,%@,pendingState,%hu,isFavorite,%d,category,%lu,isCandidateForMemoryEvent,isSelected,%d", buf, 0x28u);

                v21 = v46;
              }

              if (v29)
              {
                [v21 addObject:v28];
              }
            }

            v25 = [v22 countByEnumeratingWithState:&v50 objects:v66 count:16];
          }

          while (v25);
        }

        if ([v21 count] < 4)
        {
          v37 = v21;
        }

        else
        {
          v35 = [v21 count];
          if (v35 >= 3)
          {
            v36 = 3;
          }

          else
          {
            v36 = v35;
          }

          v37 = [v21 subarrayWithRange:{0, v36}];
        }

        v39 = v37;
        handlerCopy = v43;
        memoriesCopy = v44;
        v11 = v41;
        v9 = v42;
        v14 = v40;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = __50__MOPhotoManager__rehydratePhotoMemories_handler___block_invoke_430;
        v48[3] = &unk_1003369E0;
        v49 = v43;
        [(MOPhotoManager *)selfCopy _rehydrateStoredEvents:v44 fromPhotoMemories:v39 fetchResult:v45 handler:v48];

        fetchError2 = v46;
        goto LABEL_16;
      }

      v67 = NSLocalizedDescriptionKey;
      v68 = @"photo memory fetch count is invalid";
      v38 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      fetchError2 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v38];

      v20 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [MOPhotoManager _rehydratePhotoMemories:handler:];
      }
    }

    else
    {
      v69 = NSLocalizedDescriptionKey;
      v70 = @"photo memory fetch result is nil";
      v19 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      fetchError2 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v19];

      v20 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [MOPhotoManager _rehydratePhotoMemories:handler:];
      }
    }

LABEL_15:
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, fetchError2);
LABEL_16:

    goto LABEL_19;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct, 0);
  }

LABEL_19:
}

void __50__MOPhotoManager__rehydratePhotoMemories_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifierFromProvider];

  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __50__MOPhotoManager__rehydratePhotoMemories_handler___block_invoke_cold_1(v3);
    }

    v6 = *(a1 + 32);
    v7 = [v3 identifierFromProvider];
    [v6 addObject:v7];
  }
}

- (void)fetchAssetUsingID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (dCopy)
  {
    if (v9)
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchAssetUsingID,identifier,%@", buf, 0xCu);
    }

    queue = [(MOPhotoManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __44__MOPhotoManager_fetchAssetUsingID_handler___block_invoke;
    block[3] = &unk_100336A58;
    block[4] = self;
    v14 = dCopy;
    v15 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchAssetUsingID,identifier,is nil", buf, 2u);
    }

    v18 = NSLocalizedDescriptionKey;
    v19 = @"identifier is nil";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v11];

    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

void __44__MOPhotoManager_fetchAssetUsingID_handler___block_invoke(void *a1)
{
  v2 = objc_opt_new();
  [v2 setPhotoLibrary:*(a1[4] + 24)];
  [v2 setIncludeGuestAssets:1];
  v3 = objc_opt_new();
  [v3 addObject:a1[5]];
  v4 = [PHAsset fetchAssetsWithLocalIdentifiers:v3 options:v2];
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"photo fetch result is nil";
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v10];

    v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __44__MOPhotoManager_fetchAssetUsingID_handler___block_invoke_cold_2();
    }

    (*(a1[6] + 16))(a1[6], 0, v9);
    goto LABEL_10;
  }

  v6 = [v5 fetchError];

  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__MOPhotoManager_fetchAssetUsingID_handler___block_invoke_cold_1(v5);
    }

    v8 = a1[6];
    v9 = [v5 fetchError];
    (*(v8 + 16))(v8, 0, v9);
LABEL_10:

    goto LABEL_11;
  }

  if ([v5 count])
  {
    v9 = [v5 objectAtIndexedSubscript:0];
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "fetchAssetUsingID,photoAsset,%@", &v16, 0xCu);
    }

    v13 = a1[6];
    v14 = [v9 copy];
    (*(v13 + 16))(v13, v14, 0);

    goto LABEL_10;
  }

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "fetch result is empty", &v16, 2u);
  }

  (*(a1[6] + 16))();
LABEL_11:
}

- (void)_rehydrateStoredEvents:(id)events fromPhotoMemories:(id)memories fetchResult:(id)result handler:(id)handler
{
  eventsCopy = events;
  memoriesCopy = memories;
  resultCopy = result;
  handlerCopy = handler;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#PhotoMemory,invoking _rehydrateStoredEvents", buf, 2u);
  }

  if ([eventsCopy count])
  {
    if ([memoriesCopy count])
    {
      v49 = handlerCopy;
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = __79__MOPhotoManager__rehydrateStoredEvents_fromPhotoMemories_fetchResult_handler___block_invoke;
      v65[3] = &unk_100338810;
      v14 = objc_opt_new();
      v66 = v14;
      v52 = eventsCopy;
      [eventsCopy enumerateObjectsUsingBlock:v65];
      v56 = objc_alloc_init(NSMutableArray);
      v53 = objc_alloc_init(NSMutableArray);
      v15 = objc_autoreleasePoolPush();
      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v50 = resultCopy;
      v55 = [PHAsset fetchKeyAssetByMemoryUUIDForMemories:resultCopy options:librarySpecificFetchOptions];

      objc_autoreleasePoolPop(v15);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v51 = memoriesCopy;
      obj = memoriesCopy;
      v17 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v62;
        do
        {
          v20 = 0;
          do
          {
            if (*v62 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v61 + 1) + 8 * v20);
            v22 = objc_autoreleasePoolPush();
            localIdentifier = [v21 localIdentifier];
            v24 = [v14 objectForKeyedSubscript:localIdentifier];

            if (v24)
            {
              v25 = [v24 copy];
              uuid = [v21 uuid];
              v27 = [v55 objectForKeyedSubscript:uuid];

              [(MOPhotoManager *)self _setDynamicPropertiesForMemoryEvent:v25 fromMemory:v21 keyAsset:v27];
              if ([v25 rehydrationFailCount])
              {
                v58 = [MORehydrationThresholdMetrics alloc];
                category = [v25 category];
                v29 = v27;
                v30 = v22;
                v31 = v18;
                v32 = v19;
                v33 = v14;
                provider = [v24 provider];
                rehydrationFailCount = [v25 rehydrationFailCount];
                v36 = provider;
                v14 = v33;
                v19 = v32;
                v18 = v31;
                v22 = v30;
                v27 = v29;
                v37 = [(MORehydrationThresholdMetrics *)v58 initWithCategory:category provider:v36 failureCount:rehydrationFailCount];
                v60 = 0;
                [(MORehydrationThresholdMetrics *)v37 submitMetricsWithError:&v60];
                [v25 setRehydrationFailCount:0];
                [v53 addObject:v25];
              }

              [v56 addObject:v25];
            }

            objc_autoreleasePoolPop(v22);
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v18);
      }

      v48 = v14;

      v38 = objc_autoreleasePoolPush();
      handlerCopy = v49;
      v49[2](v49, v56, 0);
      objc_autoreleasePoolPop(v38);
      v39 = objc_autoreleasePoolPush();
      v40 = [MORehydrationMetrics alloc];
      eventsCopy = v52;
      firstObject = [v52 firstObject];
      category2 = [firstObject category];
      firstObject2 = [v52 firstObject];
      v44 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v40, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category2, [firstObject2 provider], 1, 0, objc_msgSend(v52, "count"), 3, (objc_msgSend(v52, "count") - objc_msgSend(v56, "count")), objc_msgSend(v53, "count"));

      v59 = 0;
      [(MORehydrationMetrics *)v44 submitMetricsWithError:&v59];

      objc_autoreleasePoolPop(v39);
      resultCopy = v50;
      memoriesCopy = v51;
    }

    else
    {
      v46 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager _rehydrateStoredEvents:fromPhotoMemories:fetchResult:handler:];
      }

      handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
      v47 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:]([MORehydrationMetrics alloc], "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 17, 2, 1, 0, [eventsCopy count], 3, objc_msgSend(eventsCopy, "count"), 0.0);
      v67 = 0;
      [(MORehydrationMetrics *)v47 submitMetricsWithError:&v67];
    }
  }

  else
  {
    v45 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [MOPhotoManager _rehydrateStoredEvents:fromPhotoMemories:fetchResult:handler:];
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }
}

void __79__MOPhotoManager__rehydrateStoredEvents_fromPhotoMemories_fetchResult_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifierFromProvider];

  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 identifierFromProvider];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "rehydrateEvents:adding identifier to localIdentifierToEventMap: %@", &v9, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v3 identifierFromProvider];
    [v7 setObject:v3 forKey:v8];
  }
}

- (id)_fetchCuratedAssetsForPhotoMemory:(id)memory
{
  memoryCopy = memory;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#PhotoMemory,invoking _fetchCuratedAssetsForPhotoMemory", buf, 2u);
  }

  v6 = objc_opt_new();
  [v6 setPhotoLibrary:self->_photoLibrary];
  [v6 setIncludeGuestAssets:1];
  v7 = [PHAsset fetchCustomUserAssetsInMemory:memoryCopy options:v6];
  if (![v7 count])
  {
    v8 = [PHAsset fetchUserCuratedAssetsInMemory:memoryCopy options:v6];

    v7 = v8;
  }

  if ([v7 count])
  {
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = [PHAsset fetchCuratedAssetsInAssetCollection:memoryCopy options:v6];

    v7 = v9;
    if (!v9)
    {
LABEL_13:
      v47 = NSLocalizedDescriptionKey;
      v48 = @"photo memory asset fetch result is nil";
      v13 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v12 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v13];

      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager _fetchCuratedAssetsForPhotoMemory:memoryCopy];
      }

LABEL_16:
      v15 = &__NSArray0__struct;
      goto LABEL_17;
    }
  }

  if (![v7 count])
  {
    goto LABEL_13;
  }

  fetchError = [v7 fetchError];

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v12 = v11;
  if (fetchError)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MOPhotoManager *)memoryCopy _fetchCuratedAssetsForPhotoMemory:v7];
    }

    goto LABEL_16;
  }

  v37 = memoryCopy;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = [v7 count];
    *buf = 134217984;
    v45[0] = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#PhotoMemory,fetch asset result count, %lu", buf, 0xCu);
  }

  v36 = v6;

  v12 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = v7;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v39;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        v25 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          ++v21;
          *buf = 67109378;
          LODWORD(v45[0]) = v21;
          WORD2(v45[0]) = 2112;
          *(v45 + 6) = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "#PhotoMemory,asset,id,%d,asset,%@", buf, 0x12u);
        }

        v26 = [v24 copy];
        [v12 addObject:v26];
      }

      v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v20);
  }

  v27 = [[NSSortDescriptor alloc] initWithKey:@"curationScore" ascending:0];
  v43 = v27;
  v28 = [NSArray arrayWithObjects:&v43 count:1];
  v29 = [v12 sortedArrayUsingDescriptors:v28];

  v30 = [v29 count];
  if (v30 >= 0xD)
  {
    v31 = 13;
  }

  else
  {
    v31 = v30;
  }

  v32 = [v29 subarrayWithRange:{0, v31}];
  v33 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:1];
  v42 = v33;
  v34 = [NSArray arrayWithObjects:&v42 count:1];
  v15 = [v32 sortedArrayUsingDescriptors:v34];

  v6 = v36;
  memoryCopy = v37;
  v7 = v35;
LABEL_17:

  return v15;
}

- (void)_setDynamicPropertiesForMemoryEvent:(id)event fromMemory:(id)memory keyAsset:(id)asset
{
  eventCopy = event;
  memoryCopy = memory;
  assetCopy = asset;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#PhotoMemory,invoking _setDynamicPropertiesForMemoryEvent", buf, 2u);
  }

  v12 = [(MOPhotoManager *)self _fetchCuratedAssetsForPhotoMemory:memoryCopy];
  v13 = objc_alloc_init(NSMutableArray);
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (assetCopy)
  {
    if (v15)
    {
      localIdentifier = [memoryCopy localIdentifier];
      *buf = 138412546;
      *v66 = localIdentifier;
      *&v66[8] = 2112;
      *&v66[10] = assetCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#PhotoMemory, Key asset for memory,%@,is,%@ ", buf, 0x16u);
    }

    [v13 addObject:assetCopy];
  }

  else
  {
    if (v15)
    {
      localIdentifier2 = [memoryCopy localIdentifier];
      *buf = 138412290;
      *v66 = localIdentifier2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#PhotoMemory, Key asset is nil for memory,%@", buf, 0xCu);
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v60;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v60 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v59 + 1) + 8 * i);
        if (([v13 containsObject:v23] & 1) == 0)
        {
          [v13 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v20);
  }

  title = [memoryCopy title];
  subtitle = [memoryCopy subtitle];
  v26 = subtitle;
  if (title)
  {
    v27 = [title stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    if (v26)
    {
LABEL_21:
      v28 = [v26 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

      goto LABEL_24;
    }
  }

  else
  {
    v27 = 0;
    if (subtitle)
    {
      goto LABEL_21;
    }
  }

  v28 = 0;
LABEL_24:
  v51 = v27;
  v52 = assetCopy;
  v50 = v28;
  if (v27 | v28)
  {
    if (v27 && v28)
    {
      [NSString stringWithFormat:@"%@\n%@", v27, v28];
    }

    else
    {
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      [NSString stringWithFormat:@"%@", v29, v49];
    }
    v30 = ;
    [eventCopy setPhotoMemoryTitle:v30];
  }

  else
  {
    [eventCopy setPhotoMemoryTitle:&stru_1003416B0];
  }

  [eventCopy setPhotoMemoryCategory:{objc_msgSend(memoryCopy, "category")}];
  subcategory = [memoryCopy subcategory];
  photoEvent = [eventCopy photoEvent];
  [photoEvent setPhotoMemorySubCategory:subcategory];

  v33 = [v13 count];
  if (v33 >= 0xD)
  {
    v34 = 13;
  }

  else
  {
    v34 = v33;
  }

  v35 = [v13 subarrayWithRange:{0, v34}];
  [eventCopy setPhotoMemoryAssets:v35];

  isFavorite = [memoryCopy isFavorite];
  photoEvent2 = [eventCopy photoEvent];
  [photoEvent2 setPhotoMemoryIsFavorite:isFavorite];

  v53 = memoryCopy;
  [memoryCopy currentRelevanceScore];
  v39 = v38;
  photoEvent3 = [eventCopy photoEvent];
  [photoEvent3 setPhotoMemoryRelevanceScore:v39];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = eventCopy;
  photoMemoryAssets = [eventCopy photoMemoryAssets];
  v42 = [photoMemoryAssets countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = 0;
    v45 = *v56;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v56 != v45)
        {
          objc_enumerationMutation(photoMemoryAssets);
        }

        v47 = *(*(&v55 + 1) + 8 * j);
        v48 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          ++v44;
          *buf = 67109378;
          *v66 = v44;
          *&v66[4] = 2112;
          *&v66[6] = v47;
          _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "#PhotoMemory,sortedasset,id,%d,asset,%@", buf, 0x12u);
        }
      }

      v43 = [photoMemoryAssets countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v43);
  }
}

- (void)fetchPhotoMemoryEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MOPhotoManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __90__MOPhotoManager_fetchPhotoMemoryEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = dateCopy;
  v21 = endDateCopy;
  v22 = eventsCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = eventsCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_fetchPhotoMemoryEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = dateCopy;
    *&buf[12] = 2112;
    *&buf[14] = endDateCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#PhotoMemory,fetchPhotoMemoriesBetweenStartDate,startDate,%@,endDate,%@", buf, 0x16u);
  }

  v49 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 17];
  v48 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 2];
  v84[0] = v49;
  v84[1] = v48;
  v10 = [NSArray arrayWithObjects:v84 count:2];
  v46 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  v52 = [eventsCopy filteredArrayUsingPredicate:v46];
  v55 = objc_opt_new();
  [v55 setPhotoLibrary:self->_photoLibrary];
  v11 = [NSPredicate predicateWithFormat:@"featuredState == %ul", 1];
  [v55 setInternalPredicate:v11];

  [v55 setIncludePendingMemories:1];
  [v55 setFetchLimit:3];
  v12 = objc_autoreleasePoolPush();
  v54 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v55];
  if (!v54 || ![v54 count])
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      fetchError = [v54 fetchError];
      *buf = 138412802;
      *&buf[4] = fetchError;
      *&buf[12] = 2112;
      *&buf[14] = dateCopy;
      *&buf[22] = 2112;
      *&v79 = endDateCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#PhotoMemory,fetch memories result is nil, %@, start date, %@, end date, %@", buf, 0x20u);
    }

    v82 = NSLocalizedDescriptionKey;
    v83 = @"photo memory fetch result is nil";
    v23 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v20 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v23];

    handlerCopy[2](handlerCopy, v20, &__NSDictionary0__struct);
    v24 = [MORehydrationMetrics alloc];
    v25 = [(MOMetric *)v20 description];
    v26 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v24, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 17, 2, 0, v25, [v52 count], 3, objc_msgSend(v52, "count"), 0.0);

    v77 = 0;
    [(MORehydrationMetrics *)v26 submitMetricsWithError:&v77];

    goto LABEL_12;
  }

  fetchError2 = [v54 fetchError];

  if (fetchError2)
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      fetchError3 = [v54 fetchError];
      *buf = 138412802;
      *&buf[4] = fetchError3;
      *&buf[12] = 2112;
      *&buf[14] = dateCopy;
      *&buf[22] = 2112;
      *&v79 = endDateCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#PhotoMemory,fetch memories hit error, %@, start date, %@, end date, %@", buf, 0x20u);
    }

    fetchError4 = [v54 fetchError];
    handlerCopy[2](handlerCopy, fetchError4, &__NSDictionary0__struct);

    v17 = [MORehydrationMetrics alloc];
    fetchError5 = [v54 fetchError];
    v19 = [fetchError5 description];
    v20 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v17, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 17, 2, 0, v19, [v52 count], 3, objc_msgSend(v52, "count"), 0.0);

    v76 = 0;
    [(MORehydrationMetrics *)v20 submitMetricsWithError:&v76];
LABEL_12:

    objc_autoreleasePoolPop(v12);
    goto LABEL_13;
  }

  objc_autoreleasePoolPop(v12);
  v27 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v54;
  v28 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v28)
  {
    v29 = *v73;
LABEL_16:
    v30 = 0;
    while (1)
    {
      if (*v73 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v72 + 1) + 8 * v30);
      v32 = [(MOPhotoManager *)self isCandidateForMemoryEvent:v31];
      v33 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        localIdentifier = [v31 localIdentifier];
        pendingState = [v31 pendingState];
        isFavorite = [v31 isFavorite];
        category = [v31 category];
        *buf = 138413314;
        *&buf[4] = localIdentifier;
        *&buf[12] = 1024;
        *&buf[14] = pendingState;
        *&buf[18] = 1024;
        *&buf[20] = isFavorite;
        LOWORD(v79) = 2048;
        *(&v79 + 2) = category;
        WORD5(v79) = 1024;
        HIDWORD(v79) = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "#PhotoMemory,memoryInfo,id,%@,pendingState,%hu,isFavorite,%d,category,%lu,isCandidateForMemoryEvent,isSelected,%d", buf, 0x28u);
      }

      if (v32)
      {
        [v27 addObject:v31];
      }

      if ([v27 count] > 2)
      {
        break;
      }

      if (v28 == ++v30)
      {
        v28 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
        if (v28)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v38 = v27;
  v39 = dispatch_group_create();
  dispatch_group_enter(v39);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v79 = __Block_byref_object_copy__39;
  *(&v79 + 1) = __Block_byref_object_dispose__39;
  v80 = 0;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = __91__MOPhotoManager__fetchPhotoMemoryEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v69[3] = &unk_1003364B0;
  v71 = buf;
  v40 = v39;
  v70 = v40;
  [(MOPhotoManager *)self _rehydrateStoredEvents:v52 fromPhotoMemories:v38 fetchResult:obj handler:v69];
  dispatch_group_enter(v40);
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = __Block_byref_object_copy__39;
  v67[4] = __Block_byref_object_dispose__39;
  v68 = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = __91__MOPhotoManager__fetchPhotoMemoryEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2;
  v64[3] = &unk_1003364B0;
  v66 = v67;
  v41 = v40;
  v65 = v41;
  [(MOPhotoManager *)self _createNewEventsFromPhotoMemories:v38 storedEvents:v52 handler:v64];
  queue = [(MOPhotoManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __91__MOPhotoManager__fetchPhotoMemoryEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_3;
  block[3] = &unk_10033F3E8;
  block[4] = self;
  v57 = v52;
  v58 = v38;
  v59 = dateCopy;
  v60 = endDateCopy;
  v62 = buf;
  v63 = v67;
  v61 = handlerCopy;
  v43 = v38;
  dispatch_group_notify(v41, queue, block);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(buf, 8);

LABEL_13:
}

void __91__MOPhotoManager__fetchPhotoMemoryEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __91__MOPhotoManager__fetchPhotoMemoryEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __91__MOPhotoManager__fetchPhotoMemoryEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) _findUnrehydratedEventsWithStoredEvents:*(a1 + 40) photoMemories:*(a1 + 48)];
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = [*(*(*(a1 + 80) + 8) + 40) count];
    v8 = [*(*(*(a1 + 88) + 8) + 40) count];
    v9 = [v3 count];
    v10 = [*(a1 + 40) count];
    *buf = 138413570;
    v58 = v5;
    v59 = 2112;
    v60 = v6;
    v61 = 2048;
    v62 = v7;
    v63 = 2048;
    v64 = v8;
    v65 = 2048;
    v66 = v9;
    v67 = 2048;
    v68 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated memory events count, %lu, new memory event counts, %lu, unrehydrated memory events count, %lu, stored memory events.count, %lu", buf, 0x3Eu);
  }

  v41 = a1;
  v40 = v3;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"unrehydratedEvents"];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v51;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v50 + 1) + 8 * i);
          v17 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v16 eventIdentifier];
            v19 = [v16 identifierFromProvider];
            *buf = 138412546;
            v58 = v18;
            v59 = 2112;
            v60 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#PhotoMemory,unrehydratedEvents,event id,%@,memory id,%@,", buf, 0x16u);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v13);
    }

    a1 = v41;
    v3 = v40;
  }

  v20 = *(*(*(a1 + 88) + 8) + 40);
  if (v20)
  {
    [v2 setObject:v20 forKey:@"newEvents"];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = *(*(*(a1 + 88) + 8) + 40);
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v47;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v46 + 1) + 8 * j);
          v27 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v26 eventIdentifier];
            v29 = [v26 identifierFromProvider];
            *buf = 138412546;
            v58 = v28;
            v59 = 2112;
            v60 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "#PhotoMemory,newEvents,event id,%@,memory id,%@,", buf, 0x16u);
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v23);
    }

    a1 = v41;
    v3 = v40;
  }

  v30 = *(*(*(a1 + 80) + 8) + 40);
  if (v30)
  {
    [v2 setObject:v30 forKey:@"rehydratedEvents"];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = *(*(*(a1 + 80) + 8) + 40);
    v32 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v43;
      do
      {
        for (k = 0; k != v33; k = k + 1)
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v42 + 1) + 8 * k);
          v37 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = [v36 eventIdentifier];
            v39 = [v36 identifierFromProvider];
            *buf = 138412546;
            v58 = v38;
            v59 = 2112;
            v60 = v39;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "#PhotoMemory,rehydratedEvents,event id,%@,memory id,%@,", buf, 0x16u);
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v33);
    }

    a1 = v41;
    v3 = v40;
  }

  (*(*(a1 + 72) + 16))();
}

- (void)_createNewEventsFromPhotoMemories:(id)memories storedEvents:(id)events handler:(id)handler
{
  memoriesCopy = memories;
  eventsCopy = events;
  handlerCopy = handler;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#PhotoMemory,invoking _createNewEventsFromPhotoMemories", buf, 2u);
  }

  v12 = objc_opt_new();
  [v12 setPhotoLibrary:self->_photoLibrary];
  v13 = [NSPredicate predicateWithFormat:@"featuredState == %ul", 1];
  [v12 setInternalPredicate:v13];

  [v12 setIncludePendingMemories:1];
  v14 = objc_autoreleasePoolPush();
  v15 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v12];
  v16 = v15;
  if (!v15 || ![v15 count])
  {
    v105 = NSLocalizedDescriptionKey;
    v106 = @"photo memory fetch result is nil";
    v20 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    fetchError2 = [NSError errorWithDomain:@"MOErrorDomain" code:5 userInfo:v20];

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [MOPhotoManager _rehydratePhotoMemories:handler:];
    }

    goto LABEL_12;
  }

  fetchError = [v16 fetchError];

  if (fetchError)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOPhotoManager _createNewEventsFromPhotoMemories:v16 storedEvents:? handler:?];
    }

    fetchError2 = [v16 fetchError];
LABEL_12:
    handlerCopy[2](handlerCopy, &__NSArray0__struct, fetchError2);

    objc_autoreleasePoolPop(v14);
    goto LABEL_13;
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v83 = [PHAsset fetchKeyAssetByMemoryUUIDForMemories:v16 options:librarySpecificFetchOptions];

  objc_autoreleasePoolPop(v14);
  if ([memoriesCopy count])
  {
    v79 = v12;
    v81 = eventsCopy;
    v23 = &GEOPOICategoryGasStation_ptr;
    v84 = objc_opt_new();
    _getPhotoMemoryPlistFileURL = [(MOPhotoManager *)self _getPhotoMemoryPlistFileURL];
    v25 = [(MOPhotoManager *)self _readPhotoMemoryPlistFile:_getPhotoMemoryPlistFileURL];
    v26 = objc_opt_new();
    v87 = v25;
    selfCopy = self;
    v77 = _getPhotoMemoryPlistFileURL;
    v78 = v16;
    v82 = memoriesCopy;
    v80 = handlerCopy;
    if (_getPhotoMemoryPlistFileURL && v25)
    {
      v85 = [v25 mutableCopy];

      v27 = objc_opt_new();
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = [v25 allKeys];
      v28 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v94;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v94 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v93 + 1) + 8 * i);
            v33 = [v87 objectForKeyedSubscript:v32];
            v34 = [v33 objectForKeyedSubscript:@"photoMemoryID"];
            v35 = [v33 objectForKeyedSubscript:@"photoMemoryIDFirstPersistTime"];
            [v35 doubleValue];
            v37 = v36;

            configurationManager = [(MOPhotoManager *)selfCopy configurationManager];
            [configurationManager getDoubleSettingForKey:@"PhotoMemoryIDPersistDuration" withFallback:7257600.0];
            v40 = v39;

            v41 = +[NSDate date];
            [v41 timeIntervalSinceReferenceDate];
            v43 = v42 - v37;

            if (v43 >= v40)
            {
              [v85 removeObjectForKey:v32];
              v44 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v98 = v32;
                v99 = 2048;
                *v100 = v40;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Removing %@ entries in photo as it is stored more than %f seconds ago", buf, 0x16u);
              }
            }

            else
            {
              [v27 addObject:v34];
            }
          }

          v29 = [obj countByEnumeratingWithState:&v93 objects:v104 count:16];
        }

        while (v29);
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v45 = memoriesCopy;
      v46 = [v45 countByEnumeratingWithState:&v89 objects:v103 count:16];
      v47 = v84;
      if (v46)
      {
        v48 = v46;
        v49 = *v90;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v90 != v49)
            {
              objc_enumerationMutation(v45);
            }

            v51 = *(*(&v89 + 1) + 8 * j);
            localIdentifier = [v51 localIdentifier];
            v53 = [v27 containsObject:localIdentifier];

            if ((v53 & 1) == 0)
            {
              [v84 addObject:v51];
            }
          }

          v48 = [v45 countByEnumeratingWithState:&v89 objects:v103 count:16];
        }

        while (v48);
      }

      v26 = v85;
      v23 = &GEOPOICategoryGasStation_ptr;
    }

    else
    {
      v47 = v84;
      [v84 addObjectsFromArray:memoriesCopy];
    }

    v55 = v23[233];
    v56 = objc_opt_new();
    v57 = v26;
    allKeys = [v26 allKeys];
    v59 = [allKeys count];

    if ([v47 count])
    {
      v60 = v47;
      v61 = 0;
      do
      {
        v62 = [v60 objectAtIndex:v61];
        v63 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          localIdentifier2 = [v62 localIdentifier];
          pendingState = [v62 pendingState];
          isFavorite = [v62 isFavorite];
          category = [v62 category];
          *buf = 138413058;
          v98 = localIdentifier2;
          v99 = 1024;
          *v100 = pendingState;
          *&v100[4] = 1024;
          *&v100[6] = isFavorite;
          v101 = 2048;
          v102 = category;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "#PhotoMemory,memoryInfo,id,%@,pendingState,%hu,isFavorite,%d,category,%lu", buf, 0x22u);
        }

        v68 = [(MOPhotoManager *)selfCopy _createEventFromPhotoMemory:v62];
        if (v68)
        {
          uuid = [v62 uuid];
          v70 = [v83 objectForKeyedSubscript:uuid];

          [(MOPhotoManager *)selfCopy _setDynamicPropertiesForMemoryEvent:v68 fromMemory:v62 keyAsset:v70];
          [v56 addObject:v68];
          v71 = objc_opt_new();
          localIdentifier3 = [v62 localIdentifier];
          [v71 setObject:localIdentifier3 forKey:@"photoMemoryID"];

          v73 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
          [v71 setObject:v73 forKey:@"photoMemoryIDFirstPersistTime"];

          v74 = [NSString stringWithFormat:@"%@_%d", @"photoMemory", &v59[v61]];
          [v57 setObject:v71 forKey:v74];
        }

        ++v61;
        v60 = v84;
      }

      while ([v84 count] > v61);
    }

    v75 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      v76 = [v56 count];
      *buf = 134217984;
      v98 = v76;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "#PhotoMemory, create %lu new memory events", buf, 0xCu);
    }

    [(MOPhotoManager *)selfCopy _persistPhotoMemoryPlistFile:v77 withData:v57];
    handlerCopy = v80;
    v80[2](v80, v56, 0);

    eventsCopy = v81;
    memoriesCopy = v82;
    v16 = v78;
    v12 = v79;
  }

  else
  {
    v54 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "#PhotoMemory,result of fetched memories contains no memory to create new events", buf, 2u);
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }

LABEL_13:
}

- (id)_findUnrehydratedEventsWithStoredEvents:(id)events photoMemories:(id)memories
{
  eventsCopy = events;
  memoriesCopy = memories;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#PhotoMemory,invoking _findUnrehydratedEventsWithStoredEvents", buf, 2u);
  }

  if ([eventsCopy count])
  {
    if ([memoriesCopy count])
    {
      v8 = objc_opt_new();
      v9 = objc_alloc_init(NSMutableArray);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v35 = memoriesCopy;
      v10 = memoriesCopy;
      v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v41;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v41 != v13)
            {
              objc_enumerationMutation(v10);
            }

            localIdentifier = [*(*(&v40 + 1) + 8 * i) localIdentifier];
            [v8 addObject:localIdentifier];
          }

          v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v12);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = eventsCopy;
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * j);
            identifierFromProvider = [v21 identifierFromProvider];
            v23 = [v8 containsObject:identifierFromProvider];

            if ((v23 & 1) == 0)
            {
              [v21 setRehydrationFailCount:{objc_msgSend(v21, "rehydrationFailCount") + 1}];
              [v9 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v18);
      }

      v24 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v9 count];
        *buf = 134217984;
        v51 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "#PhotoMemory,unrehydrated photo memories count, %lu", buf, 0xCu);
      }

      memoriesCopy = v35;
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v27 = eventsCopy;
      v28 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v45;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v44 + 1) + 8 * k) setRehydrationFailCount:{objc_msgSend(*(*(&v44 + 1) + 8 * k), "rehydrationFailCount") + 1}];
          }

          v29 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v29);
      }

      v32 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v27 count];
        *buf = 134217984;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "#PhotoMemory,result of fetched memories contains no memory, so all stored events are unRehydrated, count, %lu", buf, 0xCu);
      }

      v9 = v27;
    }
  }

  else
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "#PhotoMemory, no stored photo memeory events for finding unrehydrated events", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_getPhotoMemoryPlistFileURL
{
  v2 = +[MOPersistenceManager userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"photoMemoryID.plist"];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOPhotoManager _getPhotoMemoryPlistFileURL];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_readPhotoMemoryPlistFile:(id)file
{
  fileCopy = file;
  if (fileCopy)
  {
    v4 = +[NSFileManager defaultManager];
    path = [fileCopy path];
    v6 = [v4 fileExistsAtPath:path];

    if (v6)
    {
      v7 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(MOPhotoManager *)v7 _readPhotoMemoryPlistFile:v8, v9, v10, v11, v12, v13, v14];
      }

      v22 = 0;
      v15 = [[NSDictionary alloc] initWithContentsOfURL:fileCopy error:&v22];
      v16 = v22;
      if (v16)
      {
        v17 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [MOPhotoManager _readPhotoMemoryPlistFile:];
        }

        v18 = 0;
      }

      else
      {
        v18 = v15;
      }
    }

    else
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "No photo memory idplist found at path.", v21, 2u);
      }

      v18 = objc_alloc_init(NSDictionary);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_persistPhotoMemoryPlistFile:(id)file withData:(id)data
{
  fileCopy = file;
  if (fileCopy)
  {
    v17 = 0;
    v6 = [NSPropertyListSerialization dataWithPropertyList:data format:100 options:0 error:&v17];
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
      v12 = [v6 writeToURL:fileCopy options:805306369 error:&v16];
      v9 = v16;
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      v10 = v13;
      if (!v9 && (v12 & 1) != 0)
      {
        v11 = 1;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15[0] = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "photo memory id was successfully written to plist.", v15, 2u);
        }

        v9 = v10;
        goto LABEL_19;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager _persistPhotoMemoryPlistFile:withData:];
      }
    }

    else
    {
      v9 = v7;
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MOPhotoManager _persistPhotoMemoryPlistFile:withData:];
      }
    }

    v11 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPhoto);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MOPhotoManager _persistPhotoMemoryPlistFile:withData:];
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (void)deletePhotoMemoryPlistFile
{
  _getPhotoMemoryPlistFileURL = [(MOPhotoManager *)self _getPhotoMemoryPlistFileURL];
  [(MOPhotoManager *)self _deletePhotoMemoryPlistFile:_getPhotoMemoryPlistFileURL];
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithUniverse:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithUniverse:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithUniverse:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithUniverse:.cold.6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)intializeEntityTaggingService
{
  localizedDescription = [*self localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)getClassificationInfo:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getClassificationInfo:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_buildCuratedAssetMap:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchPhotoMemoriesBetweenStartDate:EndDate:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "#PhotoMemory,fetchPhotoMemoriesBetweenStartDate,startDate,%@,endDate,%@", v2, 0x16u);
}

- (void)_fetchPhotoMemoriesBetweenStartDate:(void *)a1 EndDate:handler:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(v1, v2, v3, v4, v5);
}

- (void)isDesirableCategoryOrTrigger:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a2 + 24);
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 1024;
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#PhotoMemory,isDesirableCategory,%d,isDesirableTrigger,%d", v4, 0xEu);
}

- (void)isDesirableCategoryOrTrigger:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#PhotoMemory,isDesirableCategory,%d", v2, 8u);
}

void __47__MOPhotoManager__saveEvents_category_handler___block_invoke_427_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = 134218242;
  v5 = v1;
  OUTLINED_FUNCTION_2_4();
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "saving category %lu photo events into database failed, error %@", &v4, 0x16u);
}

- (void)_rehydrateSharedPhotos:(void *)a1 handler:.cold.1(void *a1)
{
  v1 = [a1 fetchError];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_rehydrateSharedPhotos:handler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_rehydratePhotoMemories:(void *)a1 handler:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(v1, v2, v3, v4, v5);
}

- (void)_rehydratePhotoMemories:(void *)a1 handler:.cold.3(void *a1)
{
  v1 = [a1 fetchError];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_rehydratePhotoMemories:(void *)a1 handler:.cold.4(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(v1, v2, v3, v4, v5);
}

void __50__MOPhotoManager__rehydratePhotoMemories_handler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 identifierFromProvider];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(v2, v3, v4, v5, v6);
}

void __44__MOPhotoManager_fetchAssetUsingID_handler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 fetchError];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __44__MOPhotoManager_fetchAssetUsingID_handler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_rehydrateStoredEvents:fromPhotoMemories:fetchResult:handler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydrateStoredEvents:fromPhotoMemories:fetchResult:handler:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fetchCuratedAssetsForPhotoMemory:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 localIdentifier];
  v4 = [a2 fetchError];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_fetchCuratedAssetsForPhotoMemory:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 localIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_createNewEventsFromPhotoMemories:(void *)a1 storedEvents:handler:.cold.1(void *a1)
{
  v1 = [a1 fetchError];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_getPhotoMemoryPlistFileURL
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_readPhotoMemoryPlistFile:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistPhotoMemoryPlistFile:withData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistPhotoMemoryPlistFile:withData:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistPhotoMemoryPlistFile:withData:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end