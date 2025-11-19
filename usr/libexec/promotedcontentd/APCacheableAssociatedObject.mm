@interface APCacheableAssociatedObject
- (APCacheableAssociatedObject)initWithCoder:(id)a3;
- (APCacheableAssociatedObject)initWithMaster:(id)a3;
- (APCacheableMasterObject)masterObject;
- (BOOL)save;
- (void)encodeWithCoder:(id)a3;
- (void)remove;
@end

@implementation APCacheableAssociatedObject

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = APCacheableAssociatedObject;
  v4 = a3;
  [(APCacheableBaseObject *)&v6 encodeWithCoder:v4];
  v5 = [(APCacheableAssociatedObject *)self masterId:v6.receiver];
  [v4 encodeObject:v5 forKey:@"_master_id"];
}

- (APCacheableAssociatedObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APCacheableAssociatedObject;
  v5 = [(APCacheableSynchronizedObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_master_id"];
    masterId = v5->_masterId;
    v5->_masterId = v6;
  }

  return v5;
}

- (APCacheableAssociatedObject)initWithMaster:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NSString stringWithFormat:@"%@ master cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v6 = [v4 persistentStore];
  v7 = [(APCacheableObject *)self initInPersistentStore:v6];

  if (v7)
  {
    v8 = [v4 identifier];
    v9 = [v8 copy];
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
    v4 = [(APCacheableAssociatedObject *)self masterId];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [(APCacheableAssociatedObject *)self masterId];
      v7 = [(APCacheableObject *)self persistentStore];
      WeakRetained = [(APCacheableObject *)APCacheableMasterObject findCacheableObjectForId:v6 inPersistentStore:v7];

      if (!WeakRetained)
      {
        v8 = APLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [(APCacheableAssociatedObject *)self masterId];
          v10 = [(APCacheableBaseObject *)self identifier];
          v12 = 138478083;
          v13 = v9;
          v14 = 2113;
          v15 = v10;
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
  v3 = [(APCacheableAssociatedObject *)self masterObject];
  if (!v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(APCacheableBaseObject *)self identifier];
      v10 = 138477827;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Master object is not available while saving '%{private}@'.", &v10, 0xCu);
    }

    goto LABEL_11;
  }

  [(APCacheableSynchronizedObject *)self lockObject];
  if (![(APCacheableAssociatedObject *)self isNewObject])
  {
    [(APCacheableSynchronizedObject *)self unlockObject];
    [v3 touch];
    goto LABEL_9;
  }

  if (([v3 addAssociatedObject:self] & 1) == 0)
  {
    [(APCacheableSynchronizedObject *)self unlockObject];
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  [v3 save];
  [(APCacheableAssociatedObject *)self setIsNewObject:0];
  [(APCacheableSynchronizedObject *)self unlockObject];
LABEL_9:
  v6 = [(APCacheableObject *)self persistentStore];
  v7 = [(APCacheableObject *)self fileName];
  [v6 setObject:self forKey:v7];

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)remove
{
  v3 = [(APCacheableAssociatedObject *)self masterObject];
  v4 = v3;
  if (v3)
  {
    [v3 removeAssociatedObject:self];
    [v4 save];
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(APCacheableBaseObject *)self identifier];
      v9 = 138477827;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Master object is not available while removing '%{private}@'.", &v9, 0xCu);
    }
  }

  v7 = [(APCacheableObject *)self persistentStore];
  v8 = [(APCacheableObject *)self fileName];
  [v7 removeObjectForKey:v8];
}

@end