@interface APSponsorshipAdTransformer
- (BOOL)copyContentDataId:(id)id toNewContentDataId:(id)dataId;
- (BOOL)createContentDataForContextId:(id)id contentId:(id)contentId withServerUnfilledReason:(int64_t)reason;
- (id)_createContentDataInternalFrom:(id)from newContentDataId:(id)id;
- (id)_createManagedContextWithId:(id)id;
@end

@implementation APSponsorshipAdTransformer

- (BOOL)copyContentDataId:(id)id toNewContentDataId:(id)dataId
{
  dataIdCopy = dataId;
  v7 = [APManagedContentData findById:id];
  v8 = v7;
  if (v7)
  {
    contentData = [v7 contentData];
    contextIdentifier = [contentData contextIdentifier];
    uUIDString = [contextIdentifier UUIDString];

    v12 = [APManagedContext findManagedContextByFingerprint:uUIDString];
    if (!v12)
    {
      v13 = APLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to find context in the cache", v20, 2u);
      }

      v15 = 0;
      goto LABEL_18;
    }

    v13 = [(APSponsorshipAdTransformer *)self _createContentDataInternalFrom:v8 newContentDataId:dataIdCopy];
    if (v13)
    {
      v14 = [v12 addContentData:v13];
      v15 = v14 != 0;
      if (v14)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v16 = APLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to attach new content data to the context", v18, 2u);
      }
    }

    else
    {
      v14 = APLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to copy content data", v19, 2u);
      }
    }

    v15 = 0;
    goto LABEL_17;
  }

  uUIDString = APLogForCategory();
  if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_ERROR, "Failed to find content data in the cache", buf, 2u);
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)_createContentDataInternalFrom:(id)from newContentDataId:(id)id
{
  fromCopy = from;
  idCopy = id;
  [fromCopy lockObject];
  contentDataPrivate = [fromCopy contentDataPrivate];
  impressionIdentifier = [contentDataPrivate impressionIdentifier];
  v9 = [impressionIdentifier length];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    contentData = [fromCopy contentData];
    v12 = objc_opt_class();
    v13 = cloneSecureCodingObject(contentData, v12);

    contentDataPrivate2 = [fromCopy contentDataPrivate];
    v15 = objc_opt_class();
    v16 = cloneSecureCodingObject(contentDataPrivate2, v15);

    contentDataTransient = [fromCopy contentDataTransient];
    v18 = objc_opt_class();
    v19 = cloneSecureCodingObject(contentDataTransient, v18);

    objc_autoreleasePoolPop(v10);
    [fromCopy unlockObject];
    if (v13)
    {
      v41 = v19;
      [v13 setIdentifier:idCopy];
      v20 = +[NSUUID UUID];
      uUIDString = [v20 UUIDString];
      [v13 setUniqueIdentifier:uUIDString];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      representations = [v13 representations];
      v23 = [representations countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(representations);
            }

            v27 = *(*(&v42 + 1) + 8 * i);
            identifier = [v13 identifier];
            [v27 setContentDataIdentifier:identifier];
          }

          v24 = [representations countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v24);
      }

      v29 = [NSString alloc];
      impressionIdentifier2 = [v16 impressionIdentifier];
      v31 = [v29 initWithData:impressionIdentifier2 encoding:4];

      if (v31)
      {
        v32 = +[NSUUID UUID];
        uUIDString2 = [v32 UUIDString];
        v34 = [v31 stringByAppendingFormat:@"_%@", uUIDString2];

        v35 = [v34 dataUsingEncoding:4];
        v36 = [v35 copy];
        [v16 setImpressionIdentifier:v36];

        v37 = v41;
        v38 = [[APContentDataInternal alloc] initWithContent:v13 privateContent:v16 andTransientContent:v41];
      }

      else
      {
        v34 = APLogForCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Can't parse impressionIdentifier.", buf, 2u);
        }

        v38 = 0;
        v37 = v41;
      }
    }

    else
    {
      v39 = APLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to clone content data.", buf, 2u);
      }

      v38 = 0;
      v13 = v16;
    }
  }

  else
  {
    [fromCopy unlockObject];
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "impressionIdentifier is not set.", buf, 2u);
    }

    v38 = 0;
  }

  return v38;
}

- (BOOL)createContentDataForContextId:(id)id contentId:(id)contentId withServerUnfilledReason:(int64_t)reason
{
  idCopy = id;
  contentIdCopy = contentId;
  v10 = [APManagedContext findManagedContextByFingerprint:idCopy];
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [(APSponsorshipAdTransformer *)self _createManagedContextWithId:idCopy];
  if (v11)
  {
    v10 = v11;
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v20 = 138543362;
      v21 = idCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Created new context ctx:[%{public}@] for Legacy Interface Sponsorship Ad metric", &v20, 0xCu);
    }

LABEL_6:
    v13 = [APContentDataInternal alloc];
    v14 = [[NSUUID alloc] initWithUUIDString:idCopy];
    v15 = [(APContentDataInternal *)v13 initWithUnfilledReason:reason error:0 contentIdentifier:contentIdCopy contextIdentifier:v14 containerSize:7 placementType:0 journeyStartRelayValues:0.0, 0.0];

    if (v15)
    {
      v16 = [v10 addContentData:v15];
      v17 = v16 != 0;
      if (v16)
      {
LABEL_14:

        goto LABEL_15;
      }

      v18 = APLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to attach new content data to the context", &v20, 2u);
      }
    }

    else
    {
      v16 = APLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create content data with server unfilled reason.", &v20, 2u);
      }
    }

    v17 = 0;
    goto LABEL_14;
  }

  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v20 = 138543362;
    v21 = idCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create new managed context ctx:[%{public}@] for Legacy Interface metric.", &v20, 0xCu);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (id)_createManagedContextWithId:(id)id
{
  idCopy = id;
  v4 = [APContext alloc];
  v5 = [[NSUUID alloc] initWithUUIDString:idCopy];

  v6 = [v4 initWithIdentifier:v5 maxSize:0 requestedAdIdentifier:0 currentContent:0 adjacentContent:0 supplementalContext:{0.0, 0.0}];
  v7 = +[APIDAccountProvider privateUserAccount];
  v8 = [APManagedContext createManagedContextWithContext:v6 idAccount:v7];

  return v8;
}

@end