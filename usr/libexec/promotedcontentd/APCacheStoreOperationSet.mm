@interface APCacheStoreOperationSet
- (APCacheStore)cacheStore;
- (APCacheStoreOperationSet)initWithCacheStore:(id)store key:(id)key object:(id)object;
- (BOOL)_setObject:(id)object objectSerializedData:(id)data forKey:(id)key;
- (BOOL)execute;
@end

@implementation APCacheStoreOperationSet

- (APCacheStoreOperationSet)initWithCacheStore:(id)store key:(id)key object:(id)object
{
  storeCopy = store;
  keyCopy = key;
  objectCopy = object;
  v11 = [(APCacheStoreOperationSet *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cacheStore, storeCopy);
    objc_storeStrong(&v12->_key, key);
    objc_storeStrong(&v12->_object, object);
  }

  return v12;
}

- (BOOL)execute
{
  object = [(APCacheStoreOperationSet *)self object];
  serialize = [object serialize];

  if ([serialize length])
  {
    object2 = [(APCacheStoreOperationSet *)self object];
    v6 = [(APCacheStoreOperationSet *)self key];
    v7 = [(APCacheStoreOperationSet *)self _setObject:object2 objectSerializedData:serialize forKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setObject:(id)object objectSerializedData:(id)data forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  dataCopy = data;
  cacheStore = [(APCacheStoreOperationSet *)self cacheStore];
  fileStorage = [cacheStore fileStorage];
  v22 = 0;
  v13 = [fileStorage writeData:dataCopy toFile:keyCopy error:&v22];

  v14 = v22;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v16 = APLogForCategory();
  cacheStore3 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = keyCopy;
      _os_log_impl(&_mh_execute_header, cacheStore3, OS_LOG_TYPE_INFO, "Updated file %{public}@.", buf, 0xCu);
    }

    cacheStore2 = [(APCacheStoreOperationSet *)self cacheStore];
    liveObjectsTracker = [cacheStore2 liveObjectsTracker];
    [liveObjectsTracker setObject:objectCopy forKey:keyCopy];

    cacheStore3 = [(APCacheStoreOperationSet *)self cacheStore];
    memoryCache = [cacheStore3 memoryCache];
    [memoryCache setObject:objectCopy forKey:keyCopy cost:{objc_msgSend(objectCopy, "objectSize")}];
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543619;
    v24 = keyCopy;
    v25 = 2113;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, cacheStore3, OS_LOG_TYPE_ERROR, "Unable to update file %{public}@. Error: %{private}@", buf, 0x16u);
  }

  return v15;
}

- (APCacheStore)cacheStore
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheStore);

  return WeakRetained;
}

@end