@interface DMDEngineDatabaseInitializationOperation
- (BOOL)destroyPersistentStoresWithError:(id *)a3;
- (BOOL)isReady;
- (BOOL)updateMetadataForManagedObjectContext:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)destroyLegacyDatabaseIfNeeded;
- (void)fixupDatabaseWithCompletionHandler:(id)a3;
- (void)loadPersistentStoresWithCompletionHandler:(id)a3;
- (void)main;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)operationWillStart;
- (void)setDeviceStateProvider:(id)a3;
@end

@implementation DMDEngineDatabaseInitializationOperation

- (void)dealloc
{
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"hasKeychainUnlockedSinceBoot" context:"DMDEngineDatabaseInitializationOperationContext"];
  v3.receiver = self;
  v3.super_class = DMDEngineDatabaseInitializationOperation;
  [(DMDEngineDatabaseOperation *)&v3 dealloc];
}

- (BOOL)isReady
{
  v3 = [(DMDEngineDatabaseInitializationOperation *)self deviceStateProvider];
  v7.receiver = self;
  v7.super_class = DMDEngineDatabaseInitializationOperation;
  if ([(DMDEngineDatabaseInitializationOperation *)&v7 isReady])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 hasKeychainUnlockedSinceBoot];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == "DMDEngineDatabaseInitializationOperationContext")
  {
    if ([a3 isEqualToString:{@"hasKeychainUnlockedSinceBoot", a4, a5}])
    {
      [(DMDEngineDatabaseInitializationOperation *)self willChangeValueForKey:@"isReady"];

      [(DMDEngineDatabaseInitializationOperation *)self didChangeValueForKey:@"isReady"];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DMDEngineDatabaseInitializationOperation;
    [(DMDEngineDatabaseInitializationOperation *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setDeviceStateProvider:(id)a3
{
  v4 = a3;
  [(DMDDeviceStateProvider *)self->_deviceStateProvider removeObserver:self forKeyPath:@"hasKeychainUnlockedSinceBoot" context:"DMDEngineDatabaseInitializationOperationContext"];
  deviceStateProvider = self->_deviceStateProvider;
  self->_deviceStateProvider = v4;
  v6 = v4;

  [(DMDDeviceStateProvider *)self->_deviceStateProvider addObserver:self forKeyPath:@"hasKeychainUnlockedSinceBoot" options:4 context:"DMDEngineDatabaseInitializationOperationContext"];
}

- (void)operationWillStart
{
  [(DMDEngineDatabaseInitializationOperation *)self setDeviceStateProvider:0];
  v3.receiver = self;
  v3.super_class = DMDEngineDatabaseInitializationOperation;
  [(DMDEngineDatabaseInitializationOperation *)&v3 operationWillStart];
}

- (void)main
{
  [(DMDEngineDatabaseInitializationOperation *)self destroyLegacyDatabaseIfNeeded];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100039EF4;
  v3[3] = &unk_1000CEE68;
  v3[4] = self;
  [(DMDEngineDatabaseInitializationOperation *)self loadPersistentStoresWithCompletionHandler:v3];
}

- (void)destroyLegacyDatabaseIfNeeded
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[NSFileManager dmd_legacyUserConfigurationEngineDatabaseURL];
  if ([v3 checkResourceIsReachableAndReturnError:0])
  {
    v4 = [v3 path];
    v5 = [v4 stringByAppendingString:@"-wal"];
    v6 = [NSURL fileURLWithPath:v5 isDirectory:0];

    v7 = [v3 path];
    v8 = [v7 stringByAppendingString:@"-shm"];
    v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

    v36[0] = v3;
    v36[1] = v9;
    v36[2] = v6;
    v10 = [NSArray arrayWithObjects:v36 count:3];
    v11 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "removing legacy database...", buf, 2u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v24 = v9;
      v25 = v6;
      v26 = v3;
      v15 = 0;
      v16 = *v30;
      v17 = 1;
      do
      {
        v18 = 0;
        v19 = v15;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v29 + 1) + 8 * v18);
          v28 = v19;
          v21 = [v2 removeItemAtURL:v20 error:&v28];
          v15 = v28;

          if ((v21 & 1) == 0)
          {
            v22 = DMFConfigurationEngineLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_100082D90(buf, v15, &v34, v22);
            }

            v17 = 0;
          }

          v18 = v18 + 1;
          v19 = v15;
        }

        while (v14 != v18);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v14);

      v6 = v25;
      v3 = v26;
      v9 = v24;
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v15 = 0;
    }

    v23 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "deleted legacy database", v27, 2u);
    }

LABEL_21:
  }
}

- (void)loadPersistentStoresWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(DMDEngineDatabaseOperation *)self database];
  v7 = [v6 persistentStoreDescriptions];
  v8 = [v7 mutableCopy];

  if (![v8 count])
  {
    sub_100082E08(a2, self);
  }

  v9 = objc_opt_new();
  v10 = [(DMDEngineDatabaseOperation *)self database];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003A4CC;
  v14[3] = &unk_1000CEF28;
  v15 = v9;
  v16 = v8;
  v17 = v5;
  v11 = v5;
  v12 = v8;
  v13 = v9;
  [v10 loadPersistentStoresWithCompletionHandler:v14];
}

- (void)fixupDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMDEngineDatabaseOperation *)self database];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003A800;
  v7[3] = &unk_1000CEF78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBackgroundTask:v7];
}

- (BOOL)updateMetadataForManagedObjectContext:(id)a3 error:(id *)a4
{
  v17 = a4;
  v18 = a3;
  v5 = [(DMDEngineDatabaseOperation *)self database];
  v6 = [v5 persistentStoreCoordinator];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 persistentStores];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v6 metadataForPersistentStore:{v12, v17}];
        v14 = [v13 mutableCopy];

        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DMDEngineDatabaseFixedDigitalHealthUsageEventMetadataKey"];
        [v6 setMetadata:v14 forPersistentStore:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v18 save:v17];
  return v15;
}

- (BOOL)destroyPersistentStoresWithError:(id *)a3
{
  v26 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = self;
  v4 = [(DMDEngineDatabaseOperation *)self database];
  v5 = [v4 persistentStoreDescriptions];

  obj = v5;
  v30 = [v5 countByEnumeratingWithState:&v32 objects:v42 count:16];
  v6 = 0;
  if (v30)
  {
    v28 = *v33;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v7);
        v10 = [(DMDEngineDatabaseOperation *)v29 database];
        v11 = [v10 persistentStoreCoordinator];
        v12 = [v9 URL];
        v13 = [v9 type];
        v14 = [v9 options];
        v31 = v8;
        v15 = [v11 destroyPersistentStoreAtURL:v12 withType:v13 options:v14 error:&v31];
        v6 = v31;

        if ((v15 & 1) == 0)
        {
          v16 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v9 URL];
            v18 = [v17 lastPathComponent];
            v19 = [v6 verboseDescription];
            *buf = 138543618;
            v39 = v18;
            v40 = 2114;
            v41 = v19;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "unable to remove persistent store %{public}@: %{public}@", buf, 0x16u);
          }

          [v26 addObject:v6];
        }

        v7 = v7 + 1;
        v8 = v6;
      }

      while (v30 != v7);
      v30 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v30);
  }

  v20 = [v26 count];
  v21 = v20;
  if (a3 && v20)
  {
    v36 = DMFErrorFailedConfigurationDatabaseStoreKey;
    v22 = [v26 copy];
    v37 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    *a3 = DMFErrorWithCodeAndUserInfo();
  }

  return v21 == 0;
}

@end