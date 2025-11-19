@interface MOPOICategoryStore
- (MOPOICategoryStore)initWithPersistenceManager:(id)a3;
- (MOPOICategoryStore)initWithUniverse:(id)a3;
- (void)fetchEligiblePOICategoriesWithCompletionHandler:(id)a3;
- (void)removeExistingPOICategoriesWithCompletionHandler:(id)a3;
- (void)storeEligiblePOICategories:(id)a3 completionHandler:(id)a4;
@end

@implementation MOPOICategoryStore

- (MOPOICategoryStore)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 getService:v6];

  v8 = [(MOPOICategoryStore *)self initWithPersistenceManager:v7];
  return v8;
}

- (MOPOICategoryStore)initWithPersistenceManager:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v15.receiver = self;
    v15.super_class = MOPOICategoryStore;
    v7 = [(MOPOICategoryStore *)&v15 init];
    if (v7)
    {
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("MOPOICategoryStore", v8);
      queue = v7->_queue;
      v7->_queue = v9;

      objc_storeStrong(&v7->_persistenceManager, a3);
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOBookmarkStore initWithPersistenceManager:v12 andConfigurationManager:?];
    }

    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MOPOICategoryStore.m" lineNumber:36 description:@"Invalid parameter not satisfying: persistenceManager"];

    v11 = 0;
  }

  return v11;
}

- (void)storeEligiblePOICategories:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOPOICategoryStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __67__MOPOICategoryStore_storeEligiblePOICategories_completionHandler___block_invoke;
  v11[3] = &unk_100338338;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockAndWait:v11];
}

void __67__MOPOICategoryStore_storeEligiblePOICategories_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  if ([*(a1 + 32) count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          if (([v8 isEqualToString:@"RTMapItemPOICategoryUndefined"]& 1) != 0)
          {
            v9 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v28 = v8;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "skip saving category, %@", buf, 0xCu);
            }
          }

          else
          {
            v10 = [MOEligiblePOICategory alloc];
            v11 = +[NSUUID UUID];
            v9 = [(MOEligiblePOICategory *)v10 initWithIdentifier:v11 category:v8];

            v12 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v28 = v9;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "save category, %@", buf, 0xCu);
            }

            v13 = [MOPOICategoryMO managedObjectWithObject:v9 inManagedObjectContext:v21];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v5);
    }

    v22 = 0;
    v14 = [v21 save:&v22];
    v15 = v22;
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = [*(a1 + 32) count];
        *buf = 134217984;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "saving categories succeeded, try to save categories count, %lu", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __67__MOPOICategoryStore_storeEligiblePOICategories_completionHandler___block_invoke_cold_1(v15, v17);
    }

    [v21 reset];
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "no categories to be saved", buf, 2u);
    }

    v15 = 0;
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v15);
  }
}

- (void)fetchEligiblePOICategoriesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(MOPOICategoryStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __70__MOPOICategoryStore_fetchEligiblePOICategoriesWithCompletionHandler___block_invoke;
  v8[3] = &unk_100338388;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  [v6 performBlockAndWait:v8];
}

void __70__MOPOICategoryStore_fetchEligiblePOICategoriesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOPOICategoryMO fetchRequest];
  v22 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v22];
  v6 = v22;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(*(a1 + 40));
    v16 = [v5 count];
    *buf = 138413058;
    v25 = v15;
    v26 = 2112;
    v27 = v4;
    v28 = 2048;
    v29 = v16;
    v30 = 2112;
    v31 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v17 = a1;
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * v13) category];
          if (v14)
          {
            [v8 addObject:v14];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    a1 = v17;
  }

  [v3 reset];
  (*(*(a1 + 32) + 16))();
}

- (void)removeExistingPOICategoriesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(MOPOICategoryStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __71__MOPOICategoryStore_removeExistingPOICategoriesWithCompletionHandler___block_invoke;
  v8[3] = &unk_100338388;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  [v6 performBlockAndWait:v8];
}

void __71__MOPOICategoryStore_removeExistingPOICategoriesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOPOICategoryMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v28 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v28];
  v6 = v28;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
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

      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v9 count];
        *buf = 134217984;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "trying to remove categories count %lu", buf, 0xCu);
      }

      v23 = 0;
      v16 = [v3 save:&v23];
      v17 = v23;
      v18 = _mo_log_facility_get_os_log(&MOLogFacilityPOICategoryStore);
      v19 = v18;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "categories deletion operation succeeded", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __71__MOPOICategoryStore_removeExistingPOICategoriesWithCompletionHandler___block_invoke_cold_1(v17, v19);
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

void __67__MOPOICategoryStore_storeEligiblePOICategories_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "saving categories error, %@", &v2, 0xCu);
}

void __71__MOPOICategoryStore_removeExistingPOICategoriesWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "categories deletion operation error, %@", &v2, 0xCu);
}

@end