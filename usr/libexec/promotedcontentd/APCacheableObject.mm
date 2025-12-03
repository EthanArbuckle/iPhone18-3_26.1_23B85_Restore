@interface APCacheableObject
+ (id)fileNameForIdentifier:(id)identifier;
+ (id)findCacheableObjectForId:(id)id inPersistentStore:(id)store;
- (APCacheableObject)initWithIdentifier:(id)identifier inPersistentStore:(id)store;
- (APPersistentCachedStoreProtocol)persistentStore;
- (id)fileName;
- (id)initInPersistentStore:(id)store;
@end

@implementation APCacheableObject

+ (id)fileNameForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([self isMasterObject])
  {
    [self masterObjectFileNameForIdentifier:identifierCopy];
  }

  else
  {
    [self associatedObjectFileNameForIdentifier:identifierCopy];
  }
  v5 = ;

  return v5;
}

- (id)fileName
{
  v3 = objc_opt_class();
  identifier = [(APCacheableBaseObject *)self identifier];
  v5 = [v3 fileNameForIdentifier:identifier];

  return v5;
}

- (id)initInPersistentStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    v5 = [NSString stringWithFormat:@"%@ persistentStore cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  v8 = [(APCacheableObject *)self initWithIdentifier:uUIDString inPersistentStore:storeCopy];

  return v8;
}

- (APCacheableObject)initWithIdentifier:(id)identifier inPersistentStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  if ([identifierCopy length])
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [NSString stringWithFormat:@"%@ identifier cannot be nil", objc_opt_class()];
    APSimulateCrash();

    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  v16 = [NSString stringWithFormat:@"%@ persistentStore cannot be nil", objc_opt_class()];
  APSimulateCrash();

LABEL_3:
  v8 = [objc_opt_class() fileNameForIdentifier:identifierCopy];
  v9 = [storeCopy hasObjectForKey:v8];

  if (v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Item %{public}@ already exists.", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = APCacheableObject;
    v12 = [(APCacheableSynchronizedObject *)&v17 initWithIdentifier:identifierCopy];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_persistentStore, storeCopy);
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)findCacheableObjectForId:(id)id inPersistentStore:(id)store
{
  idCopy = id;
  storeCopy = store;
  if (!storeCopy)
  {
    v7 = [NSString stringWithFormat:@"%@ persistentStore cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  if ([idCopy length])
  {
    v8 = [objc_opt_class() fileNameForIdentifier:idCopy];
    v9 = [storeCopy objectForKey:v8];

    v10 = v9;
    [v10 setPersistentStore:storeCopy];
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