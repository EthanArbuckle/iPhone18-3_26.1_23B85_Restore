@interface APManagedContext
+ (id)createManagedContextWithContext:(id)context idAccount:(id)account;
+ (id)findManagedContextByFingerprint:(id)fingerprint;
- (APContext)context;
- (APManagedContext)initWithCoder:(id)coder;
- (APManagedContext)initWithIdentifier:(id)identifier;
- (BOOL)removeManagedContentDataForId:(id)id;
- (id)addContentData:(id)data;
- (id)addContentDataOnly:(id)only;
- (id)contentDataItemForIdentifier:(id)identifier;
- (id)managedContentDataEnumerator;
- (id)toJSONObject;
- (int64_t)garbageCollect;
- (void)encodeWithCoder:(id)coder;
- (void)setContentData:(id)data forIdentifier:(id)identifier;
- (void)setIdAccount:(id)account;
@end

@implementation APManagedContext

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = APManagedContext;
  coderCopy = coder;
  [(APCacheableBaseObject *)&v8 encodeWithCoder:coderCopy];
  v5 = [(APManagedContext *)self contentDataItems:v8.receiver];
  allIdentifiers = [v5 allIdentifiers];
  [coderCopy encodeObject:allIdentifiers forKey:@"contentDataItemIds"];

  idAccount = [(APManagedContext *)self idAccount];
  [coderCopy encodeObject:idAccount forKey:@"idAccount"];
}

- (APManagedContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = APManagedContext;
  v5 = [(APCacheableSynchronizedObject *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    identifier = [(APCacheableBaseObject *)v5 identifier];
    v7 = [(APCacheableBaseObject *)APContextWrapper proxyForIdentifier:identifier];
    contextWrapper = v5->_contextWrapper;
    v5->_contextWrapper = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idAccount"];
    [(APManagedContext *)v5 setIdAccount:v9];

    v10 = objc_opt_class();
    v24 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v11 = [coderCopy decodeObjectOfClasses:? forKey:?];
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
          contentDataItems = [(APManagedContext *)v5 contentDataItems];
          v22 = [contentDataItems arrayByAddingObject:v20 forIdentifier:v19];
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

- (APManagedContext)initWithIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = APManagedContext;
  v3 = [(APCacheableSynchronizedObject *)&v7 initWithIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    contentDataItems = v3->_contentDataItems;
    v3->_contentDataItems = v4;
  }

  return v3;
}

- (id)contentDataItemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(APCacheableSynchronizedObject *)self lockObject];
  contentDataItems = [(APManagedContext *)self contentDataItems];
  v6 = [contentDataItems objectForIdentifier:identifierCopy];

  [(APCacheableSynchronizedObject *)self unlockObject];

  return v6;
}

- (void)setContentData:(id)data forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  [(APCacheableSynchronizedObject *)self lockObject];
  contentDataItems = [(APManagedContext *)self contentDataItems];
  v9 = [contentDataItems arrayByAddingObject:dataCopy forIdentifier:identifierCopy];

  [(APManagedContext *)self setContentDataItems:v9];

  [(APCacheableSynchronizedObject *)self unlockObject];
}

- (BOOL)removeManagedContentDataForId:(id)id
{
  idCopy = id;
  [(APCacheableSynchronizedObject *)self lockObject];
  contentDataItems = [(APManagedContext *)self contentDataItems];
  v6 = [contentDataItems objectForIdentifier:idCopy];

  if (!v6)
  {
    identifier = [(APCacheableBaseObject *)self identifier];
    v13 = [NSString stringWithFormat:@"Managed content data %@ is not in %@ managed context.", idCopy, identifier];

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

  contentDataItems2 = [(APManagedContext *)self contentDataItems];
  v8 = [contentDataItems2 arrayByRemovingObjectForIdentifier:idCopy];
  [(APManagedContext *)self setContentDataItems:v8];

  [(APCacheableSynchronizedObject *)self unlockObject];
  if (sub_100396AE0(self))
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  [(APCacheableSynchronizedObject *)self lockObject];
  contentDataItems3 = [(APManagedContext *)self contentDataItems];
  v10 = [contentDataItems3 arrayByAddingObject:v6 forIdentifier:idCopy];
  [(APManagedContext *)self setContentDataItems:v10];

  [(APCacheableSynchronizedObject *)self unlockObject];
  v11 = 0;
LABEL_8:

  return v11;
}

- (int64_t)garbageCollect
{
  contentDataItems = [(APManagedContext *)self contentDataItems];
  v4 = [contentDataItems count];

  if (v4)
  {
    return 0;
  }

  identifier = [(APCacheableBaseObject *)self identifier];
  v6 = sub_10037AAE0(APContextWrapper, identifier);

  if (v6)
  {
    return 0;
  }

  v9 = sub_1003969D8(self);
  createTransaction = [v9 createTransaction];

  sub_100396BF4(self, createTransaction);
  identifier2 = [(APCacheableBaseObject *)self identifier];
  sub_10037AB68(APContextWrapper, identifier2, createTransaction);

  if ([createTransaction commit])
  {
    v7 = [createTransaction count];
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [(APCacheableBaseObject *)self identifier];
      v14 = 138543362;
      v15 = identifier3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to remove managed context '%{public}@'.", &v14, 0xCu);
    }

    v7 = -1;
  }

  return v7;
}

+ (id)createManagedContextWithContext:(id)context idAccount:(id)account
{
  contextCopy = context;
  accountCopy = account;
  fingerprint = [contextCopy fingerprint];
  v8 = [fingerprint length];

  if (v8)
  {
    v9 = [APManagedContext alloc];
    fingerprint2 = [contextCopy fingerprint];
    v11 = [(APManagedContext *)v9 initWithIdentifier:fingerprint2];

    v12 = [APContextWrapper alloc];
    fingerprint3 = [contextCopy fingerprint];
    v14 = [(APCacheableObjectWrapper *)v12 initWithObject:contextCopy identifier:fingerprint3];

    proxy = [(APCacheableBaseObject *)v14 proxy];
    [v11 setContextWrapper:proxy];

    [v11 setIdAccount:accountCopy];
    v16 = sub_10037AA18();
    createTransaction = [v16 createTransaction];

    sub_100396A10(v14, createTransaction);
    sub_100396A10(v11, createTransaction);
    commit = [createTransaction commit];
    v19 = APLogForCategory();
    v20 = v19;
    if (commit)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        fingerprint4 = [contextCopy fingerprint];
        v25 = 138543362;
        v26 = fingerprint4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Created new managed context for fingerprint '%{public}@'.", &v25, 0xCu);
      }

      v22 = v11;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        fingerprint5 = [contextCopy fingerprint];
        v25 = 138543362;
        v26 = fingerprint5;
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

- (id)addContentData:(id)data
{
  dataCopy = data;
  content = [dataCopy content];
  identifier = [content identifier];

  if ([identifier length])
  {
    v7 = sub_1003969D8(self);
    createTransaction = [v7 createTransaction];

    v9 = [[APManagedContentData alloc] initWithManagedContext:self contentData:dataCopy transaction:createTransaction];
    proxy = [(APCacheableBaseObject *)v9 proxy];
    identifier2 = [(APCacheableBaseObject *)v9 identifier];
    [(APManagedContext *)self setContentData:proxy forIdentifier:identifier2];

    sub_100396A10(self, createTransaction);
    if (([createTransaction commit]& 1) != 0)
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [(APCacheableBaseObject *)self identifier];
        v20 = 138543618;
        v21 = identifier;
        v22 = 2114;
        v23 = identifier3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Added content data '%{public}@' to managed context '%{public}@'.", &v20, 0x16u);
      }

      v14 = v9;
    }

    else
    {
      identifier4 = [(APCacheableBaseObject *)v9 identifier];
      [(APManagedContext *)self setContentData:0 forIdentifier:identifier4];

      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        identifier5 = [(APCacheableBaseObject *)self identifier];
        v20 = 138543618;
        v21 = identifier;
        v22 = 2114;
        v23 = identifier5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to add content data '%{public}@' to managed context '%{public}@'.", &v20, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    createTransaction = APLogForCategory();
    if (os_log_type_enabled(createTransaction, OS_LOG_TYPE_ERROR))
    {
      identifier6 = [(APCacheableBaseObject *)self identifier];
      v20 = 138543362;
      v21 = identifier6;
      _os_log_impl(&_mh_execute_header, createTransaction, OS_LOG_TYPE_ERROR, "Failed to add content data to managed context '%{public}@'. Content data identifier is empty.", &v20, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (APContext)context
{
  contextWrapper = [(APManagedContext *)self contextWrapper];
  object = [contextWrapper object];

  if (!object)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Context object for '%{public}@'.", &v8, 0xCu);
    }
  }

  return object;
}

+ (id)findManagedContextByFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  if ([fingerprintCopy length])
  {
    v4 = sub_10037AA48(APManagedContext, fingerprintCopy);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = fingerprintCopy;
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
  contentDataItems = [(APManagedContext *)self contentDataItems];
  allIdentifiers = [contentDataItems allIdentifiers];

  [(APCacheableSynchronizedObject *)self unlockObject];
  v5 = [[APManagedContendDataEnumerator alloc] initWithManagedContext:self contentDataItemIds:allIdentifiers];

  return v5;
}

- (void)setIdAccount:(id)account
{
  accountCopy = account;
  v7 = +[APIDAccountsWeakContainer sharedInstance];
  v5 = [v7 addIDAccount:accountCopy];

  idAccount = self->_idAccount;
  self->_idAccount = v5;
}

- (id)toJSONObject
{
  v3 = objc_autoreleasePoolPush();
  v4 = [APJSONArchiver JSONObjectWithObject:self];
  context = [(APManagedContext *)self context];
  toJSONObject = [APJSONArchiver JSONObjectWithObject:context];

  if (toJSONObject)
  {
    [v4 setObject:toJSONObject forKeyedSubscript:@"context"];
  }

  else
  {
    v7 = +[NSNull null];
    [v4 setObject:v7 forKeyedSubscript:@"context"];
  }

  contentDataItems = [(APManagedContext *)self contentDataItems];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [contentDataItems count]);

  [v4 setObject:v9 forKeyedSubscript:@"contentDataItems"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  contentDataItems2 = [(APManagedContext *)self contentDataItems];
  v11 = [contentDataItems2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      v15 = toJSONObject;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(contentDataItems2);
        }

        toJSONObject = [*(*(&v17 + 1) + 8 * v14) toJSONObject];

        if (toJSONObject)
        {
          [v9 addObject:toJSONObject];
        }

        v14 = v14 + 1;
        v15 = toJSONObject;
      }

      while (v12 != v14);
      v12 = [contentDataItems2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)addContentDataOnly:(id)only
{
  onlyCopy = only;
  v5 = [[APContentDataInternal alloc] initWithContent:onlyCopy];

  v6 = [(APManagedContext *)self addContentData:v5];

  return v6;
}

@end