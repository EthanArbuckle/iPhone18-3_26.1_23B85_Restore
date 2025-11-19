@interface APCacheStoreOperationRemove
- (APCacheStore)cacheStore;
- (APCacheStoreOperationRemove)initWithCacheStore:(id)a3 key:(id)a4;
- (BOOL)_removeObjectForKey:(id)a3;
- (BOOL)execute;
@end

@implementation APCacheStoreOperationRemove

- (APCacheStoreOperationRemove)initWithCacheStore:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APCacheStoreOperationRemove *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_cacheStore, v6);
    objc_storeStrong(&v9->_key, a4);
  }

  return v9;
}

- (BOOL)execute
{
  v2 = self;
  v3 = [(APCacheStoreOperationRemove *)self key];
  LOBYTE(v2) = [(APCacheStoreOperationRemove *)v2 _removeObjectForKey:v3];

  return v2;
}

- (BOOL)_removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(APCacheStoreOperationRemove *)self cacheStore];
  v6 = [v5 fileStorage];
  v18 = 0;
  [v6 removeFile:v4 error:&v18];
  v7 = v18;

  if (v7)
  {
    v8 = [v7 domain];
    v9 = v8;
    if (v8 != NSCocoaErrorDomain)
    {

LABEL_10:
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543619;
        v20 = v4;
        v21 = 2113;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to remove file %{public}@. Error: %{private}@", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_13;
    }

    v12 = [v7 code];

    if (v12 != 4)
    {
      goto LABEL_10;
    }

    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v4;
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
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Removed file %{public}@.", buf, 0xCu);
    }
  }

LABEL_13:

  v13 = [(APCacheStoreOperationRemove *)self cacheStore];
  v14 = [v13 memoryCache];
  [v14 removeObjectForKey:v4];

  v15 = [(APCacheStoreOperationRemove *)self cacheStore];
  v16 = [v15 liveObjectsTracker];
  [v16 removeObjectForKey:v4];

  return v11;
}

- (APCacheStore)cacheStore
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheStore);

  return WeakRetained;
}

@end