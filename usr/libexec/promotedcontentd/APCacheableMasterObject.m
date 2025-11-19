@interface APCacheableMasterObject
- (APCacheableMasterObject)initWithCoder:(id)a3;
- (APCacheableMasterObject)initWithIdentifier:(id)a3 inPersistentStore:(id)a4;
- (BOOL)addAssociatedObject:(id)a3;
- (id)findAssociatedObjectOfKind:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)remove;
- (void)removeAssociatedObject:(id)a3;
- (void)save;
- (void)touch;
@end

@implementation APCacheableMasterObject

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = APCacheableMasterObject;
  v4 = a3;
  [(APCacheableBaseObject *)&v6 encodeWithCoder:v4];
  v5 = [(APCacheableMasterObject *)self associatedObjects:v6.receiver];
  [v4 encodeObject:v5 forKey:@"_associated_objects"];
}

- (APCacheableMasterObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = APCacheableMasterObject;
  v5 = [(APCacheableSynchronizedObject *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_associated_objects"];
    associatedObjects = v5->_associatedObjects;
    v5->_associatedObjects = v9;
  }

  return v5;
}

- (APCacheableMasterObject)initWithIdentifier:(id)a3 inPersistentStore:(id)a4
{
  v8.receiver = self;
  v8.super_class = APCacheableMasterObject;
  v4 = [(APCacheableObject *)&v8 initWithIdentifier:a3 inPersistentStore:a4];
  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    associatedObjects = v4->_associatedObjects;
    v4->_associatedObjects = v5;
  }

  return v4;
}

- (id)findAssociatedObjectOfKind:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NSString stringWithFormat:@"%@ kind cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  [(APCacheableSynchronizedObject *)self lockObject];
  v6 = [(APCacheableMasterObject *)self associatedObjects];
  v7 = [v6 objectForKeyedSubscript:v4];

  [(APCacheableSynchronizedObject *)self unlockObject];
  if ([v7 length])
  {
    v8 = [(APCacheableObject *)self persistentStore];
    v9 = [(APCacheableObject *)APCacheableAssociatedObject findCacheableObjectForId:v7 inPersistentStore:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addAssociatedObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NSString stringWithFormat:@"%@ childObject cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v6 = [objc_opt_class() kind];
  if ([v6 length])
  {
    [(APCacheableSynchronizedObject *)self lockObject];
    v7 = [(APCacheableMasterObject *)self associatedObjects];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8)
    {
      v13 = [v4 identifier];
      [(NSMutableDictionary *)self->_associatedObjects setObject:v13 forKeyedSubscript:v6];

      [(APCacheableSynchronizedObject *)self unlockObject];
      v12 = 1;
      goto LABEL_13;
    }

    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Master object already contains object of kind '%{private}@'", buf, 0xCu);
    }

    [(APCacheableSynchronizedObject *)self unlockObject];
  }

  else
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v16 = objc_opt_class();
      v11 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Associated object '%{private}@' kind is empty.", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)removeAssociatedObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NSString stringWithFormat:@"%@ associatedObject cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  v6 = [objc_opt_class() kind];
  if ([v6 length])
  {
    [(APCacheableSynchronizedObject *)self lockObject];
    [(NSMutableDictionary *)self->_associatedObjects removeObjectForKey:v6];
    [(APCacheableSynchronizedObject *)self unlockObject];
  }

  else
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Associated object '%{private}@' kind is empty.", buf, 0xCu);
    }
  }
}

- (void)touch
{
  v4 = [(APCacheableObject *)self persistentStore];
  v3 = [(APCacheableObject *)self fileName];
  [v4 touchObjectForKey:v3];
}

- (void)save
{
  v4 = [(APCacheableObject *)self persistentStore];
  v3 = [(APCacheableObject *)self fileName];
  [v4 setObject:self forKey:v3];
}

- (void)remove
{
  [(APCacheableSynchronizedObject *)self lockObject];
  v3 = [(APCacheableMasterObject *)self associatedObjects];
  v4 = [v3 allValues];

  [(NSMutableDictionary *)self->_associatedObjects removeAllObjects];
  [(APCacheableSynchronizedObject *)self unlockObject];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [APCacheableObject associatedObjectFileNameForIdentifier:*(*(&v14 + 1) + 8 * v9), v14];
        v11 = [(APCacheableObject *)self persistentStore];
        [v11 removeObjectForKey:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [(APCacheableObject *)self persistentStore];
  v13 = [(APCacheableObject *)self fileName];
  [v12 removeObjectForKey:v13];
}

@end