@interface APCacheStoreOperationSet
- (APCacheStore)cacheStore;
- (APCacheStoreOperationSet)initWithCacheStore:(id)a3 key:(id)a4 object:(id)a5;
- (BOOL)_setObject:(id)a3 objectSerializedData:(id)a4 forKey:(id)a5;
- (BOOL)execute;
@end

@implementation APCacheStoreOperationSet

- (APCacheStoreOperationSet)initWithCacheStore:(id)a3 key:(id)a4 object:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APCacheStoreOperationSet *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cacheStore, v8);
    objc_storeStrong(&v12->_key, a4);
    objc_storeStrong(&v12->_object, a5);
  }

  return v12;
}

- (BOOL)execute
{
  v3 = [(APCacheStoreOperationSet *)self object];
  v4 = [v3 serialize];

  if ([v4 length])
  {
    v5 = [(APCacheStoreOperationSet *)self object];
    v6 = [(APCacheStoreOperationSet *)self key];
    v7 = [(APCacheStoreOperationSet *)self _setObject:v5 objectSerializedData:v4 forKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setObject:(id)a3 objectSerializedData:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(APCacheStoreOperationSet *)self cacheStore];
  v12 = [v11 fileStorage];
  v22 = 0;
  v13 = [v12 writeData:v10 toFile:v9 error:&v22];

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
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Updated file %{public}@.", buf, 0xCu);
    }

    v18 = [(APCacheStoreOperationSet *)self cacheStore];
    v19 = [v18 liveObjectsTracker];
    [v19 setObject:v8 forKey:v9];

    v17 = [(APCacheStoreOperationSet *)self cacheStore];
    v20 = [v17 memoryCache];
    [v20 setObject:v8 forKey:v9 cost:{objc_msgSend(v8, "objectSize")}];
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543619;
    v24 = v9;
    v25 = 2113;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to update file %{public}@. Error: %{private}@", buf, 0x16u);
  }

  return v15;
}

- (APCacheStore)cacheStore
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheStore);

  return WeakRetained;
}

@end