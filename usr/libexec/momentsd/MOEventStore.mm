@interface MOEventStore
- (BOOL)_persistEWAMetricsPrivate:(id)private withData:(id)data;
- (BOOL)_removeEntriesInPlist:(id)plist forCategory:(id)category forURL:(id)l;
- (BOOL)_shouldEventBeDeleted:(id)deleted patternDict:(id)dict forkey:(id)forkey;
- (BOOL)persistEWAMetrics:(id)metrics withData:(id)data;
- (MOEventStore)initWithUniverse:(id)universe;
- (id)_readEWAPlistFilePrivate:(id)private;
- (id)getEWAPlistFileURL;
- (id)readEWAPlistFile:(id)file;
- (void)_checkWorkoutExistsInHealthDB:(id)b handler:(id)handler;
- (void)_deleteEWAForExpiredEvents:(id)events;
- (void)_deleteEWAOnRehydrationFailure:(id)failure;
- (void)_deletePatternEvents:(id)events forContext:(id)context handler:(id)handler;
- (void)_deleteSensedEvents:(id)events forContext:(id)context handler:(id)handler;
- (void)_deleteStaleEWAEvents;
- (void)fetchAllEventsWithCompletionHandler:(id)handler;
- (void)fetchAnalyticsEventsWithOptions:(id)options CompletionHandler:(id)handler;
- (void)fetchEventsWithOptions:(id)options CompletionHandler:(id)handler;
- (void)fetchEventsWithStartDateAfter:(id)after Category:(unint64_t)category CompletionHandler:(id)handler;
- (void)fetchLastEventOfCategories:(id)categories isHighConfidenceOnly:(BOOL)only CompletionHandler:(id)handler;
- (void)fetchLastEventOfCategory:(unint64_t)category CompletionHandler:(id)handler;
- (void)getEWAPlistFileURL;
- (void)purgeExpiredEventsWithCompletionHandler:(id)handler;
- (void)purgeRehydrationFailedEventsForType:(id)type rehydrationFailCount:(int)count CompletionHandler:(id)handler;
- (void)purgeUnknownEventsWithCompletionHandler:(id)handler;
- (void)purgeVisitEventsBeforeDate:(id)date WithCompletionHandler:(id)handler;
- (void)removeAllEventsWithCompletionHandler:(id)handler;
- (void)removeEvents:(id)events CompletionHandler:(id)handler;
- (void)storeEvent:(id)event CompletionHandler:(id)handler;
- (void)storeEvents:(id)events CompletionHandler:(id)handler;
@end

@implementation MOEventStore

- (MOEventStore)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [universeCopy getService:v10];

  v12 = objc_alloc_init(HKHealthStore);
  if (!v8)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v19 = +[NSAssertionHandler currentHandler];
    v20 = v19;
    v21 = @"Invalid parameter not satisfying: persistenceManager";
    v22 = a2;
    selfCopy2 = self;
    v24 = 38;
    goto LABEL_12;
  }

  if (!v11)
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v19 = +[NSAssertionHandler currentHandler];
    v20 = v19;
    v21 = @"Invalid parameter not satisfying: configurationManager";
    v22 = a2;
    selfCopy2 = self;
    v24 = 39;
LABEL_12:
    [v19 handleFailureInMethod:v22 object:selfCopy2 file:@"MOEventStore.m" lineNumber:v24 description:v21];

    selfCopy3 = 0;
    goto LABEL_13;
  }

  v27.receiver = self;
  v27.super_class = MOEventStore;
  v13 = [(MOEventStore *)&v27 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MOEventStore", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_persistenceManager, v8);
    objc_storeStrong(&v13->_configurationManager, v11);
    objc_storeStrong(&v13->_healthStore, v12);
  }

  self = v13;
  selfCopy3 = self;
LABEL_13:

  return selfCopy3;
}

- (void)storeEvent:(id)event CompletionHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __45__MOEventStore_storeEvent_CompletionHandler___block_invoke;
  v11[3] = &unk_100338338;
  v12 = eventCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventCopy;
  [persistenceManager performBlockAndWait:v11];
}

void __45__MOEventStore_storeEvent_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MOEventMO managedObjectWithEvent:v4 inManagedObjectContext:v3];
    v13 = 0;
    v6 = [v3 save:&v13];
    v7 = v13;
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "saving event succeeded", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __45__MOEventStore_storeEvent_CompletionHandler___block_invoke_cold_1();
    }

    [v3 reset];
    v12 = *(a1 + 40);
    if (v12)
    {
      v15 = @"resultNumberOfEvents";
      v16 = &off_100369700;
      v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      (*(v12 + 16))(v12, v7, v11);
      goto LABEL_13;
    }
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "no event to be saved", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v17 = @"resultNumberOfEvents";
      v18 = &off_1003696E8;
      v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v7[2](v7, 0, v11);
      v7 = 0;
LABEL_13:
    }
  }
}

- (void)storeEvents:(id)events CompletionHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __46__MOEventStore_storeEvents_CompletionHandler___block_invoke;
  v11[3] = &unk_100338338;
  v12 = eventsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventsCopy;
  [persistenceManager performBlockAndWait:v11];
}

void __46__MOEventStore_storeEvents_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v30 = a2;
  if ([*(a1 + 32) count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = a1;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v34;
      do
      {
        v6 = 0;
        do
        {
          if (*v34 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v33 + 1) + 8 * v6);
          v8 = +[MOEventMO fetchRequest];
          v9 = [v7 eventIdentifier];
          v10 = [NSPredicate predicateWithFormat:@"eventIdentifier == %@", v9];
          [v8 setPredicate:v10];

          v32 = 0;
          v11 = [v30 executeFetchRequest:v8 error:&v32];
          v12 = v32;
          if (!v12 && [v11 count] && (objc_msgSend(v11, "lastObject"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = v15;
            v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v40 = v7;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "update event, %@", buf, 0xCu);
            }

            [MOEventMO setPropertiesOfEventMO:v16 withEvent:v7];
          }

          else
          {
            v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v40 = v7;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "save event, %@", buf, 0xCu);
            }

            v14 = [MOEventMO managedObjectWithEvent:v7 inManagedObjectContext:v30];
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v18 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
        v4 = v18;
      }

      while (v18);
    }

    v31 = 0;
    v19 = [v30 save:&v31];
    v20 = v31;
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    v22 = v21;
    if (v19)
    {
      a1 = v28;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = [*(v28 + 32) count];
        *buf = 134217984;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "saving events succeeded, event count, %lu", buf, 0xCu);
      }
    }

    else
    {
      a1 = v28;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __46__MOEventStore_storeEvents_CompletionHandler___block_invoke_cold_1();
      }
    }

    [v30 reset];
  }

  else
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "no events to be saved", buf, 2u);
    }

    v20 = 0;
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    v37 = @"resultNumberOfEvents";
    v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
    v38 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    (*(v25 + 16))(v25, v20, v27);
  }
}

- (void)removeEvents:(id)events CompletionHandler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  if ([eventsCopy count])
  {
    persistenceManager = [(MOEventStore *)self persistenceManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __47__MOEventStore_removeEvents_CompletionHandler___block_invoke;
    v11[3] = &unk_100338360;
    v12 = eventsCopy;
    v14 = a2;
    v13 = handlerCopy;
    [persistenceManager performBlockAndWait:v11];

    v10 = v12;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v15 = @"resultNumberOfEvents";
    v16 = &off_1003696E8;
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
    goto LABEL_5;
  }

LABEL_6:
}

void __47__MOEventStore_removeEvents_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v67 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v52 + 1) + 8 * i) eventIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v52 objects:v67 count:16];
    }

    while (v7);
  }

  v11 = +[MOEventMO fetchRequest];
  v45 = v4;
  v12 = [NSPredicate predicateWithFormat:@"eventIdentifier IN %@", v4];
  [v11 setPredicate:v12];

  [v11 setReturnsObjectsAsFaults:0];
  v51 = 0;
  v13 = [v3 executeFetchRequest:v11 error:&v51];
  v14 = v51;
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v40 = NSStringFromSelector(*(a1 + 48));
    v41 = [v13 count];
    *buf = 138413058;
    v60 = v40;
    v61 = 2112;
    v62 = v11;
    v63 = 2048;
    v64 = v41;
    v65 = 2112;
    v66 = v14;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v14)
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v14, &__NSDictionary0__struct);
    }

    [v3 reset];
  }

  else
  {
    if ([v13 count])
    {
      v42 = v13;
      v43 = v11;
      v44 = a1;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v48;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v48 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v47 + 1) + 8 * j);
            [v3 deleteObject:v22];
            v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              [v22 eventIdentifier];
              v25 = v24 = v20;
              [v22 provider];
              v27 = v26 = v17;
              [v22 category];
              v29 = v28 = v3;
              v30 = [v22 startDate];
              *buf = 138413058;
              v60 = v25;
              v61 = 2112;
              v62 = v27;
              v63 = 2112;
              v64 = v29;
              v65 = 2112;
              v66 = v30;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "trying to remove event, id, %@, provider, %@, category, %@, startDate, %@", buf, 0x2Au);

              v3 = v28;
              v17 = v26;

              v20 = v24;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v19);
      }

      v31 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v17 count];
        *buf = 134217984;
        v60 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "trying to remove events count %lu", buf, 0xCu);
      }

      v46 = 0;
      v33 = [v3 save:&v46];
      v34 = v46;
      v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      v36 = v35;
      v11 = v43;
      a1 = v44;
      v14 = 0;
      if (v33)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "saving event deletion operation succeeded", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __47__MOEventStore_removeEvents_CompletionHandler___block_invoke_cold_1();
      }

      v13 = v42;
    }

    else
    {
      v34 = 0;
    }

    [v3 reset];
    v37 = *(a1 + 40);
    if (v37)
    {
      v56 = @"resultNumberOfEvents";
      v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 count]);
      v57 = v38;
      v39 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      (*(v37 + 16))(v37, v34, v39);
    }
  }
}

- (void)removeAllEventsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __53__MOEventStore_removeAllEventsWithCompletionHandler___block_invoke;
  v8[3] = &unk_100338388;
  v9 = handlerCopy;
  v10 = a2;
  v7 = handlerCopy;
  [persistenceManager performBlockAndWait:v8];
}

void __53__MOEventStore_removeAllEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v28 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v28];
  v6 = v28;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(*(a1 + 40));
    v22 = [v5 count];
    *buf = 138413058;
    v31 = v21;
    v32 = 2112;
    v33 = v4;
    v34 = 2048;
    v35 = v22;
    v36 = 2112;
    v37 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v6)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }

    [v3 reset];
  }

  else
  {
    if ([v5 count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [v3 deleteObject:*(*(&v24 + 1) + 8 * v13)];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v11);
      }

      v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v9 count];
        *buf = 134217984;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "trying to remove events count %lu", buf, 0xCu);
      }

      v23 = 0;
      v16 = [v3 save:&v23];
      v17 = v23;
      v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      v19 = v18;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "saving event deletion operation succeeded", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __47__MOEventStore_removeEvents_CompletionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v17 = 0;
    }

    [v3 reset];
    v20 = *(a1 + 32);
    if (v20)
    {
      (*(v20 + 16))(v20, v17);
    }
  }
}

- (void)purgeExpiredEventsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __56__MOEventStore_purgeExpiredEventsWithCompletionHandler___block_invoke;
  v8[3] = &unk_100338360;
  v9 = handlerCopy;
  v10 = a2;
  v8[4] = self;
  v7 = handlerCopy;
  [persistenceManager performBlockAndWait:v8];
}

void __56__MOEventStore_purgeExpiredEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v5 = [*(a1 + 32) configurationManager];
  [v5 getDoubleSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:2419200.0];
  v7 = v6;

  v8 = +[NSDate date];
  v9 = [NSDate dateWithTimeInterval:v8 sinceDate:-v7];

  v10 = +[NSDate date];
  v11 = [NSPredicate predicateWithFormat:@"expirationDate < %@ || endDate < %@", v10, v9];
  [v4 setPredicate:v11];

  [v4 setReturnsObjectsAsFaults:0];
  v37 = 0;
  v12 = [v3 executeFetchRequest:v4 error:&v37];
  v13 = v37;
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v30 = NSStringFromSelector(*(a1 + 48));
    v31 = [v12 count];
    *buf = 138413058;
    v42 = v30;
    v43 = 2112;
    v44 = v4;
    v45 = 2048;
    v46 = v31;
    v47 = 2112;
    v48 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  [*(a1 + 32) _deleteStaleEWAEvents];
  if (v13)
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v13, &__NSDictionary0__struct);
    }

    [v3 reset];
  }

  else
  {
    if ([v12 count])
    {
      [*(a1 + 32) _deleteEWAForExpiredEvents:v12];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          v20 = 0;
          do
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [v3 deleteObject:*(*(&v33 + 1) + 8 * v20)];
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v18);
      }

      v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v16 count];
        *buf = 134217984;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "trying to purge events count %lu", buf, 0xCu);
      }

      v32 = 0;
      v23 = [v3 save:&v32];
      v24 = v32;
      v25 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      v26 = v25;
      if (v23)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "saving event purge operation succeeded", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __56__MOEventStore_purgeExpiredEventsWithCompletionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v24 = 0;
    }

    [v3 reset];
    v27 = *(a1 + 40);
    if (v27)
    {
      v38 = @"resultNumberOfEvents";
      v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
      v39 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      (*(v27 + 16))(v27, v24, v29);
    }
  }
}

- (void)purgeUnknownEventsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __56__MOEventStore_purgeUnknownEventsWithCompletionHandler___block_invoke;
  v8[3] = &unk_100338388;
  v9 = handlerCopy;
  v10 = a2;
  v7 = handlerCopy;
  [persistenceManager performBlockAndWait:v8];
}

void __56__MOEventStore_purgeUnknownEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"category == 0"];
  v46[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"provider == 0"];
  v46[1] = v6;
  v7 = [NSArray arrayWithObjects:v46 count:2];
  v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];
  [v4 setPredicate:v8];

  [v4 setReturnsObjectsAsFaults:0];
  v34 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v34];
  v10 = v34;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v27 = NSStringFromSelector(*(a1 + 40));
    v28 = [v9 count];
    *buf = 138413058;
    v39 = v27;
    v40 = 2112;
    v41 = v4;
    v42 = 2048;
    v43 = v28;
    v44 = 2112;
    v45 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v10)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v10, &__NSDictionary0__struct);
    }

    [v3 reset];
  }

  else
  {
    if ([v9 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          v17 = 0;
          do
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [v3 deleteObject:*(*(&v30 + 1) + 8 * v17)];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v30 objects:v37 count:16];
        }

        while (v15);
      }

      v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v13 count];
        *buf = 134217984;
        v39 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "trying to purge unknown events count %lu", buf, 0xCu);
      }

      v29 = 0;
      v20 = [v3 save:&v29];
      v21 = v29;
      v22 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      v23 = v22;
      if (v20)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "saving event purge operation succeeded", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __56__MOEventStore_purgeExpiredEventsWithCompletionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v21 = 0;
    }

    [v3 reset];
    v24 = *(a1 + 32);
    if (v24)
    {
      v35 = @"resultNumberOfEvents";
      v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
      v36 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      (*(v24 + 16))(v24, v21, v26);
    }
  }
}

- (void)purgeRehydrationFailedEventsForType:(id)type rehydrationFailCount:(int)count CompletionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  if (count > 0)
  {
    persistenceManager = [(MOEventStore *)self persistenceManager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __91__MOEventStore_purgeRehydrationFailedEventsForType_rehydrationFailCount_CompletionHandler___block_invoke;
    v14[3] = &unk_1003383D8;
    countCopy = count;
    v18 = a2;
    v15 = typeCopy;
    selfCopy = self;
    v17 = handlerCopy;
    [persistenceManager performBlockAndWait:v14];

    v12 = v15;
LABEL_7:

    goto LABEL_8;
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MOEventStore purgeRehydrationFailedEventsForType:rehydrationFailCount:CompletionHandler:];
  }

  if (handlerCopy)
  {
    v20 = @"resultNumberOfEvents";
    v21 = &off_1003696E8;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
    goto LABEL_7;
  }

LABEL_8:
}

void __91__MOEventStore_purgeRehydrationFailedEventsForType_rehydrationFailCount_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"rehydrationFailCount >= %d", *(a1 + 64)];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v28 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v28];
  v7 = v28;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = NSStringFromSelector(*(a1 + 56));
    v14 = [v6 count];
    v15 = *(a1 + 32);
    *buf = 138413314;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2048;
    v32 = v14;
    *v33 = 2112;
    *&v33[2] = v7;
    *&v33[10] = 2112;
    *&v33[12] = v15;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@ for %@", buf, 0x34u);
  }

  if (v7)
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v7, &__NSDictionary0__struct);
    }

LABEL_6:
    [v3 reset];
    goto LABEL_21;
  }

  if (![v6 count])
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, &__NSDictionary0__struct);
    }

    goto LABEL_6;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__15;
  *v33 = __Block_byref_object_dispose__15;
  *&v33[8] = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if ([*(a1 + 32) isEqualToString:@"Sensed_event"])
  {
    v10 = *(a1 + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __91__MOEventStore_purgeRehydrationFailedEventsForType_rehydrationFailCount_CompletionHandler___block_invoke_146;
    v23[3] = &unk_1003383B0;
    v23[4] = buf;
    v23[5] = &v24;
    [v10 _deleteSensedEvents:v6 forContext:v3 handler:v23];
  }

  else if ([*(a1 + 32) isEqualToString:@"Pattern_event"])
  {
    [*(a1 + 40) _deleteEWAOnRehydrationFailure:v6];
    v12 = *(a1 + 40);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __91__MOEventStore_purgeRehydrationFailedEventsForType_rehydrationFailCount_CompletionHandler___block_invoke_2;
    v22[3] = &unk_1003383B0;
    v22[4] = buf;
    v22[5] = &v24;
    [v12 _deletePatternEvents:v6 forContext:v3 handler:v22];
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __91__MOEventStore_purgeRehydrationFailedEventsForType_rehydrationFailCount_CompletionHandler___block_invoke_cold_1();
    }

    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MOEventStore.m" lineNumber:387 description:{@"purgeRehydrationFailedEventsForType, Unrecognized event type for event purge (in %s:%d)", "-[MOEventStore purgeRehydrationFailedEventsForType:rehydrationFailCount:CompletionHandler:]_block_invoke", 387}];
  }

  [v3 reset];
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = *(*&buf[8] + 40);
    v29 = @"resultNumberOfEvents";
    v20 = [NSNumber numberWithUnsignedInteger:v25[3]];
    v30 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    (*(v18 + 16))(v18, v19, v21);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

LABEL_21:
}

void __91__MOEventStore_purgeRehydrationFailedEventsForType_rehydrationFailCount_CompletionHandler___block_invoke_146(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void __91__MOEventStore_purgeRehydrationFailedEventsForType_rehydrationFailCount_CompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

- (void)_deleteSensedEvents:(id)events forContext:(id)context handler:(id)handler
{
  eventsCopy = events;
  contextCopy = context;
  handlerCopy = handler;
  if (![eventsCopy count])
  {
    v18 = 0;
    if (!handlerCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [contextCopy deleteObject:*(*(&v22 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v12);
  }

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v10 count];
    *buf = 134217984;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "purgeRehydrationFailedEventsWithCompletionHandler, trying to purge events of rehydration failed more than threshold, events count %lu", buf, 0xCu);
  }

  v21 = 0;
  v17 = [contextCopy save:&v21];
  v18 = v21;
  v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "purgeRehydrationFailedEventsWithCompletionHandler, saving event purge operation succeeded", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [MOEventStore _deleteSensedEvents:forContext:handler:];
  }

  if (handlerCopy)
  {
LABEL_19:
    handlerCopy[2](handlerCopy, v18, [eventsCopy count]);
  }

LABEL_20:
}

- (void)_deletePatternEvents:(id)events forContext:(id)context handler:(id)handler
{
  eventsCopy = events;
  contextCopy = context;
  handlerCopy = handler;
  if ([eventsCopy count])
  {
    v11 = +[MOEventMO fetchRequest];
    v12 = [NSPredicate predicateWithFormat:@"provider == %d", 5];
    [v11 setPredicate:v12];

    [v11 setReturnsObjectsAsFaults:0];
    v70 = 0;
    v44 = [contextCopy executeFetchRequest:v11 error:&v70];
    v13 = v70;
    if (v13)
    {
      handlerCopy[2](handlerCopy, v13, 0);
      v14 = 0;
    }

    else
    {
      v38 = v11;
      v39 = handlerCopy;
      v40 = contextCopy;
      v52 = objc_opt_new();
      v77[0] = @"kEventPatternAnomalousEventIdentifier";
      v77[1] = @"kEventPatternTrendEventIdentifierList";
      v77[2] = @"kEventPatternRoutineEventIdentifierList";
      v48 = [NSArray arrayWithObjects:v77 count:3];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v41 = eventsCopy;
      obj = eventsCopy;
      v45 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v45)
      {
        v43 = *v67;
        do
        {
          v16 = 0;
          do
          {
            if (*v67 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v46 = v16;
            v17 = *(*(&v66 + 1) + 8 * v16);
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v47 = v44;
            v50 = [v47 countByEnumeratingWithState:&v62 objects:v75 count:16];
            if (v50)
            {
              v49 = *v63;
              do
              {
                v18 = 0;
                do
                {
                  if (*v63 != v49)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v51 = v18;
                  v19 = *(*(&v62 + 1) + 8 * v18);
                  v58 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v20 = v48;
                  v21 = [v20 countByEnumeratingWithState:&v58 objects:v74 count:16];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = *v59;
                    do
                    {
                      for (i = 0; i != v22; i = i + 1)
                      {
                        if (*v59 != v23)
                        {
                          objc_enumerationMutation(v20);
                        }

                        v25 = *(*(&v58 + 1) + 8 * i);
                        eventIdentifier = [v17 eventIdentifier];
                        patterns = [v19 patterns];
                        LODWORD(v25) = [(MOEventStore *)self _shouldEventBeDeleted:eventIdentifier patternDict:patterns forkey:v25];

                        if (v25)
                        {
                          [v52 addObject:v19];
                        }
                      }

                      v22 = [v20 countByEnumeratingWithState:&v58 objects:v74 count:16];
                    }

                    while (v22);
                  }

                  v18 = v51 + 1;
                }

                while ((v51 + 1) != v50);
                v50 = [v47 countByEnumeratingWithState:&v62 objects:v75 count:16];
              }

              while (v50);
            }

            v16 = v46 + 1;
          }

          while ((v46 + 1) != v45);
          v45 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
        }

        while (v45);
      }

      if ([v52 count])
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v28 = v52;
        v29 = [v28 countByEnumeratingWithState:&v54 objects:v73 count:16];
        contextCopy = v40;
        eventsCopy = v41;
        v13 = 0;
        v11 = v38;
        if (v29)
        {
          v30 = v29;
          v31 = *v55;
          do
          {
            for (j = 0; j != v30; j = j + 1)
            {
              if (*v55 != v31)
              {
                objc_enumerationMutation(v28);
              }

              [v40 deleteObject:*(*(&v54 + 1) + 8 * j)];
            }

            v30 = [v28 countByEnumeratingWithState:&v54 objects:v73 count:16];
          }

          while (v30);
        }

        v53 = 0;
        v33 = [v40 save:&v53];
        v14 = v53;
        v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
        v35 = v34;
        if (v33)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v36 = [v28 count];
            *buf = 134217984;
            v72 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Pattern event deletion succeeded, deleted %lu", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [MOEventStore _deletePatternEvents:v14 forContext:v28 handler:v35];
        }

        handlerCopy = v39;
        v39[2](v39, v14, [v28 count]);
      }

      else
      {
        v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
        contextCopy = v40;
        eventsCopy = v41;
        v13 = 0;
        v11 = v38;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "No pattern events deleted as count is 0", buf, 2u);
        }

        handlerCopy = v39;
        v39[2](v39, 0, 0);
        v14 = 0;
      }
    }
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No source redhydration failure, pattern events unaffected", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (BOOL)_shouldEventBeDeleted:(id)deleted patternDict:(id)dict forkey:(id)forkey
{
  deletedCopy = deleted;
  dictCopy = dict;
  forkeyCopy = forkey;
  if (dictCopy)
  {
    v10 = [dictCopy objectForKey:forkeyCopy];

    if (v10)
    {
      v11 = [dictCopy objectForKeyedSubscript:forkeyCopy];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          +[NSUUID UUID];
          v12 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v11];
          if ([v12 isEqual:deletedCopy])
          {
            v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v30 = v11;
              v31 = 2112;
              v32 = forkeyCopy;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Pattern to be deleted has UUID %@ for pattern type %@", buf, 0x16u);
            }

LABEL_27:
            v14 = 1;
            goto LABEL_28;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            obj = v11;
            v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v25;
              while (2)
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v25 != v17)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v19 = *(*(&v24 + 1) + 8 * i);
                  +[NSUUID UUID];
                  v20 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v19];
                  if ([v20 isEqual:deletedCopy])
                  {
                    v21 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v30 = v19;
                      v31 = 2112;
                      v32 = forkeyCopy;
                      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Pattern to be deleted has UUID %@ for pattern type %@", buf, 0x16u);
                    }

                    goto LABEL_27;
                  }
                }

                v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_23;
          }

          v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [MOEventStore _shouldEventBeDeleted:v11 patternDict:v12 forkey:?];
          }
        }
      }

LABEL_23:
      v14 = 0;
LABEL_28:

      goto LABEL_29;
    }
  }

  v14 = 0;
LABEL_29:

  return v14;
}

- (void)_deleteEWAOnRehydrationFailure:(id)failure
{
  failureCopy = failure;
  v4 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = failureCopy;
  v6 = [v5 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v59;
    do
    {
      v9 = 0;
      do
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v58 + 1) + 8 * v9);
        category = [v10 category];
        if ([category integerValue] == 16)
        {
          goto LABEL_9;
        }

        category2 = [v10 category];
        if ([category2 integerValue] == 10)
        {

LABEL_9:
LABEL_10:
          eventIdentifier = [v10 eventIdentifier];
          uUIDString = [eventIdentifier UUIDString];
          [v4 addObject:uUIDString];

          goto LABEL_11;
        }

        category3 = [v10 category];
        integerValue = [category3 integerValue];

        if (integerValue == 2)
        {
          goto LABEL_10;
        }

LABEL_11:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v17 = [v5 countByEnumeratingWithState:&v58 objects:v64 count:16];
      v7 = v17;
    }

    while (v17);
  }

  getEWAPlistFileURL = [(MOEventStore *)self getEWAPlistFileURL];
  if (getEWAPlistFileURL)
  {
    v19 = [(MOEventStore *)self readEWAPlistFile:getEWAPlistFileURL];
    v20 = v19;
    if (!v19)
    {
LABEL_44:

      goto LABEL_45;
    }

    v47 = [v19 mutableCopy];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v21 = v4;
    v44 = [v21 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v44)
    {
      v38 = getEWAPlistFileURL;
      v39 = v5;
      v40 = v4;
      v46 = 0;
      obj = v21;
      v43 = *v55;
      do
      {
        v22 = 0;
        do
        {
          if (*v55 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = v22;
          v23 = *(*(&v54 + 1) + 8 * v22);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          allKeys = [v20 allKeys];
          v24 = [allKeys countByEnumeratingWithState:&v50 objects:v62 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v51;
            do
            {
              for (i = 0; i != v25; i = i + 1)
              {
                if (*v51 != v26)
                {
                  objc_enumerationMutation(allKeys);
                }

                v28 = *(*(&v50 + 1) + 8 * i);
                v29 = v20;
                v30 = [v20 objectForKeyedSubscript:v28];
                v31 = [v30 objectForKey:@"EWAEventUUID"];

                if (v31)
                {
                  v32 = [v30 objectForKeyedSubscript:@"EWAEventUUID"];
                  v33 = [v23 isEqualToString:v32];

                  if (v33)
                  {
                    [v47 removeObjectForKey:v28];
                    v46 = 1;
                  }
                }

                v20 = v29;
              }

              v25 = [allKeys countByEnumeratingWithState:&v50 objects:v62 count:16];
            }

            while (v25);
          }

          v22 = v45 + 1;
        }

        while ((v45 + 1) != v44);
        v44 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v44);

      v5 = v39;
      v4 = v40;
      getEWAPlistFileURL = v38;
      if (v46)
      {
        v34 = [(MOEventStore *)self persistEWAMetrics:v38 withData:v47];
        v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
        if (!v34)
        {
          if (!v36)
          {
            goto LABEL_43;
          }

          *buf = 0;
          v37 = "Failed updating EWA pList on rehydration failure";
          goto LABEL_42;
        }

        if (v36)
        {
          *buf = 0;
          v37 = "Succesfully updated EWA pList on rehydration failure";
LABEL_42:
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, v37, buf, 2u);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }

    else
    {
    }

    v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v37 = "No change in EWA on rehydration failure";
      goto LABEL_42;
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_45:
}

- (void)_checkWorkoutExistsInHealthDB:(id)b handler:(id)handler
{
  bCopy = b;
  handlerCopy = handler;
  v8 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = bCopy;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[NSUUID alloc] initWithUUIDString:*(*(&v26 + 1) + 8 * v13)];
        [v8 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v15 = [NSSet setWithArray:v8];
  v16 = [HKQuery predicateForObjectsWithUUIDs:v15];

  v17 = objc_alloc_init(NSMutableArray);
  v18 = [HKQueryDescriptor alloc];
  v19 = +[HKObjectType workoutType];
  v20 = [v18 initWithSampleType:v19 predicate:v16];

  [v17 addObject:v20];
  v21 = [HKSampleQuery alloc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __54__MOEventStore__checkWorkoutExistsInHealthDB_handler___block_invoke;
  v24[3] = &unk_100338400;
  v25 = handlerCopy;
  v22 = handlerCopy;
  v23 = [v21 initWithQueryDescriptors:v17 limit:0 resultsHandler:v24];
  [(HKHealthStore *)self->_healthStore executeQuery:v23];
}

void __54__MOEventStore__checkWorkoutExistsInHealthDB_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__MOEventStore__checkWorkoutExistsInHealthDB_handler___block_invoke_cold_1();
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v9 = *(a1 + 32);
    [a3 count];
    v8 = *(v9 + 16);
  }

  v8();
}

- (BOOL)_removeEntriesInPlist:(id)plist forCategory:(id)category forURL:(id)l
{
  selfCopy = self;
  plistCopy = plist;
  categoryCopy = category;
  lCopy = l;
  v8 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = categoryCopy;
  v9 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        if ([v13 integerValue] == 2 || objc_msgSend(v13, "integerValue") == 16)
        {
          [v8 addObject:@"MOEventCategoryWorkout"];
          [v8 addObject:@"MOEventCategoryMotionActivity"];
        }

        if ([v13 integerValue] == 10)
        {
          [v8 addObject:@"MOEventCategorySignificantContact"];
        }

        if ([v13 integerValue] == 1)
        {
          [v8 addObject:@"MOEventCategoryProx"];
          [v8 addObject:@"MOEventCategoryPeopleDensityEvent"];
          [v8 addObject:@"MOEventTimeAtHomeAnomaly"];
        }

        if ([v13 integerValue] == 15 || objc_msgSend(v13, "integerValue") == 23 || objc_msgSend(v13, "integerValue") == 21)
        {
          [v8 addObject:@"MOEventCategoryProx"];
          [v8 addObject:@"MOEventCategoryPeopleDensityEvent"];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v10);
  }

  v14 = [plistCopy mutableCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v37 = *v45;
    v35 = v15;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v20 = *(*(&v44 + 1) + 8 * j);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        allKeys = [plistCopy allKeys];
        v22 = [allKeys countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v41;
          do
          {
            for (k = 0; k != v23; k = k + 1)
            {
              if (*v41 != v24)
              {
                objc_enumerationMutation(allKeys);
              }

              v26 = *(*(&v40 + 1) + 8 * k);
              if ([v26 hasPrefix:v20])
              {
                [v14 removeObjectForKey:v26];
                v18 = 1;
              }
            }

            v23 = [allKeys countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v23);
        }
      }

      v15 = v35;
      v17 = [v35 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v17);

    if (v18)
    {
      v27 = lCopy;
      v28 = [(MOEventStore *)selfCopy persistEWAMetrics:lCopy withData:v14];
      v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (v28)
      {
        if (v30)
        {
          *buf = 0;
          v31 = 1;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "EWA update on settings change successfull", buf, 2u);
        }

        else
        {
          v31 = 1;
        }
      }

      else
      {
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "EWA update on settings change failed", buf, 2u);
        }

        v31 = 0;
      }

      goto LABEL_43;
    }
  }

  else
  {
  }

  v29 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  v31 = 1;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "No change in EWA on settings change", buf, 2u);
  }

  v27 = lCopy;
LABEL_43:

  return v31;
}

- (void)_deleteStaleEWAEvents
{
  getEWAPlistFileURL = [(MOEventStore *)self getEWAPlistFileURL];
  if (getEWAPlistFileURL)
  {
    v4 = [(MOEventStore *)self readEWAPlistFile:getEWAPlistFileURL];
    v5 = v4;
    if (!v4)
    {
LABEL_23:

      goto LABEL_24;
    }

    v25 = [v4 mutableCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v5 allKeys];
    v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = v6;
    selfCopy = self;
    v24 = getEWAPlistFileURL;
    v8 = 0;
    v9 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:{v11, selfCopy}];
        v13 = [v12 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
        [v13 doubleValue];
        v15 = v14;

        v16 = +[NSDate date];
        [v16 timeIntervalSinceReferenceDate];
        v18 = v17 - v15;

        if (v18 >= 31536000.0)
        {
          [v25 removeObjectForKey:v11];
          v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v11;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Removing %@ entries in EWA as it is stale", buf, 0xCu);
          }

          v8 = 1;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);

    getEWAPlistFileURL = v24;
    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = [(MOEventStore *)selfCopy persistEWAMetrics:v24 withData:v25];
    obj = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    v21 = os_log_type_enabled(obj, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v21)
      {
        *buf = 0;
        v22 = "EWA pList succesfully updated by removing stale entries";
LABEL_20:
        _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_INFO, v22, buf, 2u);
      }
    }

    else if (v21)
    {
      *buf = 0;
      v22 = "EWA pList update failed while removing stale entries";
      goto LABEL_20;
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

LABEL_24:
}

- (void)_deleteEWAForExpiredEvents:(id)events
{
  eventsCopy = events;
  selfCopy = self;
  getEWAPlistFileURL = [(MOEventStore *)self getEWAPlistFileURL];
  v4 = getEWAPlistFileURL;
  if (!getEWAPlistFileURL)
  {
    goto LABEL_51;
  }

  v5 = [(MOEventStore *)self readEWAPlistFile:?];
  v47 = v5;
  if (!v5)
  {
    goto LABEL_50;
  }

  v46 = [v5 mutableCopy];
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = eventsCopy;
  v44 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (!v44)
  {
    goto LABEL_25;
  }

  v43 = *v65;
  do
  {
    for (i = 0; i != v44; i = i + 1)
    {
      if (*v65 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v64 + 1) + 8 * i);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      allKeys = [v47 allKeys];
      v8 = [allKeys countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v8)
      {
        v9 = *v61;
        v48 = allKeys;
        do
        {
          for (j = 0; j != v8; j = j + 1)
          {
            if (*v61 != v9)
            {
              objc_enumerationMutation(v48);
            }

            v11 = *(*(&v60 + 1) + 8 * j);
            if (([v11 hasPrefix:@"MOEventCategoryWorkout"] & 1) == 0)
            {
              category = [v6 category];
              if ([category integerValue] == 16)
              {
              }

              else
              {
                category2 = [v6 category];
                v14 = [category2 integerValue] == 10;

                if (!v14)
                {
                  continue;
                }
              }

              v15 = [v47 objectForKeyedSubscript:v11];
              v16 = [v15 objectForKey:@"EWAEventUUID"];

              if (v16)
              {
                eventIdentifier = [v6 eventIdentifier];
                uUIDString = [eventIdentifier UUIDString];
                v19 = [v15 objectForKeyedSubscript:@"EWAEventUUID"];
                v20 = [uUIDString isEqualToString:v19];

                if (v20)
                {
                  [v46 removeObjectForKey:v11];
                  *(v69 + 24) = 1;
                }
              }
            }
          }

          allKeys = v48;
          v8 = [v48 countByEnumeratingWithState:&v60 objects:v74 count:16];
        }

        while (v8);
      }
    }

    v44 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
  }

  while (v44);
LABEL_25:

  v49 = dispatch_group_create();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  allKeys2 = [v47 allKeys];
  v22 = [allKeys2 countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v22)
  {
    v23 = *v57;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(allKeys2);
        }

        v25 = *(*(&v56 + 1) + 8 * k);
        if ([v25 hasPrefix:@"MOEventCategoryWorkout"])
        {
          v26 = [v47 objectForKeyedSubscript:v25];
          v27 = +[NSDate date];
          [v27 timeIntervalSinceReferenceDate];
          v29 = v28;
          v30 = [v26 objectForKeyedSubscript:@"EWAForAnomalyLastUpdateTime"];
          [v30 doubleValue];
          v32 = v31;

          if (v29 - v32 > 2419200.0)
          {
            v33 = [v26 objectForKey:{@"EWAEventProviderUUID", v29 - v32}];

            if (v33)
            {
              v34 = [v26 objectForKeyedSubscript:@"EWAEventProviderUUID"];
              v72 = v34;
              v35 = [NSArray arrayWithObjects:&v72 count:1];

              dispatch_group_enter(v49);
              v51[0] = _NSConcreteStackBlock;
              v51[1] = 3221225472;
              v51[2] = __43__MOEventStore__deleteEWAForExpiredEvents___block_invoke;
              v51[3] = &unk_100338428;
              v52 = v46;
              v53 = v25;
              v55 = &v68;
              v54 = v49;
              [(MOEventStore *)selfCopy _checkWorkoutExistsInHealthDB:v35 handler:v51];
            }
          }
        }
      }

      v22 = [allKeys2 countByEnumeratingWithState:&v56 objects:v73 count:16];
    }

    while (v22);
  }

  if ((MODispatchGroupWait(v49, 0xFFFFFFFFFFFFFFFFLL, @"deleteEWAForExpiredEvents") & 1) == 0)
  {
    v36 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      [MOEventStore _deleteEWAForExpiredEvents:];
    }
  }

  if (*(v69 + 24) == 1)
  {
    if ([(MOEventStore *)selfCopy persistEWAMetrics:getEWAPlistFileURL withData:v46])
    {
      v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v38 = "EWA pList succesfully updated by removing expired events";
        goto LABEL_47;
      }
    }

    else
    {
      v37 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v38 = "EWA pList update failed while removing expired events";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v38, buf, 2u);
      }
    }
  }

  _Block_object_dispose(&v68, 8);
  v5 = v47;
LABEL_50:

  v4 = getEWAPlistFileURL;
LABEL_51:
}

void __43__MOEventStore__deleteEWAForExpiredEvents___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Workout EWA deleted or not present in health DB", v4, 2u);
    }

    [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)purgeVisitEventsBeforeDate:(id)date WithCompletionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __65__MOEventStore_purgeVisitEventsBeforeDate_WithCompletionHandler___block_invoke;
  v12[3] = &unk_100338450;
  v13 = dateCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v16 = a2;
  v10 = handlerCopy;
  v11 = dateCopy;
  [persistenceManager performBlockAndWait:v12];
}

void __65__MOEventStore_purgeVisitEventsBeforeDate_WithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"startDate < %@ AND category == %lu", *(a1 + 32), 1];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v41 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v41];
  v7 = v41;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v34 = NSStringFromSelector(*(a1 + 56));
    v35 = [v6 count];
    *buf = 138413058;
    v46 = v34;
    v47 = 2112;
    v48 = v4;
    v49 = 2048;
    v50 = v35;
    v51 = 2112;
    v52 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if ([v6 count])
  {
    v9 = [NSSet setWithObjects:&off_100369718, 0];
    v10 = [*(a1 + 40) getEWAPlistFileURL];
    if (!v10)
    {
LABEL_16:

      goto LABEL_17;
    }

    v11 = [*(a1 + 40) readEWAPlistFile:v10];
    if (v11)
    {
      v12 = [*(a1 + 40) _removeEntriesInPlist:v11 forCategory:v9 forURL:v10];
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v14)
        {
          *buf = 138412290;
          v46 = v9;
          v15 = "Succesfully updated EWA pList for purgeVisitEventsBeforeDate, categories %@";
LABEL_13:
          v16 = v13;
          v17 = 12;
          goto LABEL_14;
        }
      }

      else if (v14)
      {
        *buf = 138412290;
        v46 = v9;
        v15 = "Failed updating EWA pList for purgeVisitEventsBeforeDate, categories %@";
        goto LABEL_13;
      }
    }

    else
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v15 = "Fail to read EWA pList for for purgeVisitEventsBeforeDate";
        v16 = v13;
        v17 = 2;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  if (v7)
  {
    v18 = *(a1 + 48);
    if (v18)
    {
      (*(v18 + 16))(v18, v7, &__NSDictionary0__struct);
    }

    [v3 reset];
  }

  else
  {
    if ([v6 count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v6;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [v3 deleteObject:*(*(&v37 + 1) + 8 * i)];
          }

          v21 = [v19 countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v21);
      }

      v24 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v19 count];
        *buf = 134217984;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "purgeVisitEventsBeforeDate trying to purge events count %lu", buf, 0xCu);
      }

      v36 = 0;
      v26 = [v3 save:&v36];
      v27 = v36;
      v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      v29 = v28;
      if (v26)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v30 = [v19 count];
          *buf = 134217984;
          v46 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "purgeVisitEventsBeforeDate succeeded with event count %lu", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __65__MOEventStore_purgeVisitEventsBeforeDate_WithCompletionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v27 = 0;
    }

    [v3 reset];
    v31 = *(a1 + 48);
    if (v31)
    {
      v42 = @"resultNumberOfEvents";
      v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
      v43 = v32;
      v33 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      (*(v31 + 16))(v31, v27, v33);
    }
  }
}

- (void)fetchAllEventsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __52__MOEventStore_fetchAllEventsWithCompletionHandler___block_invoke;
  v8[3] = &unk_100338388;
  v9 = handlerCopy;
  v10 = a2;
  v7 = handlerCopy;
  [persistenceManager performBlockAndWait:v8];
}

void __52__MOEventStore_fetchAllEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v23 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v23];
  v6 = v23;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(*(a1 + 40));
    v16 = [v5 count];
    *buf = 138413058;
    v26 = v15;
    v27 = 2112;
    v28 = v4;
    v29 = 2048;
    v30 = v16;
    v31 = 2112;
    v32 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v18 = a1;
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[MOEvent alloc] initWithEventMO:*(*(&v19 + 1) + 8 * v13)];
          if (v14)
          {
            [v8 addObject:v14];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    v5 = v17;
    a1 = v18;
  }

  [v3 reset];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchLastEventOfCategory:(unint64_t)category CompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [NSSet alloc];
  v8 = [NSNumber numberWithUnsignedInteger:category];
  v9 = [v7 initWithObjects:{v8, 0}];

  [(MOEventStore *)self fetchLastEventOfCategories:v9 CompletionHandler:handlerCopy];
}

- (void)fetchLastEventOfCategories:(id)categories isHighConfidenceOnly:(BOOL)only CompletionHandler:(id)handler
{
  categoriesCopy = categories;
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __82__MOEventStore_fetchLastEventOfCategories_isHighConfidenceOnly_CompletionHandler___block_invoke;
  v14[3] = &unk_100338478;
  onlyCopy = only;
  v16 = handlerCopy;
  v17 = a2;
  v15 = categoriesCopy;
  v12 = handlerCopy;
  v13 = categoriesCopy;
  [persistenceManager performBlockAndWait:v14];
}

void __82__MOEventStore_fetchLastEventOfCategories_isHighConfidenceOnly_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  if (*(a1 + 56))
  {
    v5 = @"category IN %@ AND isInvalid == NO AND isHighConfidence == YES";
  }

  else
  {
    v5 = @"category IN %@ AND isInvalid == NO";
  }

  v6 = [NSPredicate predicateWithFormat:v5, *(a1 + 32)];
  [v4 setPredicate:v6];

  [v4 setReturnsObjectsAsFaults:0];
  v7 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:0];
  v25 = v7;
  v8 = [NSArray arrayWithObjects:&v25 count:1];
  [v4 setSortDescriptors:v8];

  [v4 setFetchLimit:1];
  v16 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v16];
  v10 = v16;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromSelector(*(a1 + 48));
    v15 = [v9 count];
    *buf = 138413058;
    v18 = v14;
    v19 = 2112;
    v20 = v4;
    v21 = 2048;
    v22 = v15;
    v23 = 2112;
    v24 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  v12 = 0;
  if ([v9 count] && !v10)
  {
    v13 = [v9 firstObject];
    v12 = [[MOEvent alloc] initWithEventMO:v13];
  }

  [v3 reset];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchEventsWithStartDateAfter:(id)after Category:(unint64_t)category CompletionHandler:(id)handler
{
  afterCopy = after;
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __73__MOEventStore_fetchEventsWithStartDateAfter_Category_CompletionHandler___block_invoke;
  v14[3] = &unk_1003384A0;
  categoryCopy = category;
  v18 = a2;
  v15 = afterCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = afterCopy;
  [persistenceManager performBlockAndWait:v14];
}

void __73__MOEventStore_fetchEventsWithStartDateAfter_Category_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v5 = *(a1 + 32);
  v6 = [NSPredicate predicateWithFormat:@"startDate >= %@ AND category == %lu AND isInvalid == NO", v5, *(a1 + 48)];
  [v4 setPredicate:v6];

  [v4 setReturnsObjectsAsFaults:0];
  v7 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v36 = v7;
  v8 = [NSArray arrayWithObjects:&v36 count:1];
  [v4 setSortDescriptors:v8];

  v26 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v26];
  v10 = v26;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = NSStringFromSelector(*(a1 + 56));
    v20 = [v9 count];
    *buf = 138413058;
    v29 = v19;
    v30 = 2112;
    v31 = v4;
    v32 = 2048;
    v33 = v20;
    v34 = 2112;
    v35 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v21 = v3;
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[MOEvent alloc] initWithEventMO:*(*(&v22 + 1) + 8 * i)];
          if (v18)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v15);
    }

    v3 = v21;
  }

  [v3 reset];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchEventsWithOptions:(id)options CompletionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __57__MOEventStore_fetchEventsWithOptions_CompletionHandler___block_invoke;
  v12[3] = &unk_100338360;
  v14 = handlerCopy;
  v15 = a2;
  v13 = optionsCopy;
  v10 = handlerCopy;
  v11 = optionsCopy;
  [persistenceManager performBlockAndWait:v12];
}

void __57__MOEventStore_fetchEventsWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v5 = +[NSMutableArray array];
  v6 = [*(a1 + 32) dateInterval];

  v7 = &GEOPOICategoryGasStation_ptr;
  v41 = v4;
  v42 = v3;
  if (v6)
  {
    v8 = v5;
    v9 = [*(a1 + 32) dateInterval];
    v10 = [v9 endDate];
    v11 = [NSPredicate predicateWithFormat:@"startDate <= %@", v10];
    v58[0] = v11;
    v12 = [*(a1 + 32) dateInterval];
    v13 = [v12 startDate];
    v14 = [NSPredicate predicateWithFormat:@"endDate >= %@", v13];
    v58[1] = v14;
    v15 = [NSArray arrayWithObjects:v58 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];
    [v8 addObject:v16];

    v5 = v8;
    v3 = v42;

    v4 = v41;
    v7 = &GEOPOICategoryGasStation_ptr;
  }

  v17 = [*(a1 + 32) categories];

  if (v17)
  {
    v18 = v7[193];
    v19 = [*(a1 + 32) categories];
    v20 = [v18 predicateWithFormat:@"category IN %@", v19];
    [v5 addObject:v20];
  }

  if ([v5 count])
  {
    v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v21];
  }

  v22 = [*(a1 + 32) limit];

  if (v22)
  {
    v23 = [*(a1 + 32) limit];
    [v4 setFetchLimit:{objc_msgSend(v23, "unsignedIntegerValue")}];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v24 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
  v57 = v24;
  v25 = [NSArray arrayWithObjects:&v57 count:1];
  [v4 setSortDescriptors:v25];

  [v4 setFetchBatchSize:100];
  v47 = 0;
  v26 = [v3 executeFetchRequest:v4 error:&v47];
  v27 = v47;
  v28 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v38 = NSStringFromSelector(*(a1 + 48));
    v39 = [v26 count];
    *buf = 138413058;
    v50 = v38;
    v51 = 2112;
    v52 = v4;
    v53 = 2048;
    v54 = v39;
    v55 = 2112;
    v56 = v27;
    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v27)
  {
    [v3 reset];
    v29 = *(a1 + 40);
    if (v29)
    {
      (*(v29 + 16))(v29, &__NSArray0__struct, v27);
    }

    v30 = 0;
  }

  else
  {
    v40 = v5;
    v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v26 count]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = v26;
    v32 = [v31 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v44;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [[MOEvent alloc] initWithEventMO:*(*(&v43 + 1) + 8 * i)];
          if (v36)
          {
            [v30 addObject:v36];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v33);
    }

    v3 = v42;
    [v42 reset];
    v37 = *(a1 + 40);
    if (v37)
    {
      (*(v37 + 16))(v37, v30, 0);
    }

    v5 = v40;
    v4 = v41;
  }
}

- (void)fetchAnalyticsEventsWithOptions:(id)options CompletionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  persistenceManager = [(MOEventStore *)self persistenceManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __66__MOEventStore_fetchAnalyticsEventsWithOptions_CompletionHandler___block_invoke;
  v12[3] = &unk_100338360;
  v14 = handlerCopy;
  v15 = a2;
  v13 = optionsCopy;
  v10 = handlerCopy;
  v11 = optionsCopy;
  [persistenceManager performBlockAndWait:v12];
}

void __66__MOEventStore_fetchAnalyticsEventsWithOptions_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOEventMO fetchRequest];
  v5 = +[NSMutableArray array];
  v6 = [NSPredicate predicateWithFormat:@"provider == %lu", 5];
  [v5 addObject:v6];

  v7 = [*(a1 + 32) dateInterval];

  v40 = v4;
  v41 = v3;
  if (v7)
  {
    v8 = v5;
    v9 = [*(a1 + 32) dateInterval];
    v10 = [v9 endDate];
    v11 = [NSPredicate predicateWithFormat:@"startDate <= %@", v10];
    v57[0] = v11;
    v12 = [*(a1 + 32) dateInterval];
    v13 = [v12 startDate];
    v14 = [NSPredicate predicateWithFormat:@"endDate >= %@", v13];
    v57[1] = v14;
    v15 = [NSArray arrayWithObjects:v57 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];
    [v8 addObject:v16];

    v5 = v8;
    v3 = v41;

    v4 = v40;
  }

  v17 = [*(a1 + 32) categories];

  if (v17)
  {
    v18 = [*(a1 + 32) categories];
    v19 = [NSPredicate predicateWithFormat:@"category IN %@", v18];
    [v5 addObject:v19];
  }

  if ([v5 count])
  {
    v20 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v20];
  }

  v21 = [*(a1 + 32) limit];

  if (v21)
  {
    v22 = [*(a1 + 32) limit];
    [v4 setFetchLimit:{objc_msgSend(v22, "unsignedIntegerValue")}];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v23 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:{objc_msgSend(*(a1 + 32), "ascending")}];
  v56 = v23;
  v24 = [NSArray arrayWithObjects:&v56 count:1];
  [v4 setSortDescriptors:v24];

  [v4 setFetchBatchSize:100];
  v46 = 0;
  v25 = [v3 executeFetchRequest:v4 error:&v46];
  v26 = v46;
  v27 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v37 = NSStringFromSelector(*(a1 + 48));
    v38 = [v25 count];
    *buf = 138413058;
    v49 = v37;
    v50 = 2112;
    v51 = v4;
    v52 = 2048;
    v53 = v38;
    v54 = 2112;
    v55 = v26;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v26)
  {
    v28 = *(a1 + 40);
    if (v28)
    {
      (*(v28 + 16))(v28, &__NSArray0__struct, v26);
    }

    v29 = 0;
  }

  else
  {
    v39 = v5;
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v25 count]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v25;
    v31 = [v30 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v43;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [[MOEvent alloc] initWithEventMO:*(*(&v42 + 1) + 8 * i)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v32);
    }

    v36 = *(a1 + 40);
    if (v36)
    {
      (*(v36 + 16))(v36, v29, 0);
    }

    v4 = v40;
    v3 = v41;
    v5 = v39;
  }
}

- (id)getEWAPlistFileURL
{
  v2 = +[MOPersistenceManager userCacheDirectoryPath];
  if (v2)
  {
    v3 = [NSURL fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"EWAForAnomaly.plist"];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore getEWAPlistFileURL];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_readEWAPlistFilePrivate:(id)private
{
  privateCopy = private;
  v4 = +[NSFileManager defaultManager];
  path = [privateCopy path];
  v6 = [v4 fileExistsAtPath:path];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MOEventStore _readEWAPlistFilePrivate:v8];
    }

    v15 = 0;
    v9 = [[NSDictionary alloc] initWithContentsOfURL:privateCopy error:&v15];
    v10 = v15;
    if (v10)
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MOEventStore _readEWAPlistFilePrivate:];
      }

      v12 = 0;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No anomaly EWA persistence plist found at path.", v14, 2u);
    }

    v12 = objc_alloc_init(NSDictionary);
  }

  return v12;
}

- (id)readEWAPlistFile:(id)file
{
  fileCopy = file;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  queue = [(MOEventStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__MOEventStore_readEWAPlistFile___block_invoke;
  block[3] = &unk_1003384C8;
  v10 = fileCopy;
  v11 = &v12;
  block[4] = self;
  v6 = fileCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __33__MOEventStore_readEWAPlistFile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _readEWAPlistFilePrivate:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (BOOL)_persistEWAMetricsPrivate:(id)private withData:(id)data
{
  privateCopy = private;
  if (privateCopy)
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
      v12 = [v6 writeToURL:privateCopy options:805306369 error:&v16];
      v9 = v16;
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
      v10 = v13;
      if (!v9 && (v12 & 1) != 0)
      {
        v11 = 1;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15[0] = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Anomaly EWA persistence was successfully written to plist.", v15, 2u);
        }

        v9 = v10;
        goto LABEL_19;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MOEventStore _persistEWAMetricsPrivate:withData:];
      }
    }

    else
    {
      v9 = v7;
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MOEventStore _persistEWAMetricsPrivate:withData:];
      }
    }

    v11 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityStreamingPatternDetection);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MOEventStore _persistEWAMetricsPrivate:withData:];
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (BOOL)persistEWAMetrics:(id)metrics withData:(id)data
{
  metricsCopy = metrics;
  dataCopy = data;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = [(MOEventStore *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __43__MOEventStore_persistEWAMetrics_withData___block_invoke;
  v12[3] = &unk_1003384F0;
  v12[4] = self;
  v13 = metricsCopy;
  v14 = dataCopy;
  v15 = &v16;
  v9 = dataCopy;
  v10 = metricsCopy;
  dispatch_sync(queue, v12);

  LOBYTE(dataCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return dataCopy;
}

id __43__MOEventStore_persistEWAMetrics_withData___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _persistEWAMetricsPrivate:*(a1 + 40) withData:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)initWithUniverse:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithUniverse:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__MOEventStore_storeEvent_CompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__MOEventStore_storeEvents_CompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __47__MOEventStore_removeEvents_CompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__MOEventStore_purgeExpiredEventsWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_deleteSensedEvents:forContext:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_deletePatternEvents:(uint64_t)a1 forContext:(void *)a2 handler:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = [a2 count];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Pattern event deletion failed with error  %@, num events %ld", &v4, 0x16u);
}

- (void)_shouldEventBeDeleted:(uint64_t)a1 patternDict:(NSObject *)a2 forkey:.cold.1(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Pattern dict belongs to %@ class", v5, 0xCu);
}

void __54__MOEventStore__checkWorkoutExistsInHealthDB_handler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__MOEventStore_purgeVisitEventsBeforeDate_WithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getEWAPlistFileURL
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_readEWAPlistFilePrivate:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 138412290;
  v2 = @"EWAForAnomaly.plist";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "File %@ found.", &v1, 0xCu);
}

- (void)_readEWAPlistFilePrivate:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistEWAMetricsPrivate:withData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistEWAMetricsPrivate:withData:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_persistEWAMetricsPrivate:withData:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end