@interface APCacheGarbageCollector
- (APCacheGarbageCollector)initWithCacheStore:(id)store expirationDate:(id)date timeSincePrevLaunch:(double)launch;
- (NSOperation)activeCleanupOperation;
- (void)_handleAncientItem:(id)item;
- (void)_removeItem:(id)item;
- (void)_removeItemInBlockForKey:(id)key;
- (void)_reportStatisticsForDuration:(double)duration storageInfo:(id)info cancelled:(BOOL)cancelled;
- (void)collect;
- (void)stop;
@end

@implementation APCacheGarbageCollector

- (APCacheGarbageCollector)initWithCacheStore:(id)store expirationDate:(id)date timeSincePrevLaunch:(double)launch
{
  storeCopy = store;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = APCacheGarbageCollector;
  v11 = [(APCacheGarbageCollector *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cacheStore, store);
    v13 = objc_alloc_init(NSOperationQueue);
    operationQueue = v12->_operationQueue;
    v12->_operationQueue = v13;

    [(NSOperationQueue *)v12->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v12->_operationQueue setName:@"com.apple.ap.cache-cleaner"];
    [(NSOperationQueue *)v12->_operationQueue setQualityOfService:9];
    objc_storeStrong(&v12->_expirationDate, date);
    v12->_timeSincePrevLaunch = launch;
  }

  return v12;
}

- (void)collect
{
  cacheStore = [(APCacheGarbageCollector *)self cacheStore];
  fileStorage = [cacheStore fileStorage];
  v5 = [fileStorage enumeratorForFilesWithExtension:0];

  atomic_store(0, &self->_removedObjectsCount);
  atomic_store(0, &self->_ancientObjectsCount);
  v6 = [APCacheStoreCleanupOperation alloc];
  expirationDate = [(APCacheGarbageCollector *)self expirationDate];
  v8 = [(APCacheStoreCleanupOperation *)v6 initWithFilesEnumerator:v5 expirationDate:expirationDate];

  [(APCacheStoreCleanupOperation *)v8 maxObjectLifetime];
  if (v9 <= 0.0)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Max object lifetime is zero.", &buf, 2u);
    }
  }

  [(APCacheStoreCleanupOperation *)v8 maxObjectLifetime];
  [(APCacheGarbageCollector *)self setMaxObjectLifeTimeDays:(v11 / 86400.0)];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10036D58C;
  v25[3] = &unk_100480410;
  v25[4] = self;
  [(APCacheStoreCleanupOperation *)v8 setRemovalBlock:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10036D5E4;
  v24[3] = &unk_100480410;
  v24[4] = self;
  [(APCacheStoreCleanupOperation *)v8 setAncientItemBlock:v24];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    fileStorage2 = [cacheStore fileStorage];
    getStorageInfo = [fileStorage2 getStorageInfo];
  }

  else
  {
    getStorageInfo = 0;
  }

  objc_initWeak(&buf, self);
  v14 = objc_alloc_init(NSBlockOperation);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10036D63C;
  v19[3] = &unk_100463FC8;
  objc_copyWeak(&v22, &buf);
  v15 = v8;
  v20 = v15;
  v16 = getStorageInfo;
  v21 = v16;
  [v14 addExecutionBlock:v19];
  [(APCacheGarbageCollector *)self setActiveCleanupOperation:v15];
  operationQueue = [(APCacheGarbageCollector *)self operationQueue];
  v26[0] = v15;
  v26[1] = v14;
  v18 = [NSArray arrayWithObjects:v26 count:2];
  [operationQueue addOperations:v18 waitUntilFinished:0];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&buf);
}

- (void)stop
{
  activeCleanupOperation = [(APCacheGarbageCollector *)self activeCleanupOperation];
  [activeCleanupOperation cancel];
}

- (void)_handleAncientItem:(id)item
{
  itemCopy = item;
  atomic_fetch_add(&self->_ancientObjectsCount, 1u);
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543618;
    v7 = itemCopy;
    v8 = 2050;
    maxObjectLifeTimeDays = [(APCacheGarbageCollector *)self maxObjectLifeTimeDays];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found an item '%{public}@' which is older than %{public}ld days.", &v6, 0x16u);
  }
}

- (void)_removeItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  cacheStore = [(APCacheGarbageCollector *)self cacheStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10036D9C4;
  v7[3] = &unk_10047C9A0;
  objc_copyWeak(&v9, &location);
  v6 = itemCopy;
  v8 = v6;
  [cacheStore executeBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_removeItemInBlockForKey:(id)key
{
  keyCopy = key;
  cacheStore = [(APCacheGarbageCollector *)self cacheStore];
  v6 = [cacheStore isObjectAliveForKey:keyCopy];

  if (!v6)
  {
    cacheStore2 = [(APCacheGarbageCollector *)self cacheStore];
    v7 = [cacheStore2 objectForKey:keyCopy];

    garbageCollect = [v7 garbageCollect];
    if ((garbageCollect & 0x8000000000000000) != 0)
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v17 = 138543362;
        *&v17[4] = keyCopy;
        v13 = "Failed to garbage collect object '%{public}@'.";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v14, v15, v13, v17, 0xCu);
      }
    }

    else
    {
      v10 = garbageCollect;
      v11 = APLogForCategory();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v12)
        {
          *v17 = 138543362;
          *&v17[4] = keyCopy;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Successfully garbage collected object '%{public}@'.", v17, 0xCu);
        }

        atomic_fetch_add(&self->_removedObjectsCount, v10);
        goto LABEL_15;
      }

      if (v12)
      {
        *v17 = 138543362;
        *&v17[4] = keyCopy;
        v13 = "Skipped a GC candidate '%{public}@' because it can be in use or has related object.";
        v14 = v11;
        v15 = OS_LOG_TYPE_INFO;
        goto LABEL_13;
      }
    }

LABEL_15:
    cacheStore3 = [(APCacheGarbageCollector *)self cacheStore];
    [cacheStore3 evictObjectFromMemoryCacheForKey:keyCopy];

    goto LABEL_16;
  }

  v7 = APLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v17 = 138543362;
    *&v17[4] = keyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Skipping a GC candidate '%{public}@' because it can be in use.", v17, 0xCu);
  }

LABEL_16:
}

- (void)_reportStatisticsForDuration:(double)duration storageInfo:(id)info cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  infoCopy = info;
  v9 = +[APSystemInternal isAppleInternalInstall];
  if (infoCopy && v9)
  {
    if ([infoCopy allocatedSize])
    {
      totalSize = [infoCopy totalSize];
      v11 = 1.0 - (totalSize / [infoCopy allocatedSize]);
    }

    else
    {
      v11 = 0.0;
    }

    [(APCacheGarbageCollector *)self timeSincePrevLaunch];
    v12 = [NSNumber numberWithDouble:?];
    v25[0] = v12;
    v24[1] = @"Duration";
    v13 = [NSNumber numberWithDouble:duration];
    v25[1] = v13;
    v24[2] = @"Cancelled";
    v14 = [NSNumber numberWithBool:cancelledCopy];
    v25[2] = v14;
    v24[3] = @"TotalFiles";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [infoCopy filesCount]);
    v25[3] = v15;
    v24[4] = @"TotalSize";
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [infoCopy totalSize]);
    v25[4] = v16;
    v24[5] = @"Fragmentation";
    *&v17 = v11;
    v18 = [NSNumber numberWithFloat:v17];
    v25[5] = v18;
    v24[6] = @"RemovedFiles";
    v19 = atomic_load(&self->_removedObjectsCount);
    v20 = [NSNumber numberWithUnsignedInt:v19];
    v25[6] = v20;
    v24[7] = @"AncientFiles";
    v21 = atomic_load(&self->_ancientObjectsCount);
    v22 = [NSNumber numberWithUnsignedInt:v21];
    v25[7] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:8];

    [APAnalytics sendEvent:@"gc" customPayload:v23];
  }
}

- (NSOperation)activeCleanupOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_activeCleanupOperation);

  return WeakRetained;
}

@end