@interface APCacheableMasterObject
- (APCacheableMasterObject)initWithCoder:(id)coder;
- (APCacheableMasterObject)initWithIdentifier:(id)identifier inPersistentStore:(id)store;
- (BOOL)addAssociatedObject:(id)object;
- (id)findAssociatedObjectOfKind:(id)kind;
- (void)encodeWithCoder:(id)coder;
- (void)remove;
- (void)removeAssociatedObject:(id)object;
- (void)save;
- (void)touch;
@end

@implementation APCacheableMasterObject

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = APCacheableMasterObject;
  coderCopy = coder;
  [(APCacheableBaseObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(APCacheableMasterObject *)self associatedObjects:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"_associated_objects"];
}

- (APCacheableMasterObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = APCacheableMasterObject;
  v5 = [(APCacheableSynchronizedObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_associated_objects"];
    associatedObjects = v5->_associatedObjects;
    v5->_associatedObjects = v9;
  }

  return v5;
}

- (APCacheableMasterObject)initWithIdentifier:(id)identifier inPersistentStore:(id)store
{
  v8.receiver = self;
  v8.super_class = APCacheableMasterObject;
  v4 = [(APCacheableObject *)&v8 initWithIdentifier:identifier inPersistentStore:store];
  if (v4)
  {
    v5 = +[NSMutableDictionary dictionary];
    associatedObjects = v4->_associatedObjects;
    v4->_associatedObjects = v5;
  }

  return v4;
}

- (id)findAssociatedObjectOfKind:(id)kind
{
  kindCopy = kind;
  if (!kindCopy)
  {
    v5 = [NSString stringWithFormat:@"%@ kind cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  [(APCacheableSynchronizedObject *)self lockObject];
  associatedObjects = [(APCacheableMasterObject *)self associatedObjects];
  v7 = [associatedObjects objectForKeyedSubscript:kindCopy];

  [(APCacheableSynchronizedObject *)self unlockObject];
  if ([v7 length])
  {
    persistentStore = [(APCacheableObject *)self persistentStore];
    v9 = [(APCacheableObject *)APCacheableAssociatedObject findCacheableObjectForId:v7 inPersistentStore:persistentStore];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addAssociatedObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v5 = [NSString stringWithFormat:@"%@ childObject cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  kind = [objc_opt_class() kind];
  if ([kind length])
  {
    [(APCacheableSynchronizedObject *)self lockObject];
    associatedObjects = [(APCacheableMasterObject *)self associatedObjects];
    v8 = [associatedObjects objectForKeyedSubscript:kind];

    if (!v8)
    {
      identifier = [objectCopy identifier];
      [(NSMutableDictionary *)self->_associatedObjects setObject:identifier forKeyedSubscript:kind];

      [(APCacheableSynchronizedObject *)self unlockObject];
      v12 = 1;
      goto LABEL_13;
    }

    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v16 = kind;
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

- (void)removeAssociatedObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v5 = [NSString stringWithFormat:@"%@ associatedObject cannot be nil", objc_opt_class()];
    APSimulateCrash();
  }

  kind = [objc_opt_class() kind];
  if ([kind length])
  {
    [(APCacheableSynchronizedObject *)self lockObject];
    [(NSMutableDictionary *)self->_associatedObjects removeObjectForKey:kind];
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
  persistentStore = [(APCacheableObject *)self persistentStore];
  fileName = [(APCacheableObject *)self fileName];
  [persistentStore touchObjectForKey:fileName];
}

- (void)save
{
  persistentStore = [(APCacheableObject *)self persistentStore];
  fileName = [(APCacheableObject *)self fileName];
  [persistentStore setObject:self forKey:fileName];
}

- (void)remove
{
  [(APCacheableSynchronizedObject *)self lockObject];
  associatedObjects = [(APCacheableMasterObject *)self associatedObjects];
  allValues = [associatedObjects allValues];

  [(NSMutableDictionary *)self->_associatedObjects removeAllObjects];
  [(APCacheableSynchronizedObject *)self unlockObject];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = allValues;
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
        persistentStore = [(APCacheableObject *)self persistentStore];
        [persistentStore removeObjectForKey:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  persistentStore2 = [(APCacheableObject *)self persistentStore];
  fileName = [(APCacheableObject *)self fileName];
  [persistentStore2 removeObjectForKey:fileName];
}

@end