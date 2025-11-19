@interface APCacheStoreOperationTouch
- (APCacheStore)cacheStore;
- (APCacheStoreOperationTouch)initWithCacheStore:(id)a3 key:(id)a4 timestamp:(id)a5;
- (BOOL)execute;
@end

@implementation APCacheStoreOperationTouch

- (APCacheStoreOperationTouch)initWithCacheStore:(id)a3 key:(id)a4 timestamp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APCacheStoreOperationTouch *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cacheStore, v8);
    objc_storeStrong(&v12->_key, a4);
    objc_storeStrong(&v12->_timestamp, a5);
  }

  return v12;
}

- (BOOL)execute
{
  v3 = [(APCacheStoreOperationTouch *)self cacheStore];
  v4 = [v3 memoryCache];
  v5 = [(APCacheStoreOperationTouch *)self key];
  v6 = [v4 objectForKey:v5];

  v7 = [(APCacheStoreOperationTouch *)self cacheStore];
  v8 = [v7 fileStorage];
  v9 = [(APCacheStoreOperationTouch *)self timestamp];
  v10 = [(APCacheStoreOperationTouch *)self key];
  v17 = 0;
  v11 = [v8 setLastModifiedDate:v9 toFile:v10 error:&v17];
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