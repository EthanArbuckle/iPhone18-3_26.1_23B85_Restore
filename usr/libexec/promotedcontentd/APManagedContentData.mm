@interface APManagedContentData
+ (id)findById:(id)a3;
- (APContentData)contentData;
- (APContentDataPrivate)contentDataPrivate;
- (APContentDataTransient)contentDataTransient;
- (APManagedContentData)initWithCoder:(id)a3;
- (APManagedContentData)initWithManagedContext:(id)a3 contentData:(id)a4 transaction:(id)a5;
- (BOOL)_update;
- (BOOL)_updatePrivateData;
- (BOOL)_updateTransientData;
- (id)_heavyContentKeyNames;
- (id)allPlacementTypesForContentData:(id)a3;
- (id)toJSONObject;
- (int64_t)garbageCollect;
- (void)_unloadHeavyContentFromContentData;
- (void)close;
- (void)encodeWithCoder:(id)a3;
- (void)markInUseByClientWithId:(id)a3;
- (void)markUsed;
@end

@implementation APManagedContentData

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = APManagedContentData;
  v4 = a3;
  [(APCacheableBaseObject *)&v9 encodeWithCoder:v4];
  v5 = [(APManagedContentData *)self contextIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"contextId"];

  v6 = [(APManagedContentData *)self placementTypes];
  [v4 encodeObject:v6 forKey:@"placementTypes"];

  v7 = [(APManagedContentData *)self clientId];
  [v4 encodeObject:v7 forKey:@"clientId"];

  [v4 encodeInteger:-[APManagedContentData state](self forKey:{"state"), @"state"}];
  v8 = [(APManagedContentData *)self expirationDate];
  [v4 encodeObject:v8 forKey:@"lastModified"];
}

- (APManagedContentData)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = APManagedContentData;
  v5 = [(APCacheableSynchronizedObject *)&v30 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    objc_initWeak(&location, v5);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextId"];
    contextIdentifier = v5->_contextIdentifier;
    v5->_contextIdentifier = v7;

    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"placementTypes"];
    placementTypes = v5->_placementTypes;
    v5->_placementTypes = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientId"];
    clientId = v5->_clientId;
    v5->_clientId = v13;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v15 = [(APCacheableBaseObject *)v5 identifier];
    v16 = [(APCacheableBaseObject *)APContentDataWrapper proxyForIdentifier:v15];
    contentDataWrapper = v5->_contentDataWrapper;
    v5->_contentDataWrapper = v16;

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10037FFC4;
    v27[3] = &unk_100480960;
    objc_copyWeak(&v28, &location);
    [(APContentDataWrapper *)v5->_contentDataWrapper setProvideIgnorableKeyNamesBlock:v27];
    v18 = [(APCacheableBaseObject *)v5 identifier];
    v19 = [(APCacheableBaseObject *)APContentDataPrivateWrapper proxyForIdentifier:v18];
    contentDataPrivateWrapper = v5->_contentDataPrivateWrapper;
    v5->_contentDataPrivateWrapper = v19;

    v21 = [(APCacheableBaseObject *)v5 identifier];
    v22 = [(APCacheableBaseObject *)APContentDataTransientWrapper proxyForIdentifier:v21];
    contentDataTransientWrapper = v5->_contentDataTransientWrapper;
    v5->_contentDataTransientWrapper = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];
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
  v2 = self;
  v3 = sub_1003969D8(self);
  v4 = [v3 createTransaction];

  sub_100396A10(v2, v4);
  LOBYTE(v2) = [v4 commit];

  return v2;
}

- (BOOL)_updateTransientData
{
  v3 = [(APManagedContentData *)self contentDataTransient];
  if (v3)
  {
    v4 = sub_1003969D8(self);
    v5 = [v4 createTransaction];

    sub_100396C7C(self, v5);
    v6 = [(APManagedContentData *)self contentDataTransientWrapper];
    sub_100396A10(v6, v5);

    v7 = [v5 commit];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(APCacheableBaseObject *)self identifier];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Trying to update non-existing transient data for id %{public}@.", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_updatePrivateData
{
  v3 = [(APManagedContentData *)self contentDataPrivate];
  if (v3)
  {
    v4 = sub_1003969D8(self);
    v5 = [v4 createTransaction];

    sub_100396C7C(self, v5);
    v6 = [(APManagedContentData *)self contentDataPrivateWrapper];
    sub_100396A10(v6, v5);

    v7 = [v5 commit];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(APCacheableBaseObject *)self identifier];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Trying to update non-existing private data for id %{public}@.", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)findById:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = sub_10037AA48(APManagedContentData, v3);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
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

- (APManagedContentData)initWithManagedContext:(id)a3 contentData:(id)a4 transaction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 content];
  v12 = [v11 identifier];

  v38.receiver = self;
  v38.super_class = APManagedContentData;
  v13 = [(APCacheableSynchronizedObject *)&v38 initWithIdentifier:v12];
  if (v13)
  {
    v14 = [v8 identifier];
    contextIdentifier = v13->_contextIdentifier;
    v13->_contextIdentifier = v14;

    v16 = [APContentDataWrapper alloc];
    v17 = [v9 content];
    v18 = [(APCacheableObjectWrapper *)v16 initWithObject:v17 identifier:v12];

    v19 = [(APCacheableBaseObject *)v18 proxy];
    contentDataWrapper = v13->_contentDataWrapper;
    v13->_contentDataWrapper = v19;

    v21 = [APContentDataPrivateWrapper alloc];
    v22 = [v9 privateContent];
    v23 = [(APCacheableObjectWrapper *)v21 initWithObject:v22 identifier:v12];

    v24 = [(APCacheableBaseObject *)v23 proxy];
    contentDataPrivateWrapper = v13->_contentDataPrivateWrapper;
    v13->_contentDataPrivateWrapper = v24;

    v26 = [APContentDataTransientWrapper alloc];
    v27 = [v9 transientContent];
    v28 = [(APCacheableObjectWrapper *)v26 initWithObject:v27 identifier:v12];

    v29 = [(APCacheableBaseObject *)v28 proxy];
    contentDataTransientWrapper = v13->_contentDataTransientWrapper;
    v13->_contentDataTransientWrapper = v29;

    v13->_state = 1;
    v31 = [v9 content];
    v32 = [(APManagedContentData *)v13 allPlacementTypesForContentData:v31];
    placementTypes = v13->_placementTypes;
    v13->_placementTypes = v32;

    v34 = [v9 content];
    v35 = [v34 expirationDate];
    expirationDate = v13->_expirationDate;
    v13->_expirationDate = v35;

    sub_100396A10(v18, v10);
    sub_100396A10(v23, v10);
    sub_100396A10(v28, v10);
    sub_100396A10(v13, v10);
  }

  return v13;
}

- (id)allPlacementTypesForContentData:(id)a3
{
  v3 = a3;
  v4 = [v3 representations];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v6 = [v3 representations];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003807DC;
  v10[3] = &unk_100480988;
  v11 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

- (APContentData)contentData
{
  v3 = [(APManagedContentData *)self contentDataWrapper];
  v4 = [v3 object];

  if (!v4)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Content Data object for '%{public}@'.", &v8, 0xCu);
    }
  }

  return v4;
}

- (APContentDataPrivate)contentDataPrivate
{
  v3 = [(APManagedContentData *)self contentDataPrivateWrapper];
  v4 = [v3 object];

  if (!v4)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Content Data Private object for '%{public}@'.", &v8, 0xCu);
    }
  }

  [v4 setDelegate:self];

  return v4;
}

- (APContentDataTransient)contentDataTransient
{
  v3 = [(APManagedContentData *)self contentDataTransientWrapper];
  v4 = [v3 object];

  if (!v4)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(APCacheableBaseObject *)self identifier];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to load associated Content Data Transient object for '%{public}@'.", &v8, 0xCu);
    }
  }

  [v4 setDelegate:self];

  return v4;
}

- (void)markInUseByClientWithId:(id)a3
{
  v4 = a3;
  [(APCacheableSynchronizedObject *)self lockObject];
  if ([(APManagedContentData *)self state]== 1)
  {
    [(APManagedContentData *)self setState:2];
    [(APManagedContentData *)self setClientId:v4];
    [(APCacheableSynchronizedObject *)self unlockObject];
    [(APManagedContentData *)self _update];
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(APCacheableBaseObject *)self identifier];
      v9 = 138543874;
      v10 = v6;
      v11 = 2048;
      v12 = 1;
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
      v8 = [(APCacheableBaseObject *)self identifier];
      v9 = 138543618;
      v10 = v8;
      v11 = 2048;
      v12 = [(APManagedContentData *)self state];
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
    v3 = [(APManagedContentData *)self contentDataWrapper];
    v4 = [APCacheableObjectProxy objectIsLoaded:v3];

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
      v6 = [(APCacheableBaseObject *)self identifier];
      v9 = 138543874;
      v10 = v6;
      v11 = 2048;
      v12 = 2;
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
      v8 = [(APCacheableBaseObject *)self identifier];
      v9 = 138543618;
      v10 = v8;
      v11 = 2048;
      v12 = [(APManagedContentData *)self state];
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
      v4 = [(APCacheableBaseObject *)self identifier];
      v7 = 138543874;
      v8 = v4;
      v9 = 2048;
      v10 = 2;
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
      v4 = [(APCacheableBaseObject *)self identifier];
      v7 = 138543874;
      v8 = v4;
      v9 = 2048;
      v10 = 3;
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
    v6 = [(APCacheableBaseObject *)self identifier];
    v7 = 138543618;
    v8 = v6;
    v9 = 2048;
    v10 = [(APManagedContentData *)self state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to close managed contend data %{public}@. Current state: %ld", &v7, 0x16u);
  }

  [(APCacheableSynchronizedObject *)self unlockObject];
}

- (int64_t)garbageCollect
{
  v3 = [(APCacheableBaseObject *)self identifier];
  v4 = sub_10037AAE0(APContentDataWrapper, v3);

  if ((v4 & 1) == 0)
  {
    v5 = [(APCacheableBaseObject *)self identifier];
    v6 = sub_10037AAE0(APContentDataPrivateWrapper, v5);

    if ((v6 & 1) == 0)
    {
      v7 = [(APCacheableBaseObject *)self identifier];
      v8 = sub_10037AAE0(APContentDataTransientWrapper, v7);

      if ((v8 & 1) == 0)
      {
        v11 = [(APManagedContentData *)self contextIdentifier];
        v12 = [APManagedContext findManagedContextByFingerprint:v11];

        if (v12)
        {
          v13 = [(APCacheableBaseObject *)self identifier];
          v14 = [v12 removeManagedContentDataForId:v13];

          if ((v14 & 1) == 0)
          {
            v15 = APLogForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [(APCacheableBaseObject *)self identifier];
              v17 = [(APManagedContentData *)self contextIdentifier];
              v27 = 138543618;
              v28 = v16;
              v29 = 2114;
              v30 = v17;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to remove content data '%{public}@' reference from '%{public}@' context.", &v27, 0x16u);
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
            v19 = [(APManagedContentData *)self contextIdentifier];
            v20 = [(APCacheableBaseObject *)self identifier];
            v27 = 138543618;
            v28 = v19;
            v29 = 2114;
            v30 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to find context '%{public}@' for content data '%{public}@'.", &v27, 0x16u);
          }
        }

        v21 = sub_1003969D8(self);
        v15 = [v21 createTransaction];

        sub_100396BF4(self, v15);
        v22 = [(APCacheableBaseObject *)self identifier];
        sub_10037AB68(APContentDataWrapper, v22, v15);

        v23 = [(APCacheableBaseObject *)self identifier];
        sub_10037AB68(APContentDataPrivateWrapper, v23, v15);

        v24 = [(APCacheableBaseObject *)self identifier];
        sub_10037AB68(APContentDataTransientWrapper, v24, v15);

        if (([v15 commit]& 1) != 0)
        {
          v9 = [v15 count];
        }

        else
        {
          v25 = APLogForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = [(APCacheableBaseObject *)self identifier];
            v27 = 138543362;
            v28 = v26;
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
  v2 = [(APManagedContentData *)self contentData];
  [v2 setDisclosureRendererPayload:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 representations];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7) setAdTag:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v2 identifier];
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Removing heavy content from ContentData %{public}@", buf, 0xCu);
  }
}

- (id)toJSONObject
{
  v3 = objc_autoreleasePoolPush();
  v4 = [APJSONArchiver JSONObjectWithObject:self];
  v5 = [(APManagedContentData *)self contentData];
  v6 = [APJSONArchiver JSONObjectWithObject:v5];

  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"contentData"];
  }

  else
  {
    v7 = +[NSNull null];
    [v4 setObject:v7 forKeyedSubscript:@"contentData"];
  }

  v8 = [(APManagedContentData *)self contentDataPrivate];
  v9 = [APJSONArchiver JSONObjectWithObject:v8];

  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"contentDataPrivate"];
  }

  else
  {
    v10 = +[NSNull null];
    [v4 setObject:v10 forKeyedSubscript:@"contentDataPrivate"];
  }

  v11 = [(APManagedContentData *)self contentDataTransient];
  v12 = [APJSONArchiver JSONObjectWithObject:v11];

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