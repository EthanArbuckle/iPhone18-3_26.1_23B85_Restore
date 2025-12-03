@interface MOTopicManager
+ (id)endOfDayBefore:(id)before;
+ (id)startOfDayBefore:(id)before;
- (MOTopicManager)initWithTopicStore:(id)store momentStore:(id)momentStore;
- (MOTopicManager)initWithUniverse:(id)universe;
- (id)createEventFromTopicQuery:(id)query;
- (id)rehydratedScoredTopicsEvent:(id)event;
- (id)rehydratedScoredTopicsEvents:(id)events;
- (void)fetchAndSaveScoredTopicsBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler;
@end

@implementation MOTopicManager

- (MOTopicManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v5 = objc_alloc_init(PPTopicStore);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  v9 = [(MOTopicManager *)self initWithTopicStore:v5 momentStore:v8];
  return v9;
}

- (MOTopicManager)initWithTopicStore:(id)store momentStore:(id)momentStore
{
  storeCopy = store;
  momentStoreCopy = momentStore;
  if (!momentStoreCopy)
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MOTopicManager initWithTopicStore:v15 momentStore:?];
    }

    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MOTopicManager.m" lineNumber:55 description:@"Invalid parameter not satisfying: momentStore"];

    goto LABEL_9;
  }

  if (!storeCopy)
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v18.receiver = self;
  v18.super_class = MOTopicManager;
  v10 = [(MOTopicManager *)&v18 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MOTopicManager", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_topicStore, store);
    objc_storeStrong(&v10->_momentStore, momentStore);
  }

  self = v10;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

+ (id)startOfDayBefore:(id)before
{
  beforeCopy = before;
  v4 = +[NSCalendar currentCalendar];
  v5 = [[NSDate alloc] initWithTimeInterval:beforeCopy sinceDate:-86400.0];

  v6 = [v4 startOfDayForDate:v5];

  return v6;
}

+ (id)endOfDayBefore:(id)before
{
  beforeCopy = before;
  v4 = [NSDate alloc];
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 startOfDayForDate:beforeCopy];

  v7 = [v4 initWithTimeInterval:v6 sinceDate:-1.0];

  return v7;
}

- (id)createEventFromTopicQuery:(id)query
{
  queryCopy = query;
  v4 = [MOEvent alloc];
  v5 = +[NSUUID UUID];
  fromDate = [queryCopy fromDate];
  toDate = [queryCopy toDate];
  v8 = +[NSDate date];
  v9 = [(MOEvent *)v4 initWithEventIdentifier:v5 startDate:fromDate endDate:toDate creationDate:v8 provider:3 category:7];

  toDate2 = [queryCopy toDate];

  v11 = [toDate2 dateByAddingTimeInterval:2419200.0];
  [(MOEvent *)v9 setExpirationDate:v11];

  return v9;
}

- (void)fetchAndSaveScoredTopicsBetweenStartDate:(id)date EndDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(MOTopicManager *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke;
  v15[3] = &unk_1003361C0;
  v16 = dateCopy;
  v17 = endDateCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

void __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fetchAndSaveScoredTopicsBetweenStartDate:%@ EndDate:%@", buf, 0x16u);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v5 = [*(a1 + 48) momentStore];
  v6 = *(a1 + 32);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_122;
  v28[3] = &unk_100336148;
  v29 = v6;
  v30 = *(a1 + 40);
  v31 = &v32;
  [v5 fetchEventsWithStartDateAfter:v29 Category:7 CompletionHandler:v28];

  if (*(v33 + 24) == 1)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Previous browsed topic MOEvent with matching dates found, skipping fetch.", buf, 2u);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, &__NSDictionary0__struct);
    }
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No previous browsed topic MOEvent with matching dates found, querying Portrait topics store now.", buf, 2u);
    }

    v10 = objc_opt_new();
    [v10 setFromDate:*(a1 + 32)];
    [v10 setToDate:*(a1 + 40)];
    [v10 setScoringDate:*(a1 + 40)];
    [v10 setDecayRate:0.000001];
    [v10 setScoreWithBiases:0];
    v11 = [NSSet setWithArray:kTopicSourceBundleIds];
    [v10 setMatchingSourceBundleIds:v11];

    v12 = [*(a1 + 48) topicStore];
    v27 = 0;
    v13 = [v12 scoresForTopicMapping:@"moments-topics" query:v10 error:&v27];
    v14 = v27;

    v15 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v13 count];
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Found %lu scored topics!", buf, 0xCu);
    }

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_cold_1(v13, v17);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = __Block_byref_object_copy__1;
    v38 = __Block_byref_object_dispose__1;
    v39 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_126;
    v24[3] = &unk_100336170;
    v18 = *(a1 + 48);
    v26 = buf;
    v24[4] = v18;
    v19 = v10;
    v25 = v19;
    [v13 enumerateKeysAndObjectsUsingBlock:v24];
    v20 = [*(a1 + 48) momentStore];
    v21 = *(*&buf[8] + 40);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_128;
    v22[3] = &unk_100336198;
    v23 = *(a1 + 56);
    [v20 storeEvent:v21 CompletionHandler:v22];

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v32, 8);
}

void __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_122(void *a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
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
        v9 = [v8 startDate];
        if ([v9 isEqualToDate:a1[4]])
        {
          v10 = [v8 endDate];
          v11 = [v10 isEqualToDate:a1[5]];

          if (v11)
          {
            *(*(a1[6] + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

LABEL_12:
}

void __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_126(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  [a3 doubleValue];
  if (v6 >= 0.55)
  {
    v7 = [*(a1 + 32) createEventFromTopicQuery:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found event above scoring threshold!", v11, 2u);
    }
  }
}

void __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_128_cold_1(v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saved browsed topics as event into database", v10, 2u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (id)rehydratedScoredTopicsEvent:(id)event
{
  eventCopy = event;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "rehydratedScoredTopicsEvent:%@", buf, 0xCu);
  }

  v6 = objc_opt_new();
  startDate = [eventCopy startDate];
  [v6 setFromDate:startDate];

  endDate = [eventCopy endDate];
  [v6 setToDate:endDate];

  endDate2 = [eventCopy endDate];
  [v6 setScoringDate:endDate2];

  [v6 setDecayRate:0.000001];
  [v6 setScoreWithBiases:0];
  v10 = objc_opt_new();
  topicStore = [(MOTopicManager *)self topicStore];
  v21 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __46__MOTopicManager_rehydratedScoredTopicsEvent___block_invoke;
  v19[3] = &unk_1003361E8;
  v12 = v10;
  v20 = v12;
  [topicStore iterScoresForTopicMapping:@"moments-topics" query:v6 error:&v21 block:v19];
  v13 = v21;

  if ([v12 count])
  {
    v14 = [eventCopy copy];
    [v14 setScoredTopics:v12];
    momentStore = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
    if (os_log_type_enabled(momentStore, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, momentStore, OS_LOG_TYPE_INFO, "event enriched:%@", buf, 0xCu);
    }
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "No topics scores higher than threshold is found, therefore deleting this event.", buf, 2u);
    }

    momentStore = [(MOTopicManager *)self momentStore];
    v22 = eventCopy;
    v17 = [NSArray arrayWithObjects:&v22 count:1];
    [momentStore removeEvents:v17 CompletionHandler:&__block_literal_global_1];

    v14 = 0;
  }

  return v14;
}

void __46__MOTopicManager_rehydratedScoredTopicsEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [v5 doubleValue];
  if (v6 >= 0.55)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void __46__MOTopicManager_rehydratedScoredTopicsEvent___block_invoke_133(id a1, NSError *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPortraitTopics);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__MOTopicManager_rehydratedScoredTopicsEvent___block_invoke_133_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting topic event in database succeeded!", v6, 2u);
  }
}

- (id)rehydratedScoredTopicsEvents:(id)events
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __47__MOTopicManager_rehydratedScoredTopicsEvents___block_invoke;
  v5[3] = &unk_100336250;
  v5[4] = self;
  v3 = [events _pas_mappedArrayWithTransform:v5];

  return v3;
}

void __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Scored topics: %@", &v2, 0xCu);
}

void __75__MOTopicManager_fetchAndSaveScoredTopicsBetweenStartDate_EndDate_handler___block_invoke_128_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Saving browsed topics as event into database failed, error %@", &v2, 0xCu);
}

void __46__MOTopicManager_rehydratedScoredTopicsEvent___block_invoke_133_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Deleting topic event in database failed, error %@", &v2, 0xCu);
}

@end