@interface APPersistentCacheStoreProvider
+ (APPersistentCachedStoreTransactionalProtocol)persistentCacheStore;
+ (void)assignPersistentCacheStore:(id)a3;
@end

@implementation APPersistentCacheStoreProvider

+ (APPersistentCachedStoreTransactionalProtocol)persistentCacheStore
{
  WeakRetained = objc_loadWeakRetained(&qword_1004EA1D0);

  return WeakRetained;
}

+ (void)assignPersistentCacheStore:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&qword_1004EA1D0);

  if (!WeakRetained)
  {
    objc_storeWeak(&qword_1004EA1D0, obj);
  }
}

@end