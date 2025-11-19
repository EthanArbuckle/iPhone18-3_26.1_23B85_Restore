@interface MOFSMStore
- (MOFSMStore)initWithPersistenceManager:(id)a3 andConfigurationManager:(id)a4;
- (MOFSMStore)initWithUniverse:(id)a3;
- (void)fetchFSMWithName:(id)a3 CompletionHandler:(id)a4;
- (void)removeAllFSMsWithCompletionHandler:(id)a3;
- (void)updateFSM:(id)a3 completionHandler:(id)a4;
@end

@implementation MOFSMStore

- (MOFSMStore)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 getService:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v4 getService:v9];

  v11 = [(MOFSMStore *)self initWithPersistenceManager:v7 andConfigurationManager:v10];
  return v11;
}

- (MOFSMStore)initWithPersistenceManager:(id)a3 andConfigurationManager:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v18.receiver = self;
    v18.super_class = MOFSMStore;
    v10 = [(MOFSMStore *)&v18 init];
    if (v10)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("MOFSMStore", v11);
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
    [v16 handleFailureInMethod:a2 object:self file:@"MOFSMStore.m" lineNumber:33 description:@"Invalid parameter not satisfying: persistenceManager"];

    v14 = 0;
  }

  return v14;
}

- (void)fetchFSMWithName:(id)a3 CompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__30;
  v26 = __Block_byref_object_dispose__30;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__30;
  v20 = __Block_byref_object_dispose__30;
  v21 = 0;
  v9 = [(MOFSMStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __49__MOFSMStore_fetchFSMWithName_CompletionHandler___block_invoke;
  v11[3] = &unk_100335C08;
  v10 = v7;
  v12 = v10;
  v13 = &v22;
  v14 = &v16;
  v15 = a2;
  [v9 performBlockAndWait:v11];

  v8[2](v8, v17[5], v23[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void __49__MOFSMStore_fetchFSMWithName_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOFSMMO fetchRequest];
  v5 = +[NSMutableArray array];
  v6 = [NSPredicate predicateWithFormat:@"name == %@ ", *(a1 + 32)];
  [v5 addObject:v6];

  if ([v5 count])
  {
    v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v7];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v8 = [[NSSortDescriptor alloc] initWithKey:@"lastProcessedDate" ascending:0];
  v32 = v8;
  v9 = [NSArray arrayWithObjects:&v32 count:1];
  [v4 setSortDescriptors:v9];

  [v4 setFetchBatchSize:1];
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = NSStringFromSelector(*(a1 + 56));
    v21 = [v11 count];
    v22 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v25 = v20;
    v26 = 2112;
    v27 = v4;
    v28 = 2048;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v13 = [MOFSM alloc];
    v14 = [v11 firstObject];
    v15 = [(MOFSM *)v13 initWithFSMMO:v14];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "fetched fsm from store :%@", buf, 0xCu);
    }
  }

  [v3 reset];
}

- (void)updateFSM:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__30;
  v17 = __Block_byref_object_dispose__30;
  v18 = 0;
  v8 = [(MOFSMStore *)self persistenceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __42__MOFSMStore_updateFSM_completionHandler___block_invoke;
  v10[3] = &unk_100335C30;
  v9 = v6;
  v11 = v9;
  v12 = &v13;
  [v8 performBlockAndWait:v10];

  if (v7)
  {
    v7[2](v7, v14[5], &__NSDictionary0__struct);
  }

  _Block_object_dispose(&v13, 8);
}

void __42__MOFSMStore_updateFSM_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = +[MOFSMMO fetchRequest];
    v5 = [*(a1 + 32) name];
    v6 = [NSPredicate predicateWithFormat:@"name == %@", v5];
    [v4 setPredicate:v6];

    v26 = 0;
    v7 = [v3 executeFetchRequest:v4 error:&v26];
    v8 = v26;
    if (!v8 && [v7 count] && (objc_msgSend(v7, "firstObject"), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v21;
      v23 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        v28 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "update fsm, %@", buf, 0xCu);
      }

      [MOFSMMO setPropertiesOfFSMMO:v22 withFSM:*(a1 + 32)];
    }

    else
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "save fsm, %@", buf, 0xCu);
      }

      v11 = [MOFSMMO managedObjectWithObject:*(a1 + 32) inManagedObjectContext:v3];
    }

    v13 = *(a1 + 40);
    v12 = a1 + 40;
    v14 = *(v13 + 8);
    obj = *(v14 + 40);
    v15 = [v3 save:&obj];
    objc_storeStrong((v14 + 40), obj);
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "saving fsm succeeded", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __42__MOFSMStore_updateFSM_completionHandler___block_invoke_cold_1(v12, v17);
    }

    [v3 reset];
  }

  else
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventStore);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "no fsm to be saved", buf, 2u);
    }

    v29 = NSDebugDescriptionErrorKey;
    v30 = @"No FSM passed.";
    v4 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v19 = [NSError errorWithDomain:@"MOErrorDomain" code:2 userInfo:v4];
    v20 = *(*(a1 + 40) + 8);
    v8 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (void)removeAllFSMsWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(MOFSMStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__MOFSMStore_removeAllFSMsWithCompletionHandler___block_invoke;
  v8[3] = &unk_100338388;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  [v6 performBlockAndWait:v8];
}

void __49__MOFSMStore_removeAllFSMsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOFSMMO fetchRequest];
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
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "trying to remove fsm count %lu", buf, 0xCu);
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
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "saving fsm deletion operation succeeded", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __49__MOFSMStore_removeAllFSMsWithCompletionHandler___block_invoke_cold_1(v17, v19);
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

void __42__MOFSMStore_updateFSM_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "saving fsm error, %@", &v3, 0xCu);
}

void __49__MOFSMStore_removeAllFSMsWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "saving fsm deletion operation error, %@", &v2, 0xCu);
}

@end