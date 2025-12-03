@interface APManagedContentData
+ (id)findById:(id)id;
- (APContentData)contentData;
- (APContentDataPrivate)contentDataPrivate;
- (APContentDataTransient)contentDataTransient;
- (APManagedContentData)initWithCoder:(id)coder;
- (APManagedContentData)initWithManagedContext:(id)context contentData:(id)data transaction:(id)transaction;
- (BOOL)_update;
- (BOOL)_updatePrivateData;
- (BOOL)_updateTransientData;
- (id)_heavyContentKeyNames;
- (id)allPlacementTypesForContentData:(id)data;
- (id)toJSONObject;
- (int64_t)garbageCollect;
- (void)_unloadHeavyContentFromContentData;
- (void)close;
- (void)encodeWithCoder:(id)coder;
- (void)markInUseByClientWithId:(id)id;
- (void)markUsed;
@end

@implementation APManagedContentData

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = APManagedContentData;
  coderCopy = coder;
  [(APCacheableBaseObject *)&v9 encodeWithCoder:coderCopy];
  v5 = [(APManagedContentData *)self contextIdentifier:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"contextId"];

  placementTypes = [(APManagedContentData *)self placementTypes];
  [coderCopy encodeObject:placementTypes forKey:@"placementTypes"];

  clientId = [(APManagedContentData *)self clientId];
  [coderCopy encodeObject:clientId forKey:@"clientId"];

  [coderCopy encodeInteger:-[APManagedContentData state](self forKey:{"state"), @"state"}];
  expirationDate = [(APManagedContentData *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"lastModified"];
}

- (APManagedContentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = APManagedContentData;
  v5 = [(APCacheableSynchronizedObject *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    objc_initWeak(&location, v5);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextId"];
    contextIdentifier = v5->_contextIdentifier;
    v5->_contextIdentifier = v7;

    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"placementTypes"];
    placementTypes = v5->_placementTypes;
    v5->_placementTypes = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientId"];
    clientId = v5->_clientId;
    v5->_clientId = v13;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    identifier = [(APCacheableBaseObject *)v5 identifier];
    v16 = [(APCacheableBaseObject *)APContentDataWrapper proxyForIdentifier:identifier];
    contentDataWrapper = v5->_contentDataWrapper;
    v5->_contentDataWrapper = v16;

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10037FFC4;
    v27[3] = &unk_100480960;
    objc_copyWeak(&v28, &location);
    [(APContentDataWrapper *)v5->_contentDataWrapper setProvideIgnorableKeyNamesBlock:v27];
    identifier2 = [(APCacheableBaseObject *)v5 identifier];
    v19 = [(APCacheableBaseObject *)APContentDataPrivateWrapper proxyForIdentifier:identifier2];
    contentDataPrivateWrapper = v5->_contentDataPrivateWrapper;
    v5->_contentDataPrivateWrapper = v19;

    identifier3 = [(APCacheableBaseObject *)v5 identifier];
    v22 = [(APCacheableBaseObject *)APContentDataTransientWrapper proxyForIdentifier:identifier3];
    contentDataTransientWrapper = v5->_contentDataTransientWrapper;
    v5->_contentDataTransientWrapper = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v24;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (BOOL)_update
{
  selfCopy = self;
  v3 = sub_1003969D8(self);
  createTransaction = [v3 createTransaction];

  sub_100396A10(selfCopy, createTransaction);
  LOBYTE(selfCopy) = [createTransaction commit];

  return selfCopy;
}

- (BOOL)_updateTransientData
{
  contentDataTransient = [(APManagedContentData *)self contentDataTransient];
  if (contentDataTransient)
  {
    v4 = sub_1003969D8(self);
    createTransaction = [v4 createTransaction];

    sub_100396C7C(self, createTransaction);
    contentDataTransientWrapper = [(APManagedContentData *)self contentDataTransientWrapper];
    sub_100396A10(contentDataTransientWrapper, createTransaction);

    commit = [createTransaction commit];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v11 = 138543362;
      v12 = identifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Trying to update non-existing transient data for id %{public}@.", &v11, 0xCu);
    }

    commit = 0;
  }

  return commit;
}

- (BOOL)_updatePrivateData
{
  contentDataPrivate = [(APManagedContentData *)self contentDataPrivate];
  if (contentDataPrivate)
  {
    v4 = sub_1003969D8(self);
    createTransaction = [v4 createTransaction];

    sub_100396C7C(self, createTransaction);
    contentDataPrivateWrapper = [(APManagedContentData *)self contentDataPrivateWrapper];
    sub_100396A10(contentDataPrivateWrapper, createTransaction);

    commit = [createTransaction commit];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v11 = 138543362;
      v12 = identifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Trying to update non-existing private data for id %{public}@.", &v11, 0xCu);
    }

    commit = 0;
  }

  return commit;
}

+ (id)findById:(id)id
{
  idCopy = id;
  if ([idCopy length])
  {
    v4 = sub_10037AA48(APManagedContentData, idCopy);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = idCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found managed content data '%{public}@' in a cache.", &v7, 0xCu);
    }
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to find managed content data. Content data identifier is empty.", &v7, 2u);
    }

    v4 = 0;
  }

LABEL_9:

  return v4;
}

- (APManagedContentData)initWithManagedContext:(id)context contentData:(id)data transaction:(id)transaction
{
  contextCopy = context;
  dataCopy = data;
  transactionCopy = transaction;
  content = [dataCopy content];
  identifier = [content identifier];

  v38.receiver = self;
  v38.super_class = APManagedContentData;
  v13 = [(APCacheableSynchronizedObject *)&v38 initWithIdentifier:identifier];
  if (v13)
  {
    identifier2 = [contextCopy identifier];
    contextIdentifier = v13->_contextIdentifier;
    v13->_contextIdentifier = identifier2;

    v16 = [APContentDataWrapper alloc];
    content2 = [dataCopy content];
    v18 = [(APCacheableObjectWrapper *)v16 initWithObject:content2 identifier:identifier];

    proxy = [(APCacheableBaseObject *)v18 proxy];
    contentDataWrapper = v13->_contentDataWrapper;
    v13->_contentDataWrapper = proxy;

    v21 = [APContentDataPrivateWrapper alloc];
    privateContent = [dataCopy privateContent];
    v23 = [(APCacheableObjectWrapper *)v21 initWithObject:privateContent identifier:identifier];

    proxy2 = [(APCacheableBaseObject *)v23 proxy];
    contentDataPrivateWrapper = v13->_contentDataPrivateWrapper;
    v13->_contentDataPrivateWrapper = proxy2;

    v26 = [APContentDataTransientWrapper alloc];
    transientContent = [dataCopy transientContent];
    v28 = [(APCacheableObjectWrapper *)v26 initWithObject:transientContent identifier:identifier];

    proxy3 = [(APCacheableBaseObject *)v28 proxy];
    contentDataTransientWrapper = v13->_contentDataTransientWrapper;
    v13->_contentDataTransientWrapper = proxy3;

    v13->_state = 1;
    content3 = [dataCopy content];
    v32 = [(APManagedContentData *)v13 allPlacementTypesForContentData:content3];
    placementTypes = v13->_placementTypes;
    v13->_placementTypes = v32;

    content4 = [dataCopy content];
    expirationDate = [content4 expirationDate];
    expirationDate = v13->_expirationDate;
    v13->_expirationDate = expirationDate;

    sub_100396A10(v18, transactionCopy);
    sub_100396A10(v23, transactionCopy);
    sub_100396A10(v28, transactionCopy);
    sub_100396A10(v13, transactionCopy);
  }

  return v13;
}

- (id)allPlacementTypesForContentData:(id)data
{
  dataCopy = data;
  representations = [dataCopy representations];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [representations count]);

  representations2 = [dataCopy representations];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003807DC;
  v10[3] = &unk_100480988;
  v11 = v5;
  v7 = v5;
  [representations2 enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

- (APContentData)contentData
{
  contentDataWrapper = [(APManagedContentData *)self contentDataWrapper];
  object = [contentDataWrapper object];

  if (!object)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Content Data object for '%{public}@'.", &v8, 0xCu);
    }
  }

  return object;
}

- (APContentDataPrivate)contentDataPrivate
{
  contentDataPrivateWrapper = [(APManagedContentData *)self contentDataPrivateWrapper];
  object = [contentDataPrivateWrapper object];

  if (!object)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Content Data Private object for '%{public}@'.", &v8, 0xCu);
    }
  }

  [object setDelegate:self];

  return object;
}

- (APContentDataTransient)contentDataTransient
{
  contentDataTransientWrapper = [(APManagedContentData *)self contentDataTransientWrapper];
  object = [contentDataTransientWrapper object];

  if (!object)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Content Data Transient object for '%{public}@'.", &v8, 0xCu);
    }
  }

  [object setDelegate:self];

  return object;
}

- (void)markInUseByClientWithId:(id)id
{
  idCopy = id;
  [(APCacheableSynchronizedObject *)self lockObject];
  if ([(APManagedContentData *)self state]== 1)
  {
    [(APManagedContentData *)self setState:2];
    [(APManagedContentData *)self setClientId:idCopy];
    [(APCacheableSynchronizedObject *)self unlockObject];
    [(APManagedContentData *)self _update];
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v9 = 138543874;
      v10 = identifier;
      v11 = 2048;
      state = 1;
      v13 = 2048;
      v14 = 2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changed managed contend data '%{public}@' state from %ld to %ld.", &v9, 0x20u);
    }
  }

  else
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [(APCacheableBaseObject *)self identifier];
      v9 = 138543618;
      v10 = identifier2;
      v11 = 2048;
      state = [(APManagedContentData *)self state];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to mark managed contend data %{public}@ as in use. Current state: %ld", &v9, 0x16u);
    }

    [(APCacheableSynchronizedObject *)self unlockObject];
  }
}

- (void)markUsed
{
  [(APCacheableSynchronizedObject *)self lockObject];
  if ([(APManagedContentData *)self state]== 2)
  {
    contentDataWrapper = [(APManagedContentData *)self contentDataWrapper];
    v4 = [APCacheableObjectProxy objectIsLoaded:contentDataWrapper];

    if (v4)
    {
      [(APManagedContentData *)self _unloadHeavyContentFromContentData];
    }

    [(APManagedContentData *)self setState:3];
    [(APManagedContentData *)self setClientId:0];
    [(APCacheableSynchronizedObject *)self unlockObject];
    [(APManagedContentData *)self _update];
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v9 = 138543874;
      v10 = identifier;
      v11 = 2048;
      state = 2;
      v13 = 2048;
      v14 = 3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changed managed contend data '%{public}@' state from %ld to %ld.", &v9, 0x20u);
    }
  }

  else
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [(APCacheableBaseObject *)self identifier];
      v9 = 138543618;
      v10 = identifier2;
      v11 = 2048;
      state = [(APManagedContentData *)self state];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to mark managed contend data %{public}@ as used. Current state: %ld", &v9, 0x16u);
    }

    [(APCacheableSynchronizedObject *)self unlockObject];
  }
}

- (void)close
{
  [(APCacheableSynchronizedObject *)self lockObject];
  if ([(APManagedContentData *)self state]== 2)
  {
    [(APManagedContentData *)self setState:1];
    [(APManagedContentData *)self setClientId:0];
    [(APCacheableSynchronizedObject *)self unlockObject];
    [(APManagedContentData *)self _update];
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v7 = 138543874;
      v8 = identifier;
      v9 = 2048;
      state = 2;
      v11 = 2048;
      v12 = 1;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Changed managed contend data '%{public}@' state from %ld to %ld.", &v7, 0x20u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(APManagedContentData *)self state]== 3)
  {
    [(APManagedContentData *)self setState:4];
    [(APManagedContentData *)self setClientId:0];
    [(APCacheableSynchronizedObject *)self unlockObject];
    [(APManagedContentData *)self _update];
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      identifier = [(APCacheableBaseObject *)self identifier];
      v7 = 138543874;
      v8 = identifier;
      v9 = 2048;
      state = 3;
      v11 = 2048;
      v12 = 4;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    identifier2 = [(APCacheableBaseObject *)self identifier];
    v7 = 138543618;
    v8 = identifier2;
    v9 = 2048;
    state = [(APManagedContentData *)self state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to close managed contend data %{public}@. Current state: %ld", &v7, 0x16u);
  }

  [(APCacheableSynchronizedObject *)self unlockObject];
}

- (int64_t)garbageCollect
{
  identifier = [(APCacheableBaseObject *)self identifier];
  v4 = sub_10037AAE0(APContentDataWrapper, identifier);

  if ((v4 & 1) == 0)
  {
    identifier2 = [(APCacheableBaseObject *)self identifier];
    v6 = sub_10037AAE0(APContentDataPrivateWrapper, identifier2);

    if ((v6 & 1) == 0)
    {
      identifier3 = [(APCacheableBaseObject *)self identifier];
      v8 = sub_10037AAE0(APContentDataTransientWrapper, identifier3);

      if ((v8 & 1) == 0)
      {
        contextIdentifier = [(APManagedContentData *)self contextIdentifier];
        v12 = [APManagedContext findManagedContextByFingerprint:contextIdentifier];

        if (v12)
        {
          identifier4 = [(APCacheableBaseObject *)self identifier];
          v14 = [v12 removeManagedContentDataForId:identifier4];

          if ((v14 & 1) == 0)
          {
            createTransaction = APLogForCategory();
            if (os_log_type_enabled(createTransaction, OS_LOG_TYPE_ERROR))
            {
              identifier5 = [(APCacheableBaseObject *)self identifier];
              contextIdentifier2 = [(APManagedContentData *)self contextIdentifier];
              v27 = 138543618;
              v28 = identifier5;
              v29 = 2114;
              v30 = contextIdentifier2;
              _os_log_impl(&_mh_execute_header, createTransaction, OS_LOG_TYPE_ERROR, "Failed to remove content data '%{public}@' reference from '%{public}@' context.", &v27, 0x16u);
            }

            v9 = 0;
LABEL_19:

            return v9;
          }
        }

        else
        {
          v18 = APLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            contextIdentifier3 = [(APManagedContentData *)self contextIdentifier];
            identifier6 = [(APCacheableBaseObject *)self identifier];
            v27 = 138543618;
            v28 = contextIdentifier3;
            v29 = 2114;
            v30 = identifier6;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to find context '%{public}@' for content data '%{public}@'.", &v27, 0x16u);
          }
        }

        v21 = sub_1003969D8(self);
        createTransaction = [v21 createTransaction];

        sub_100396BF4(self, createTransaction);
        identifier7 = [(APCacheableBaseObject *)self identifier];
        sub_10037AB68(APContentDataWrapper, identifier7, createTransaction);

        identifier8 = [(APCacheableBaseObject *)self identifier];
        sub_10037AB68(APContentDataPrivateWrapper, identifier8, createTransaction);

        identifier9 = [(APCacheableBaseObject *)self identifier];
        sub_10037AB68(APContentDataTransientWrapper, identifier9, createTransaction);

        if (([createTransaction commit]& 1) != 0)
        {
          v9 = [createTransaction count];
        }

        else
        {
          v25 = APLogForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            identifier10 = [(APCacheableBaseObject *)self identifier];
            v27 = 138543362;
            v28 = identifier10;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to remove managed content data '%{public}@'.", &v27, 0xCu);
          }

          v9 = -1;
        }

        goto LABEL_19;
      }
    }
  }

  return 0;
}

- (id)_heavyContentKeyNames
{
  if ([(APManagedContentData *)self state]== 3 || [(APManagedContentData *)self state]== 4)
  {
    return &off_1004948D8;
  }

  else
  {
    return 0;
  }
}

- (void)_unloadHeavyContentFromContentData
{
  contentData = [(APManagedContentData *)self contentData];
  [contentData setDisclosureRendererPayload:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  representations = [contentData representations];
  v4 = [representations countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(representations);
        }

        [*(*(&v10 + 1) + 8 * v7) setAdTag:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [representations countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifier = [contentData identifier];
    *buf = 138543362;
    v15 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Removing heavy content from ContentData %{public}@", buf, 0xCu);
  }
}

- (id)toJSONObject
{
  v3 = objc_autoreleasePoolPush();
  v4 = [APJSONArchiver JSONObjectWithObject:self];
  contentData = [(APManagedContentData *)self contentData];
  v6 = [APJSONArchiver JSONObjectWithObject:contentData];

  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"contentData"];
  }

  else
  {
    v7 = +[NSNull null];
    [v4 setObject:v7 forKeyedSubscript:@"contentData"];
  }

  contentDataPrivate = [(APManagedContentData *)self contentDataPrivate];
  v9 = [APJSONArchiver JSONObjectWithObject:contentDataPrivate];

  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"contentDataPrivate"];
  }

  else
  {
    v10 = +[NSNull null];
    [v4 setObject:v10 forKeyedSubscript:@"contentDataPrivate"];
  }

  contentDataTransient = [(APManagedContentData *)self contentDataTransient];
  v12 = [APJSONArchiver JSONObjectWithObject:contentDataTransient];

  if (v12)
  {
    [v4 setObject:v12 forKeyedSubscript:@"contentDataTransient"];
  }

  else
  {
    v13 = +[NSNull null];
    [v4 setObject:v13 forKeyedSubscript:@"contentDataTransient"];
  }

  objc_autoreleasePoolPop(v3);

  return v4;
}

@end