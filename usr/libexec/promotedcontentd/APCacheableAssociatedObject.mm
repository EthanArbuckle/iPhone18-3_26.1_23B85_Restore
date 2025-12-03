@interface APCacheableAssociatedObject
- (APCacheableAssociatedObject)initWithCoder:(id)coder;
- (APCacheableAssociatedObject)initWithMaster:(id)master;
- (APCacheableMasterObject)masterObject;
- (BOOL)save;
- (void)encodeWithCoder:(id)coder;
- (void)remove;
@end

@implementation APCacheableAssociatedObject

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = APCacheableAssociatedObject;
  coderCopy = coder;
  [(APCacheableBaseObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(APCacheableAssociatedObject *)self masterId:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"_master_id"];
}

- (APCacheableAssociatedObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = APCacheableAssociatedObject;
  v5 = [(APCacheableSynchronizedObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_master_id"];
    masterId = v5->_masterId;
    v5->_masterId = v6;
  }

  return v5;
}

- (APCacheableAssociatedObject)initWithMaster:(id)master
{
  masterCopy = master;
  if (!masterCopy)
  {
    v5 = [NSString stringWithFormat:@"%@ master cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  persistentStore = [masterCopy persistentStore];
  v7 = [(APCacheableObject *)self initInPersistentStore:persistentStore];

  if (v7)
  {
    identifier = [masterCopy identifier];
    v9 = [identifier copy];
    masterId = v7->_masterId;
    v7->_masterId = v9;

    v7->_isNewObject = 1;
  }

  return v7;
}

- (APCacheableMasterObject)masterObject
{
  WeakRetained = objc_loadWeakRetained(&self->_masterObject);
  if (!WeakRetained)
  {
    masterId = [(APCacheableAssociatedObject *)self masterId];
    v5 = [masterId length];

    if (v5)
    {
      masterId2 = [(APCacheableAssociatedObject *)self masterId];
      persistentStore = [(APCacheableObject *)self persistentStore];
      WeakRetained = [(APCacheableObject *)APCacheableMasterObject findCacheableObjectForId:masterId2 inPersistentStore:persistentStore];

      if (!WeakRetained)
      {
        v8 = APLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          masterId3 = [(APCacheableAssociatedObject *)self masterId];
          identifier = [(APCacheableBaseObject *)self identifier];
          v12 = 138478083;
          v13 = masterId3;
          v14 = 2113;
          v15 = identifier;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to reconstitute master object with id: '%{private}@' for associated object: '%{private}@'. Data consistency is broken.", &v12, 0x16u);
        }
      }

      objc_storeWeak(&self->_masterObject, WeakRetained);
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (BOOL)save
{
  masterObject = [(APCacheableAssociatedObject *)self masterObject];
  if (!masterObject)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v10 = 138477827;
      v11 = identifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Master object is not available while saving '%{private}@'.", &v10, 0xCu);
    }

    goto LABEL_11;
  }

  [(APCacheableSynchronizedObject *)self lockObject];
  if (![(APCacheableAssociatedObject *)self isNewObject])
  {
    [(APCacheableSynchronizedObject *)self unlockObject];
    [masterObject touch];
    goto LABEL_9;
  }

  if (([masterObject addAssociatedObject:self] & 1) == 0)
  {
    [(APCacheableSynchronizedObject *)self unlockObject];
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  [masterObject save];
  [(APCacheableAssociatedObject *)self setIsNewObject:0];
  [(APCacheableSynchronizedObject *)self unlockObject];
LABEL_9:
  persistentStore = [(APCacheableObject *)self persistentStore];
  fileName = [(APCacheableObject *)self fileName];
  [persistentStore setObject:self forKey:fileName];

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)remove
{
  masterObject = [(APCacheableAssociatedObject *)self masterObject];
  v4 = masterObject;
  if (masterObject)
  {
    [masterObject removeAssociatedObject:self];
    [v4 save];
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v9 = 138477827;
      v10 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Master object is not available while removing '%{private}@'.", &v9, 0xCu);
    }
  }

  persistentStore = [(APCacheableObject *)self persistentStore];
  fileName = [(APCacheableObject *)self fileName];
  [persistentStore removeObjectForKey:fileName];
}

@end