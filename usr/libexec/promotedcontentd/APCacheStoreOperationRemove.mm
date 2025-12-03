@interface APCacheStoreOperationRemove
- (APCacheStore)cacheStore;
- (APCacheStoreOperationRemove)initWithCacheStore:(id)store key:(id)key;
- (BOOL)_removeObjectForKey:(id)key;
- (BOOL)execute;
@end

@implementation APCacheStoreOperationRemove

- (APCacheStoreOperationRemove)initWithCacheStore:(id)store key:(id)key
{
  storeCopy = store;
  keyCopy = key;
  v8 = [(APCacheStoreOperationRemove *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_cacheStore, storeCopy);
    objc_storeStrong(&v9->_key, key);
  }

  return v9;
}

- (BOOL)execute
{
  selfCopy = self;
  v3 = [(APCacheStoreOperationRemove *)self key];
  LOBYTE(selfCopy) = [(APCacheStoreOperationRemove *)selfCopy _removeObjectForKey:v3];

  return selfCopy;
}

- (BOOL)_removeObjectForKey:(id)key
{
  keyCopy = key;
  cacheStore = [(APCacheStoreOperationRemove *)self cacheStore];
  fileStorage = [cacheStore fileStorage];
  v18 = 0;
  [fileStorage removeFile:keyCopy error:&v18];
  v7 = v18;

  if (v7)
  {
    domain = [v7 domain];
    v9 = domain;
    if (domain != NSCocoaErrorDomain)
    {

LABEL_10:
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        v20 = keyCopy;
        v21 = 2113;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to remove file %{public}@. Error: %{private}@", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_13;
    }

    code = [v7 code];

    if (code != 4)
    {
      goto LABEL_10;
    }

    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = keyCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to remove file %{public}@. File does not exist.", buf, 0xCu);
    }

    v11 = 1;
  }

  else
  {
    v10 = APLogForCategory();
    v11 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = keyCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Removed file %{public}@.", buf, 0xCu);
    }
  }

LABEL_13:

  cacheStore2 = [(APCacheStoreOperationRemove *)self cacheStore];
  memoryCache = [cacheStore2 memoryCache];
  [memoryCache removeObjectForKey:keyCopy];

  cacheStore3 = [(APCacheStoreOperationRemove *)self cacheStore];
  liveObjectsTracker = [cacheStore3 liveObjectsTracker];
  [liveObjectsTracker removeObjectForKey:keyCopy];

  return v11;
}

- (APCacheStore)cacheStore
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheStore);

  return WeakRetained;
}

@end