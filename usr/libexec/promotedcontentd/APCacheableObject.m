@interface APCacheableObject
+ (id)fileNameForIdentifier:(id)a3;
+ (id)findCacheableObjectForId:(id)a3 inPersistentStore:(id)a4;
- (APCacheableObject)initWithIdentifier:(id)a3 inPersistentStore:(id)a4;
- (APPersistentCachedStoreProtocol)persistentStore;
- (id)fileName;
- (id)initInPersistentStore:(id)a3;
@end

@implementation APCacheableObject

+ (id)fileNameForIdentifier:(id)a3
{
  v4 = a3;
  if ([a1 isMasterObject])
  {
    [a1 masterObjectFileNameForIdentifier:v4];
  }

  else
  {
    [a1 associatedObjectFileNameForIdentifier:v4];
  }
  v5 = ;

  return v5;
}

- (id)fileName
{
  v3 = objc_opt_class();
  v4 = [(APCacheableBaseObject *)self identifier];
  v5 = [v3 fileNameForIdentifier:v4];

  return v5;
}

- (id)initInPersistentStore:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NSString stringWithFormat:@"%@ persistentStore cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [(APCacheableObject *)self initWithIdentifier:v7 inPersistentStore:v4];

  return v8;
}

- (APCacheableObject)initWithIdentifier:(id)a3 inPersistentStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [NSString stringWithFormat:@"%@ identifier cannot be nil", objc_opt_class()];
    APSimulateCrash();

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v16 = [NSString stringWithFormat:@"%@ persistentStore cannot be nil", objc_opt_class()];
  APSimulateCrash();

LABEL_3:
  v8 = [objc_opt_class() fileNameForIdentifier:v6];
  v9 = [v7 hasObjectForKey:v8];

  if (v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Item %{public}@ already exists.", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = APCacheableObject;
    v12 = [(APCacheableSynchronizedObject *)&v17 initWithIdentifier:v6];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_persistentStore, v7);
    }

    self = v13;
    v11 = self;
  }

  return v11;
}

+ (id)findCacheableObjectForId:(id)a3 inPersistentStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = [NSString stringWithFormat:@"%@ persistentStore cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  if ([v5 length])
  {
    v8 = [objc_opt_class() fileNameForIdentifier:v5];
    v9 = [v6 objectForKey:v8];

    v10 = v9;
    [v10 setPersistentStore:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (APPersistentCachedStoreProtocol)persistentStore
{
  WeakRetained = objc_loadWeakRetained(&self->_persistentStore);

  return WeakRetained;
}

@end