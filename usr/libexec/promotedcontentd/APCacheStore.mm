@interface APCacheStore
- (APCacheStore)initWithFileStorage:(id)storage memoryCache:(id)cache;
- (APCacheStore)initWithTotalCostLimit:(int64_t)limit;
- (BOOL)_executeOperation:(id)operation;
- (BOOL)_hasObjectForKey:(id)key;
- (BOOL)hasObjectForKey:(id)key;
- (BOOL)isObjectAliveForKey:(id)key;
- (id)_objectForKey:(id)key ignoreKeys:(id)keys;
- (id)createTransaction;
- (id)enumerateIDsWithExtension:(id)extension;
- (id)objectForKey:(id)key ignoreKeys:(id)keys;
- (void)_printCacheStatistics;
- (void)enableDiagnosticsWithInterval:(double)interval;
- (void)evictObjectFromMemoryCacheForKey:(id)key;
- (void)executeBlock:(id)block;
- (void)removeObjectForKey:(id)key transaction:(id)transaction;
- (void)setObject:(id)object forKey:(id)key transaction:(id)transaction;
- (void)touchObjectForKey:(id)key transaction:(id)transaction;
@end

@implementation APCacheStore

- (APCacheStore)initWithFileStorage:(id)storage memoryCache:(id)cache
{
  storageCopy = storage;
  cacheCopy = cache;
  v15.receiver = self;
  v15.super_class = APCacheStore;
  v9 = [(APCacheStore *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(APUnfairRecursiveLock);
    lock = v9->_lock;
    v9->_lock = v10;

    objc_storeStrong(&v9->_fileStorage, storage);
    objc_storeStrong(&v9->_memoryCache, cache);
    v12 = +[NSMapTable weakToWeakObjectsMapTable];
    liveObjectsTracker = v9->_liveObjectsTracker;
    v9->_liveObjectsTracker = v12;
  }

  return v9;
}

- (APCacheStore)initWithTotalCostLimit:(int64_t)limit
{
  v5 = objc_alloc_init(NSCache);
  v6 = v5;
  if ((limit & 0x8000000000000000) == 0)
  {
    [v5 setTotalCostLimit:limit];
  }

  v7 = objc_alloc_init(APFileSystemAdapter);
  v8 = [(APCacheStore *)self initWithFileStorage:v7 memoryCache:v6];

  return v8;
}

- (BOOL)hasObjectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v5 = [NSString stringWithFormat:@"%@ key cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  lock = [(APCacheStore *)self lock];
  [lock lock];
  v7 = [(APCacheStore *)self _hasObjectForKey:keyCopy];
  [lock unlock];

  return v7;
}

- (BOOL)_hasObjectForKey:(id)key
{
  keyCopy = key;
  memoryCache = [(APCacheStore *)self memoryCache];
  v6 = [memoryCache objectForKey:keyCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    fileStorage = [(APCacheStore *)self fileStorage];
    v7 = [fileStorage fileExists:keyCopy];
  }

  return v7;
}

- (id)objectForKey:(id)key ignoreKeys:(id)keys
{
  keyCopy = key;
  keysCopy = keys;
  if (!keyCopy)
  {
    v8 = [NSString stringWithFormat:@"%@ key cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  lock = [(APCacheStore *)self lock];
  [lock lock];
  v10 = [(APCacheStore *)self _objectForKey:keyCopy ignoreKeys:keysCopy];
  [lock unlock];

  return v10;
}

- (id)_objectForKey:(id)key ignoreKeys:(id)keys
{
  keyCopy = key;
  keysCopy = keys;
  ++self->_diagnosticsOperations;
  memoryCache = [(APCacheStore *)self memoryCache];
  v9 = [memoryCache objectForKey:keyCopy];

  if (v9)
  {
    v10 = 8;
LABEL_5:
    ++*(&self->super.super.isa + v10);
    v13 = v9;
    goto LABEL_6;
  }

  liveObjectsTracker = [(APCacheStore *)self liveObjectsTracker];
  v9 = [liveObjectsTracker objectForKey:keyCopy];

  if (v9)
  {
    memoryCache2 = [(APCacheStore *)self memoryCache];
    [memoryCache2 setObject:v9 forKey:keyCopy];

    v10 = 24;
    goto LABEL_5;
  }

  fileStorage = [(APCacheStore *)self fileStorage];
  v28 = 0;
  v16 = [fileStorage readDataFromFile:keyCopy error:&v28];
  v17 = v28;

  if (v17)
  {
    domain = [v17 domain];
    v19 = domain;
    if (domain != NSCocoaErrorDomain)
    {

LABEL_16:
      v24 = APLogForCategory();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      *buf = 138543619;
      v30 = keyCopy;
      v31 = 2113;
      v32 = v17;
      v25 = "Unable to read file %{public}@. Error: %{private}@";
      v26 = v24;
      v27 = 22;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
      goto LABEL_19;
    }

    code = [v17 code];

    if (code != 260)
    {
      goto LABEL_16;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (![v16 length])
  {
    goto LABEL_20;
  }

  v20 = [APCacheableBaseObject deserializeFromData:v16 ignoreKeys:keysCopy];
  if (!v20)
  {
    v24 = APLogForCategory();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138543362;
    v30 = keyCopy;
    v25 = "Unable to deserialize object %{public}@.";
    v26 = v24;
    v27 = 12;
    goto LABEL_18;
  }

  v21 = v20;
  memoryCache3 = [(APCacheStore *)self memoryCache];
  [memoryCache3 setObject:v21 forKey:keyCopy];

  v13 = v21;
LABEL_21:

LABEL_6:

  return v13;
}

- (void)removeObjectForKey:(id)key transaction:(id)transaction
{
  keyCopy = key;
  transactionCopy = transaction;
  if (!keyCopy)
  {
    v7 = [NSString stringWithFormat:@"%@ key cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v8 = [[APCacheStoreOperationRemove alloc] initWithCacheStore:self key:keyCopy];
  if (transactionCopy)
  {
    [transactionCopy addOperation:v8];
  }

  else
  {
    [(APCacheStore *)self _executeOperation:v8];
  }
}

- (void)setObject:(id)object forKey:(id)key transaction:(id)transaction
{
  objectCopy = object;
  keyCopy = key;
  transactionCopy = transaction;
  if (objectCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [NSString stringWithFormat:@"%@ object cannot be nil", objc_opt_class()];
    APSimulateCrash();

    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  v12 = [NSString stringWithFormat:@"%@ key cannot be nil", objc_opt_class()];
  APSimulateCrash();

LABEL_3:
  v10 = [[APCacheStoreOperationSet alloc] initWithCacheStore:self key:keyCopy object:objectCopy];
  if (transactionCopy)
  {
    [transactionCopy addOperation:v10];
  }

  else
  {
    [(APCacheStore *)self _executeOperation:v10];
  }
}

- (void)touchObjectForKey:(id)key transaction:(id)transaction
{
  keyCopy = key;
  transactionCopy = transaction;
  if (!keyCopy)
  {
    v7 = [NSString stringWithFormat:@"%@ key cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v8 = [APCacheStoreOperationTouch alloc];
  v9 = +[NSDate now];
  v10 = [(APCacheStoreOperationTouch *)v8 initWithCacheStore:self key:keyCopy timestamp:v9];

  if (transactionCopy)
  {
    [transactionCopy addOperation:v10];
  }

  else
  {
    [(APCacheStore *)self _executeOperation:v10];
  }
}

- (id)createTransaction
{
  v2 = [[APCacheStoreTransaction alloc] initWithCacheStore:self];

  return v2;
}

- (void)executeBlock:(id)block
{
  blockCopy = block;
  lock = [(APCacheStore *)self lock];
  [lock lock];
  blockCopy[2](blockCopy);

  [lock unlock];
}

- (BOOL)_executeOperation:(id)operation
{
  operationCopy = operation;
  lock = [(APCacheStore *)self lock];
  [lock lock];
  execute = [operationCopy execute];
  if (execute)
  {
    [operationCopy commit];
  }

  else
  {
    [operationCopy rollBack];
  }

  [lock unlock];
  return execute;
}

- (BOOL)isObjectAliveForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v5 = [NSString stringWithFormat:@"%@ key cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  lock = [(APCacheStore *)self lock];
  [lock lock];
  liveObjectsTracker = [(APCacheStore *)self liveObjectsTracker];
  v8 = [liveObjectsTracker objectForKey:keyCopy];
  v9 = v8 != 0;

  [lock unlock];
  return v9;
}

- (void)evictObjectFromMemoryCacheForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v4 = [NSString stringWithFormat:@"%@ key cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  lock = [(APCacheStore *)self lock];
  [lock lock];
  memoryCache = [(APCacheStore *)self memoryCache];
  [memoryCache removeObjectForKey:keyCopy];

  liveObjectsTracker = [(APCacheStore *)self liveObjectsTracker];
  [liveObjectsTracker removeObjectForKey:keyCopy];

  [lock unlock];
}

- (id)enumerateIDsWithExtension:(id)extension
{
  extensionCopy = extension;
  v5 = objc_alloc_init(_APMapEnumerator);
  fileStorage = [(APCacheStore *)self fileStorage];
  v7 = [fileStorage enumeratorForFilesWithExtension:extensionCopy];

  [(_APMapEnumerator *)v5 setSrcEnumerator:v7];
  [(_APMapEnumerator *)v5 setTransformationBlock:&stru_100480450];

  return v5;
}

- (void)enableDiagnosticsWithInterval:(double)interval
{
  if (+[APSystemInternal isAppleInternalInstall])
  {
    self->_diagnosticsInterval = interval;
    if (interval > 0.0)
    {
      v5 = dispatch_get_global_queue(-2, 0);
      v6 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 7uLL, v5);
      diagnostics_memory_event_source = self->_diagnostics_memory_event_source;
      self->_diagnostics_memory_event_source = v6;

      v8 = self->_diagnostics_memory_event_source;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10036FB50;
      handler[3] = &unk_1004790A8;
      v15 = v8;
      v9 = v8;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(v9);
      objc_initWeak(&location, self);
      v10 = dispatch_time(0, (self->_diagnosticsInterval * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10036FC24;
      block[3] = &unk_10047C978;
      objc_copyWeak(&v12, &location);
      dispatch_after(v10, v5, block);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_printCacheStatistics
{
  context = objc_autoreleasePoolPush();
  lock = [(APCacheStore *)self lock];
  [lock lock];
  liveObjectsTracker = [(APCacheStore *)self liveObjectsTracker];
  keyEnumerator = [liveObjectsTracker keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      liveObjectsTracker2 = [(APCacheStore *)self liveObjectsTracker];
      v12 = [liveObjectsTracker2 objectForKey:v6];

      if (v12)
      {
        memoryCache = [(APCacheStore *)self memoryCache];
        v14 = [memoryCache objectForKey:v6];

        objectSize = [v12 objectSize];
        if (v14)
        {
          v8 += objectSize;
          ++v7;
        }

        else
        {
          v10 += objectSize;
          ++v9;
        }
      }

      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  [lock unlock];

  objc_autoreleasePoolPop(context);
  diagnosticsOperations = self->_diagnosticsOperations;
  if (diagnosticsOperations)
  {
    v18 = self->_diagnosticsMemoryCacheHits * 100.0 / diagnosticsOperations;
    v19 = self->_diagnosticsLiveObjectHits * 100.0 / diagnosticsOperations;
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
  }

  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:1];
    v22 = [NSByteCountFormatter stringFromByteCount:v10 countStyle:1];
    *buf = 134219267;
    v30 = v7;
    v31 = 2113;
    v32 = v21;
    v33 = 2048;
    v34 = v9;
    v35 = 2113;
    v36 = v22;
    v37 = 2048;
    v38 = v18;
    v39 = 2048;
    v40 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Cache Stats:\n\tCached Objects: %lu\n\tCached Objects Size: %{private}@\n\tAlive Uncached Objects: %lu\n\tAlive Uncached Objects Size: %{private}@\n\tMemory cache hits rate: %.2f%%\n\tLive objects hits rate: %.2f%%", buf, 0x3Eu);
  }

  objc_initWeak(buf, self);
  v23 = dispatch_time(0, (self->_diagnosticsInterval * 1000000000.0));
  v24 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036FFD8;
  block[3] = &unk_10047C978;
  objc_copyWeak(&v28, buf);
  dispatch_after(v23, v24, block);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

@end