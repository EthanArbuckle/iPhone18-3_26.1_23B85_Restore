@interface APManagedContext
+ (id)createManagedContextWithContext:(id)a3 idAccount:(id)a4;
+ (id)findManagedContextByFingerprint:(id)a3;
- (APContext)context;
- (APManagedContext)initWithCoder:(id)a3;
- (APManagedContext)initWithIdentifier:(id)a3;
- (BOOL)removeManagedContentDataForId:(id)a3;
- (id)addContentData:(id)a3;
- (id)addContentDataOnly:(id)a3;
- (id)contentDataItemForIdentifier:(id)a3;
- (id)managedContentDataEnumerator;
- (id)toJSONObject;
- (int64_t)garbageCollect;
- (void)encodeWithCoder:(id)a3;
- (void)setContentData:(id)a3 forIdentifier:(id)a4;
- (void)setIdAccount:(id)a3;
@end

@implementation APManagedContext

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = APManagedContext;
  v4 = a3;
  [(APCacheableBaseObject *)&v8 encodeWithCoder:v4];
  v5 = [(APManagedContext *)self contentDataItems:v8.receiver];
  v6 = [v5 allIdentifiers];
  [v4 encodeObject:v6 forKey:@"contentDataItemIds"];

  v7 = [(APManagedContext *)self idAccount];
  [v4 encodeObject:v7 forKey:@"idAccount"];
}

- (APManagedContext)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = APManagedContext;
  v5 = [(APCacheableSynchronizedObject *)&v30 initWithCoder:v4];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = [(APCacheableBaseObject *)v5 identifier];
    v7 = [(APCacheableBaseObject *)APContextWrapper proxyForIdentifier:v6];
    contextWrapper = v5->_contextWrapper;
    v5->_contextWrapper = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idAccount"];
    [(APManagedContext *)v5 setIdAccount:v9];

    v10 = objc_opt_class();
    v24 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v11 = [v4 decodeObjectOfClasses:? forKey:?];
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    contentDataItems = v5->_contentDataItems;
    v5->_contentDataItems = v12;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = [(APCacheableBaseObject *)APManagedContentData proxyForIdentifier:v19];
          v21 = [(APManagedContext *)v5 contentDataItems];
          v22 = [v21 arrayByAddingObject:v20 forIdentifier:v19];
          [(APManagedContext *)v5 setContentDataItems:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v16);
    }

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (APManagedContext)initWithIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = APManagedContext;
  v3 = [(APCacheableSynchronizedObject *)&v7 initWithIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    contentDataItems = v3->_contentDataItems;
    v3->_contentDataItems = v4;
  }

  return v3;
}

- (id)contentDataItemForIdentifier:(id)a3
{
  v4 = a3;
  [(APCacheableSynchronizedObject *)self lockObject];
  v5 = [(APManagedContext *)self contentDataItems];
  v6 = [v5 objectForIdentifier:v4];

  [(APCacheableSynchronizedObject *)self unlockObject];

  return v6;
}

- (void)setContentData:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(APCacheableSynchronizedObject *)self lockObject];
  v8 = [(APManagedContext *)self contentDataItems];
  v9 = [v8 arrayByAddingObject:v7 forIdentifier:v6];

  [(APManagedContext *)self setContentDataItems:v9];

  [(APCacheableSynchronizedObject *)self unlockObject];
}

- (BOOL)removeManagedContentDataForId:(id)a3
{
  v4 = a3;
  [(APCacheableSynchronizedObject *)self lockObject];
  v5 = [(APManagedContext *)self contentDataItems];
  v6 = [v5 objectForIdentifier:v4];

  if (!v6)
  {
    v12 = [(APCacheableBaseObject *)self identifier];
    v13 = [NSString stringWithFormat:@"Managed content data %@ is not in %@ managed context.", v4, v12];

    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }

    [(APCacheableSynchronizedObject *)self unlockObject];
    APSimulateCrash();

    goto LABEL_7;
  }

  v7 = [(APManagedContext *)self contentDataItems];
  v8 = [v7 arrayByRemovingObjectForIdentifier:v4];
  [(APManagedContext *)self setContentDataItems:v8];

  [(APCacheableSynchronizedObject *)self unlockObject];
  if (sub_100396AE0(self))
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  [(APCacheableSynchronizedObject *)self lockObject];
  v9 = [(APManagedContext *)self contentDataItems];
  v10 = [v9 arrayByAddingObject:v6 forIdentifier:v4];
  [(APManagedContext *)self setContentDataItems:v10];

  [(APCacheableSynchronizedObject *)self unlockObject];
  v11 = 0;
LABEL_8:

  return v11;
}

- (int64_t)garbageCollect
{
  v3 = [(APManagedContext *)self contentDataItems];
  v4 = [v3 count];

  if (v4)
  {
    return 0;
  }

  v5 = [(APCacheableBaseObject *)self identifier];
  v6 = sub_10037AAE0(APContextWrapper, v5);

  if (v6)
  {
    return 0;
  }

  v9 = sub_1003969D8(self);
  v10 = [v9 createTransaction];

  sub_100396BF4(self, v10);
  v11 = [(APCacheableBaseObject *)self identifier];
  sub_10037AB68(APContextWrapper, v11, v10);

  if ([v10 commit])
  {
    v7 = [v10 count];
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(APCacheableBaseObject *)self identifier];
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to remove managed context '%{public}@'.", &v14, 0xCu);
    }

    v7 = -1;
  }

  return v7;
}

+ (id)createManagedContextWithContext:(id)a3 idAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 fingerprint];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [APManagedContext alloc];
    v10 = [v5 fingerprint];
    v11 = [(APManagedContext *)v9 initWithIdentifier:v10];

    v12 = [APContextWrapper alloc];
    v13 = [v5 fingerprint];
    v14 = [(APCacheableObjectWrapper *)v12 initWithObject:v5 identifier:v13];

    v15 = [(APCacheableBaseObject *)v14 proxy];
    [v11 setContextWrapper:v15];

    [v11 setIdAccount:v6];
    v16 = sub_10037AA18();
    v17 = [v16 createTransaction];

    sub_100396A10(v14, v17);
    sub_100396A10(v11, v17);
    v18 = [v17 commit];
    v19 = APLogForCategory();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v5 fingerprint];
        v25 = 138543362;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Created new managed context for fingerprint '%{public}@'.", &v25, 0xCu);
      }

      v22 = v11;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v23 = [v5 fingerprint];
        v25 = 138543362;
        v26 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to create managed context for fingerprint '%{public}@'.", &v25, 0xCu);
      }

      v22 = 0;
    }
  }

  else
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create managed context. Fingerprint is empty.", &v25, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (id)addContentData:(id)a3
{
  v4 = a3;
  v5 = [v4 content];
  v6 = [v5 identifier];

  if ([v6 length])
  {
    v7 = sub_1003969D8(self);
    v8 = [v7 createTransaction];

    v9 = [[APManagedContentData alloc] initWithManagedContext:self contentData:v4 transaction:v8];
    v10 = [(APCacheableBaseObject *)v9 proxy];
    v11 = [(APCacheableBaseObject *)v9 identifier];
    [(APManagedContext *)self setContentData:v10 forIdentifier:v11];

    sub_100396A10(self, v8);
    if (([v8 commit]& 1) != 0)
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(APCacheableBaseObject *)self identifier];
        v20 = 138543618;
        v21 = v6;
        v22 = 2114;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Added content data '%{public}@' to managed context '%{public}@'.", &v20, 0x16u);
      }

      v14 = v9;
    }

    else
    {
      v16 = [(APCacheableBaseObject *)v9 identifier];
      [(APManagedContext *)self setContentData:0 forIdentifier:v16];

      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [(APCacheableBaseObject *)self identifier];
        v20 = 138543618;
        v21 = v6;
        v22 = 2114;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to add content data '%{public}@' to managed context '%{public}@'.", &v20, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = [(APCacheableBaseObject *)self identifier];
      v20 = 138543362;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to add content data to managed context '%{public}@'. Content data identifier is empty.", &v20, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (APContext)context
{
  v3 = [(APManagedContext *)self contextWrapper];
  v4 = [v3 object];

  if (!v4)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Context object for '%{public}@'.", &v8, 0xCu);
    }
  }

  return v4;
}

+ (id)findManagedContextByFingerprint:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = sub_10037AA48(APManagedContext, v3);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found managed context '%{public}@' in a cache.", &v7, 0xCu);
    }
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to find managed context. Fingerprint is empty.", &v7, 2u);
    }

    v4 = 0;
  }

LABEL_9:

  return v4;
}

- (id)managedContentDataEnumerator
{
  [(APCacheableSynchronizedObject *)self lockObject];
  v3 = [(APManagedContext *)self contentDataItems];
  v4 = [v3 allIdentifiers];

  [(APCacheableSynchronizedObject *)self unlockObject];
  v5 = [[APManagedContendDataEnumerator alloc] initWithManagedContext:self contentDataItemIds:v4];

  return v5;
}

- (void)setIdAccount:(id)a3
{
  v4 = a3;
  v7 = +[APIDAccountsWeakContainer sharedInstance];
  v5 = [v7 addIDAccount:v4];

  idAccount = self->_idAccount;
  self->_idAccount = v5;
}

- (id)toJSONObject
{
  v3 = objc_autoreleasePoolPush();
  v4 = [APJSONArchiver JSONObjectWithObject:self];
  v5 = [(APManagedContext *)self context];
  v6 = [APJSONArchiver JSONObjectWithObject:v5];

  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"context"];
  }

  else
  {
    v7 = +[NSNull null];
    [v4 setObject:v7 forKeyedSubscript:@"context"];
  }

  v8 = [(APManagedContext *)self contentDataItems];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);

  [v4 setObject:v9 forKeyedSubscript:@"contentDataItems"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(APManagedContext *)self contentDataItems];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      v15 = v6;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v6 = [*(*(&v17 + 1) + 8 * v14) toJSONObject];

        if (v6)
        {
          [v9 addObject:v6];
        }

        v14 = v14 + 1;
        v15 = v6;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)addContentDataOnly:(id)a3
{
  v4 = a3;
  v5 = [[APContentDataInternal alloc] initWithContent:v4];

  v6 = [(APManagedContext *)self addContentData:v5];

  return v6;
}

@end