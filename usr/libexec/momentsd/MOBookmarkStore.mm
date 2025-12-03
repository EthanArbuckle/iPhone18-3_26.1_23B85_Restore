@interface MOBookmarkStore
- (MOBookmarkStore)initWithPersistenceManager:(id)manager andConfigurationManager:(id)configurationManager;
- (MOBookmarkStore)initWithUniverse:(id)universe;
- (void)fetchBookmarksWithDeviceIDs:(id)ds CompletionHandler:(id)handler;
- (void)removeExpiredBookmarkWithCompletionHandler:(id)handler;
- (void)updateBookmark:(id)bookmark completionHandler:(id)handler;
- (void)updateBookmarks:(id)bookmarks completionHandler:(id)handler;
@end

@implementation MOBookmarkStore

- (MOBookmarkStore)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [universeCopy getService:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [universeCopy getService:v9];

  v11 = [(MOBookmarkStore *)self initWithPersistenceManager:v7 andConfigurationManager:v10];
  return v11;
}

- (MOBookmarkStore)initWithPersistenceManager:(id)manager andConfigurationManager:(id)configurationManager
{
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  if (managerCopy)
  {
    v18.receiver = self;
    v18.super_class = MOBookmarkStore;
    v10 = [(MOBookmarkStore *)&v18 init];
    if (v10)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("MOBookmarkStore", v11);
      queue = v10->_queue;
      v10->_queue = v12;

      objc_storeStrong(&v10->_persistenceManager, manager);
      objc_storeStrong(&v10->_configurationManager, configurationManager);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MOBookmarkStore initWithPersistenceManager:v15 andConfigurationManager:?];
    }

    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MOBookmarkStore.m" lineNumber:42 description:@"Invalid parameter not satisfying: persistenceManager"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)fetchBookmarksWithDeviceIDs:(id)ds CompletionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  persistenceManager = [(MOBookmarkStore *)self persistenceManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __65__MOBookmarkStore_fetchBookmarksWithDeviceIDs_CompletionHandler___block_invoke;
  v11[3] = &unk_100335C08;
  v10 = dsCopy;
  v12 = v10;
  v13 = &v22;
  v14 = &v16;
  v15 = a2;
  [persistenceManager performBlockAndWait:v11];

  handlerCopy[2](handlerCopy, v17[5], v23[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

void __65__MOBookmarkStore_fetchBookmarksWithDeviceIDs_CompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOBookmarkMO fetchRequest];
  v5 = +[NSMutableArray array];
  if ([*(a1 + 32) count])
  {
    v6 = [NSPredicate predicateWithFormat:@"deviceIdentifier IN %@ ", *(a1 + 32)];
    [v5 addObject:v6];
  }

  if ([v5 count])
  {
    v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
    [v4 setPredicate:v7];
  }

  [v4 setReturnsObjectsAsFaults:0];
  v8 = [[NSSortDescriptor alloc] initWithKey:@"creationDate" ascending:0];
  v44 = v8;
  v9 = [NSArray arrayWithObjects:&v44 count:1];
  [v4 setSortDescriptors:v9];

  [v4 setFetchBatchSize:100];
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v3 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v23 = NSStringFromSelector(*(a1 + 56));
    v24 = [v11 count];
    v25 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138413058;
    v37 = v23;
    v38 = 2112;
    v39 = v4;
    v40 = 2048;
    v41 = v24;
    v42 = 2112;
    v43 = v25;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v27 = v5;
    v28 = v4;
    v29 = v3;
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v11;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[MOBookmarkForBiomeStream alloc] initWithBookmarkMO:*(*(&v30 + 1) + 8 * i)];
          if (v21)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v21];
          }

          v22 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v37 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "fetched book mark from store :%@", buf, 0xCu);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v18);
    }

    v4 = v28;
    v3 = v29;
    v11 = v26;
    v5 = v27;
  }

  [v3 reset];
}

- (void)updateBookmark:(id)bookmark completionHandler:(id)handler
{
  bookmarkCopy = bookmark;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  persistenceManager = [(MOBookmarkStore *)self persistenceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __52__MOBookmarkStore_updateBookmark_completionHandler___block_invoke;
  v10[3] = &unk_100335C30;
  v9 = bookmarkCopy;
  v11 = v9;
  v12 = &v13;
  [persistenceManager performBlockAndWait:v10];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v14[5], &__NSDictionary0__struct);
  }

  _Block_object_dispose(&v13, 8);
}

void __52__MOBookmarkStore_updateBookmark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = +[MOBookmarkMO fetchRequest];
    v5 = [*(a1 + 32) deviceIdentifier];
    v6 = [NSPredicate predicateWithFormat:@"deviceIdentifier == %@", v5];
    [v4 setPredicate:v6];

    v26 = 0;
    v7 = [v3 executeFetchRequest:v4 error:&v26];
    v8 = v26;
    if (!v8 && [v7 count] && (objc_msgSend(v7, "firstObject"), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v21;
      v23 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        v28 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "update bookmark, %@", buf, 0xCu);
      }

      [MOBookmarkMO setPropertiesOfBookmarkMO:v22 withBookmark:*(a1 + 32)];
    }

    else
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "save bookmark, %@", buf, 0xCu);
      }

      v11 = [MOBookmarkMO managedObjectWithObject:*(a1 + 32) inManagedObjectContext:v3];
    }

    v13 = *(a1 + 40);
    v12 = a1 + 40;
    v14 = *(v13 + 8);
    obj = *(v14 + 40);
    v15 = [v3 save:&obj];
    objc_storeStrong((v14 + 40), obj);
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "saving bookmark succeeded", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __52__MOBookmarkStore_updateBookmark_completionHandler___block_invoke_cold_1(v12);
    }

    [v3 reset];
  }

  else
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "no bookmark to be saved", buf, 2u);
    }

    v29 = NSDebugDescriptionErrorKey;
    v30 = @"No bookmark passed.";
    v4 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v19 = [NSError errorWithDomain:@"MOErrorDomain" code:2 userInfo:v4];
    v20 = *(*(a1 + 40) + 8);
    v8 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (void)updateBookmarks:(id)bookmarks completionHandler:(id)handler
{
  bookmarksCopy = bookmarks;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  persistenceManager = [(MOBookmarkStore *)self persistenceManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __53__MOBookmarkStore_updateBookmarks_completionHandler___block_invoke;
  v10[3] = &unk_100335C30;
  v9 = bookmarksCopy;
  v11 = v9;
  v12 = &v13;
  [persistenceManager performBlockAndWait:v10];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v14[5], &__NSDictionary0__struct);
  }

  _Block_object_dispose(&v13, 8);
}

void __53__MOBookmarkStore_updateBookmarks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = a1;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v4)
    {
      v5 = v4;
      v31 = *v35;
      do
      {
        v6 = 0;
        do
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v34 + 1) + 8 * v6);
          v8 = +[MOBookmarkMO fetchRequest];
          v9 = [v7 deviceIdentifier];
          v10 = [NSPredicate predicateWithFormat:@"deviceIdentifier == %@", v9];
          [v8 setPredicate:v10];

          v33 = 0;
          v11 = [v3 executeFetchRequest:v8 error:&v33];
          v12 = v33;
          if (!v12 && [v11 count] && (objc_msgSend(v11, "lastObject"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = v15;
            v17 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v7;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "update bookmark, %@", buf, 0xCu);
            }

            [MOBookmarkMO setPropertiesOfBookmarkMO:v16 withBookmark:v7];
          }

          else
          {
            v13 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v7;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "save bookmark, %@", buf, 0xCu);
            }

            v14 = [MOBookmarkMO managedObjectWithObject:v7 inManagedObjectContext:v3];
          }

          v6 = v6 + 1;
        }

        while (v5 != v6);
        v18 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
        v5 = v18;
      }

      while (v18);
    }

    v19 = *(*(v29 + 40) + 8);
    v32 = *(v19 + 40);
    v20 = [v3 save:&v32];
    objc_storeStrong((v19 + 40), v32);
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = [*(v29 + 32) count];
        *buf = 134217984;
        v39 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "saving bookmarks succeeded, bookmarks count, %lu", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __53__MOBookmarkStore_updateBookmarks_completionHandler___block_invoke_cold_1(v29 + 40);
    }

    [v3 reset];
  }

  else
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "no bookmark to be saved", buf, 2u);
    }

    v41 = NSDebugDescriptionErrorKey;
    v42 = @"No bookmark passed.";
    v25 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v26 = [NSError errorWithDomain:@"MOErrorDomain" code:2 userInfo:v25];
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }
}

- (void)removeExpiredBookmarkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  persistenceManager = [(MOBookmarkStore *)self persistenceManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __62__MOBookmarkStore_removeExpiredBookmarkWithCompletionHandler___block_invoke;
  v8[3] = &unk_100335C58;
  v8[4] = self;
  v11 = a2;
  v7 = handlerCopy;
  v9 = v7;
  v10 = &v12;
  [persistenceManager performBlockAndWait:v8];

  if (v7)
  {
    (*(v7 + 2))(v7, v13[5]);
  }

  _Block_object_dispose(&v12, 8);
}

void __62__MOBookmarkStore_removeExpiredBookmarkWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MOBookmarkMO fetchRequest];
  v5 = [*(a1 + 32) configurationManager];
  [v5 getDoubleSettingForKey:@"BookmarkForBiomeStreamMaximumAge" withFallback:2419200.0];
  v7 = v6;

  v8 = +[NSDate date];
  v9 = [NSDate dateWithTimeInterval:v8 sinceDate:-v7];

  v10 = [NSPredicate predicateWithFormat:@"creationDate < %@ ", v9];
  [v4 setPredicate:v10];

  [v4 setReturnsObjectsAsFaults:0];
  v35 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v35];
  v12 = v35;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v28 = NSStringFromSelector(*(a1 + 56));
    v29 = [v11 count];
    *buf = 138413058;
    v38 = v28;
    v39 = 2112;
    v40 = v4;
    v41 = 2048;
    v42 = v29;
    v43 = 2112;
    v44 = v12;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
  }

  if (v12)
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v12);
    }
  }

  else if ([v11 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        v19 = 0;
        do
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v3 deleteObject:*(*(&v31 + 1) + 8 * v19)];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v17);
    }

    v20 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v15 count];
      *buf = 134217984;
      v38 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "trying to purge bookmark count %lu", buf, 0xCu);
    }

    v23 = *(a1 + 48);
    v22 = a1 + 48;
    v24 = *(v23 + 8);
    obj = *(v24 + 40);
    v25 = [v3 save:&obj];
    objc_storeStrong((v24 + 40), obj);
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityBookmarkStore);
    v27 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "bookmark purge operation succeeded", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __62__MOBookmarkStore_removeExpiredBookmarkWithCompletionHandler___block_invoke_cold_1(v22);
    }
  }

  [v3 reset];
}

@end