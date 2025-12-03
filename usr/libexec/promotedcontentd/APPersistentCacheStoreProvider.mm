@interface APPersistentCacheStoreProvider
+ (APPersistentCachedStoreTransactionalProtocol)persistentCacheStore;
+ (void)assignPersistentCacheStore:(id)store;
@end

@implementation APPersistentCacheStoreProvider

+ (APPersistentCachedStoreTransactionalProtocol)persistentCacheStore
{
  WeakRetained = objc_loadWeakRetained(&qword_1004EA1D0);

  return WeakRetained;
}

+ (void)assignPersistentCacheStore:(id)store
{
  obj = store;
  WeakRetained = objc_loadWeakRetained(&qword_1004EA1D0);

  if (!WeakRetained)
  {
    objc_storeWeak(&qword_1004EA1D0, obj);
  }
}

@end