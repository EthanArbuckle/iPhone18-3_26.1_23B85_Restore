@interface APPersistentCache
- (APPersistentCache)initWithCacheSize:(int64_t)a3;
- (id)_dumpCache;
- (id)_getLastGCDate;
- (void)_performGC:(id)a3 completionHandler:(id)a4;
- (void)_performGCWithCompletionHandler:(id)a3;
- (void)_setLastGCDate:(id)a3;
- (void)_setupNotifyListener;
- (void)start;
- (void)stopGC;
@end

@implementation APPersistentCache

- (APPersistentCache)initWithCacheSize:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = APPersistentCache;
  v4 = [(APPersistentCache *)&v13 init];
  if (v4)
  {
    v5 = [APPersistentCachedStore createWithTotalCostLimit:a3];
    persistentCacheStore = v4->_persistentCacheStore;
    v4->_persistentCacheStore = v5;

    [APPersistentCacheStoreProvider assignPersistentCacheStore:v4->_persistentCacheStore];
    v7 = dispatch_queue_create("com.apple.ap.cache-gc-scheduler", 0);
    gcSchedulerQueue = v4->_gcSchedulerQueue;
    v4->_gcSchedulerQueue = v7;

    v4->_cacheObjectTTL = 172800.0;
    if (+[APSystemInternal isAppleInternalInstall])
    {
      v9 = +[APInternalCacheSettings settings];
      [v9 diagnosticsIntervalValue];
      v11 = v10;

      if (v11 > 0.0)
      {
        [(APPersistentCachedStoreTransactionalProtocol *)v4->_persistentCacheStore enableDiagnosticsWithInterval:v11];
      }
    }
  }

  return v4;
}

- (void)start
{
  v3 = [(APPersistentCache *)self _getLastGCDate];
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Last garbage collection was performed on %{public}@.", &v5, 0xCu);
  }

  [(APPersistentCache *)self _setupNotifyListener];
}

- (void)stopGC
{
  v2 = [(APPersistentCache *)self garbageCollector];
  [v2 stop];
}

- (void)_setupNotifyListener
{
  if (+[APSystemInternal isAppleInternalInstall])
  {
    objc_initWeak(&location, self);
    v3 = +[APTestingRig sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10037E450;
    v7[3] = &unk_100480888;
    objc_copyWeak(&v8, &location);
    [v3 subscribeForMessage:@"cache-startgc-all" handler:v7];

    v4 = +[APTestingRig sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10037E5C0;
    v5[3] = &unk_100480888;
    objc_copyWeak(&v6, &location);
    [v4 subscribeForMessage:@"cache-dump" handler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_performGCWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSDate now];
  [(APPersistentCache *)self cacheObjectTTL];
  v7 = [v5 dateByAddingTimeInterval:-v6];

  [(APPersistentCache *)self _performGC:v7 completionHandler:v4];
}

- (void)_performGC:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Started garbage collection.", buf, 2u);
  }

  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Started garbage collection. Cut off date is: %{public}@.", buf, 0xCu);
  }

  v10 = [(APPersistentCache *)self _getLastGCDate];
  if (v10)
  {
    v11 = +[NSDate now];
    [v11 timeIntervalSinceDate:v10];
    v13 = v12;
  }

  else
  {
    v13 = -1.0;
  }

  v14 = [APCacheGarbageCollector alloc];
  v15 = [(APPersistentCache *)self persistentCacheStore];
  v16 = [(APCacheGarbageCollector *)v14 initWithCacheStore:v15 expirationDate:v6 timeSincePrevLaunch:v13];
  [(APPersistentCache *)self setGarbageCollector:v16];

  objc_initWeak(buf, self);
  objc_copyWeak(&v22, buf);
  v17 = v7;
  v21 = v17;
  v18 = [(APPersistentCache *)self garbageCollector:_NSConcreteStackBlock];
  [v18 setCompletionHandler:&v20];

  v19 = [(APPersistentCache *)self garbageCollector];
  [v19 collect];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (id)_getLastGCDate
{
  v2 = +[APPersistentCacheSettings settings];
  v3 = [v2 lastGarbageCollected];

  return v3;
}

- (void)_setLastGCDate:(id)a3
{
  v3 = a3;
  v4 = +[APPersistentCacheSettings settings];
  [v4 setLastGarbageCollected:v3];
}

- (id)_dumpCache
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [v5 stringByAppendingPathComponent:@"cache-dump.json"];
  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v50 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started cache dump into '%{sensitive}@'", buf, 0xCu);
  }

  v8 = [(APPersistentCache *)self persistentCacheStore];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v38 = v3;
    v10 = [(APPersistentCache *)self persistentCacheStore];
    v11 = [v10 performSelector:"enumerateIDsWithExtension:" withObject:@"b"];

    v12 = +[NSFileManager defaultManager];
    v37 = v5;
    [v12 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

    v36 = v6;
    v13 = fopen([v6 UTF8String], "w");
    fputs("[\n", v13);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = self;
      v18 = 1;
      v19 = *v45;
      v40 = v13;
      v41 = *v45;
      do
      {
        v20 = 0;
        v42 = v16;
        do
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v44 + 1) + 8 * v20);
          if ((v18 & 1) == 0)
          {
            fputs(",\n", v13);
          }

          v22 = objc_autoreleasePoolPush();
          v23 = [(APPersistentCache *)v17 persistentCacheStore];
          v24 = [v23 objectForKey:v21];

          if (objc_opt_respondsToSelector())
          {
            v25 = [v24 performSelector:"toJSONObject"];
            if (v25)
            {
              v26 = v14;
              v43 = 0;
              v27 = [NSJSONSerialization dataWithJSONObject:v25 options:15 error:&v43];
              v28 = v43;
              v29 = v28;
              if (v27)
              {
                v30 = v28 == 0;
              }

              else
              {
                v30 = 0;
              }

              if (v30)
              {
                v32 = [[NSString alloc] initWithData:v27 encoding:4];
              }

              else
              {
                v31 = [v24 identifier];
                v32 = [NSString stringWithFormat:@"{error: Failed dataWithJSONObject with ID %@: %@ }\n", v31, v29];

                v17 = self;
              }

              v14 = v26;
              v13 = v40;
            }

            else
            {
              v29 = [v24 identifier];
              v32 = [NSString stringWithFormat:@"{error: Failed toJSONObject with ID %@}\n", v29];
            }

            fputs([v32 UTF8String], v13);
            v19 = v41;
            v16 = v42;
          }

          objc_autoreleasePoolPop(v22);
          v18 = 0;
          v20 = v20 + 1;
        }

        while (v16 != v20);
        v16 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
        v18 = 0;
      }

      while (v16);
    }

    fputs("\n]", v13);
    fclose(v13);
    v33 = APLogForCategory();
    v6 = v36;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v50 = v36;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Completed cache dump into '%{sensitive}@'", buf, 0xCu);
    }

    v34 = v36;
    v5 = v37;
    v3 = v38;
  }

  else
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cache dump failed, something went wrong.", buf, 2u);
    }

    v34 = @"Cache dump failed, something went wrong.";
  }

  return v34;
}

@end