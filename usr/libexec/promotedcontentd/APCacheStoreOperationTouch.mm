@interface APCacheStoreOperationTouch
- (APCacheStore)cacheStore;
- (APCacheStoreOperationTouch)initWithCacheStore:(id)store key:(id)key timestamp:(id)timestamp;
- (BOOL)execute;
@end

@implementation APCacheStoreOperationTouch

- (APCacheStoreOperationTouch)initWithCacheStore:(id)store key:(id)key timestamp:(id)timestamp
{
  storeCopy = store;
  keyCopy = key;
  timestampCopy = timestamp;
  v11 = [(APCacheStoreOperationTouch *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cacheStore, storeCopy);
    objc_storeStrong(&v12->_key, key);
    objc_storeStrong(&v12->_timestamp, timestamp);
  }

  return v12;
}

- (BOOL)execute
{
  cacheStore = [(APCacheStoreOperationTouch *)self cacheStore];
  memoryCache = [cacheStore memoryCache];
  v5 = [(APCacheStoreOperationTouch *)self key];
  v6 = [memoryCache objectForKey:v5];

  cacheStore2 = [(APCacheStoreOperationTouch *)self cacheStore];
  fileStorage = [cacheStore2 fileStorage];
  timestamp = [(APCacheStoreOperationTouch *)self timestamp];
  v10 = [(APCacheStoreOperationTouch *)self key];
  v17 = 0;
  v11 = [fileStorage setLastModifiedDate:timestamp toFile:v10 error:&v17];
  v12 = v17;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(APCacheStoreOperationTouch *)self key];
      *buf = 138543619;
      v19 = v15;
      v20 = 2113;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable set last modified date to file %{public}@. Error: %{private}@", buf, 0x16u);
    }
  }

  return v13;
}

- (APCacheStore)cacheStore
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheStore);

  return WeakRetained;
}

@end