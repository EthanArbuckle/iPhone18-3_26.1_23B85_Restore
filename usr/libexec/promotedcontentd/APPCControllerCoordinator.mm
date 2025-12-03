@interface APPCControllerCoordinator
+ (id)_addToCacheContentData:(id)data context:(id)context;
+ (void)_sendFirstRequestMetricIfRequiredForPlacement:(unint64_t)placement;
- (BOOL)isBlockedForNewsSubscriber:(id)subscriber bundleID:(id)d;
- (id)queryCacheForRequests:(id)requests managedContext:(id)context;
- (unint64_t)_getAppStorePlacement:(id)placement;
- (void)_handleMissingClientInfoForRequestOfTypes:(id)types forContext:(id)context;
- (void)_requestFromMediaApi:(id)api params:(id)params completionHandler:(id)handler;
- (void)_requestFromMediaWithParams:(id)params completionHandler:(id)handler;
- (void)createContentDatasFromContext:(id)context unfilledReasonCode:(int64_t)code types:(id)types diagnosticCode:(int64_t)diagnosticCode completionHandler:(id)handler;
- (void)dealloc;
- (void)findQualifiedPlacementFromCachedData:(id)data forRequests:(id)requests;
- (void)handleNewPromotedContent:(id)content adsReceived:(unint64_t *)received adsRequested:(unint64_t)requested token:(id)token context:(id)context lastInBatch:(BOOL)batch deliverEntireBatch:(BOOL)entireBatch completionHandler:(id)self0;
- (void)requestFromLegacyInterfaceForPromotedContents:(id)contents context:(id)context withToken:(id)token andBundleID:(id)d clientInfo:(id)info idAccount:(id)account deliverEntireBatch:(BOOL)batch completionHandler:(id)self0;
@end

@implementation APPCControllerCoordinator

- (void)dealloc
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sub_10039675C(self, v3);
  }

  v4.receiver = self;
  v4.super_class = APPCControllerCoordinator;
  [(APPCControllerCoordinator *)&v4 dealloc];
}

+ (id)_addToCacheContentData:(id)data context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  fingerprint = [contextCopy fingerprint];
  v8 = [APManagedContext findManagedContextByFingerprint:fingerprint];

  if (!v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      content = [dataCopy content];
      identifier = [content identifier];
      fingerprint2 = [contextCopy fingerprint];
      v16 = 138543618;
      v17 = identifier;
      v18 = 2114;
      v19 = fingerprint2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received promoted content %{public}@ for context %{public}@ but managed content does not exist. Creating new managed context.", &v16, 0x16u);
    }

    v13 = +[APIDAccountProvider privateUserAccount];
    v8 = [APManagedContext createManagedContextWithContext:contextCopy idAccount:v13];
  }

  v14 = [v8 addContentData:dataCopy];

  return v14;
}

- (void)handleNewPromotedContent:(id)content adsReceived:(unint64_t *)received adsRequested:(unint64_t)requested token:(id)token context:(id)context lastInBatch:(BOOL)batch deliverEntireBatch:(BOOL)entireBatch completionHandler:(id)self0
{
  batchCopy = batch;
  contentCopy = content;
  tokenCopy = token;
  handlerCopy = handler;
  v17 = [APPCControllerCoordinator _addToCacheContentData:contentCopy context:context];
  bundleID = [(APPCControllerCoordinator *)self bundleID];
  [v17 markInUseByClientWithId:bundleID];

  v19 = APLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Send one promoted content", buf, 2u);
  }

  deliveryBlock = [(APPCControllerCoordinator *)self deliveryBlock];
  content = [contentCopy content];
  v44 = content;
  v22 = [NSArray arrayWithObjects:&v44 count:1];
  (deliveryBlock)[2](deliveryBlock, v22);

  lock = [(APPCControllerCoordinator *)self lock];
  [lock lock];
  ++*received;
  v24 = APLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    content2 = [contentCopy content];
    [content2 identifier];
    v33 = v17;
    v27 = v26 = handlerCopy;
    v28 = *received;
    *buf = 138544130;
    v37 = v27;
    v38 = 2114;
    v39 = tokenCopy;
    v40 = 2050;
    v41 = v28;
    v42 = 2050;
    requestedCopy = requested;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received one promoted content %{public}@ for the request %{public}@. Progress %{public}lu/%{public}lu.", buf, 0x2Au);

    handlerCopy = v26;
    v17 = v33;
  }

  if (entireBatch)
  {
    if (!batchCopy)
    {
      goto LABEL_12;
    }
  }

  else if (*received != requested)
  {
    goto LABEL_12;
  }

  v29 = APLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [tokenCopy UUIDString];
    v31 = v30 = handlerCopy;
    *buf = 138543362;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "All responses for the request %{public}@ have been received.", buf, 0xCu);

    handlerCopy = v30;
  }

  handlerCopy[2](handlerCopy);
  tokens = [(APPCControllerCoordinator *)self tokens];
  [tokens removeObject:tokenCopy];

LABEL_12:
  [lock unlock];
}

- (void)findQualifiedPlacementFromCachedData:(id)data forRequests:(id)requests
{
  dataCopy = data;
  requestsCopy = requests;
  v8 = +[NSDate date];
  expirationDate = [dataCopy expirationDate];
  v10 = [expirationDate isEarlierThan:v8];

  if (v10)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [dataCopy identifier];
      *buf = 138543362;
      v19 = identifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Promoted content %{public}@ matches a request but is expired.", buf, 0xCu);
    }
  }

  else
  {
    placementTypes = [dataCopy placementTypes];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100376CC4;
    v14[3] = &unk_1004805A0;
    v15 = requestsCopy;
    v16 = dataCopy;
    selfCopy = self;
    [placementTypes enumerateObjectsUsingBlock:v14];

    v11 = v15;
  }
}

- (id)queryCacheForRequests:(id)requests managedContext:(id)context
{
  contextCopy = context;
  v7 = [NSCountedSet setWithArray:requests];
  [contextCopy managedContentDataEnumerator];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      [(APPCControllerCoordinator *)self findQualifiedPlacementFromCachedData:*(*(&v16 + 1) + 8 * v12) forRequests:v7, v16];
      if (![v7 count])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [NSMutableArray arrayWithCountedSet:v7];
  v14 = [NSArray arrayWithArray:v13];

  return v14;
}

- (void)requestFromLegacyInterfaceForPromotedContents:(id)contents context:(id)context withToken:(id)token andBundleID:(id)d clientInfo:(id)info idAccount:(id)account deliverEntireBatch:(BOOL)batch completionHandler:(id)self0
{
  contentsCopy = contents;
  contextCopy = context;
  tokenCopy = token;
  dCopy = d;
  infoCopy = info;
  accountCopy = account;
  v21 = infoCopy;
  v22 = accountCopy;
  handlerCopy = handler;
  if (infoCopy)
  {
    v24 = APLogForCategory();
    v25 = contentsCopy;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      identifier = [contextCopy identifier];
      *buf = 136643331;
      *&buf[4] = "[APPCControllerCoordinator requestFromLegacyInterfaceForPromotedContents:context:withToken:andBundleID:clientInfo:idAccount:deliverEntireBatch:completionHandler:]";
      *&buf[12] = 2114;
      *&buf[14] = identifier;
      *&buf[22] = 2114;
      v39 = dCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{sensitive}s: bundleID for context %{public}@ is %{public}@.", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v39 = 0;
    v27 = +[APPromotedContentLegacyInterface sharedInstance];
    objc_initWeak(&location, self);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003772A0;
    v29[3] = &unk_1004805C8;
    objc_copyWeak(&v35, &location);
    v34 = buf;
    v30 = v25;
    v31 = tokenCopy;
    v32 = contextCopy;
    batchCopy = batch;
    v33 = handlerCopy;
    [v27 requestPromotedContentOfTypes:v30 forContext:v32 withToken:v31 andBundleID:dCopy clientInfo:v21 idAccount:v22 completionHandler:v29];

    contentsCopy = v25;
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(APPCControllerCoordinator *)self _handleMissingClientInfoForRequestOfTypes:contentsCopy forContext:contextCopy];
    handlerCopy[2](handlerCopy);
  }
}

- (void)_handleMissingClientInfoForRequestOfTypes:(id)types forContext:(id)context
{
  typesCopy = types;
  contextCopy = context;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v30 = @"BUG ON INTEGRATOR: This app appears to be integrating with PromotedContentUI, but is making requests for Ads without having already called the [PCUI start] method.";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v27 = @"requestTypes";
  v28 = typesCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  CreateDiagnosticReport();

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = typesCopy;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (([v14 intValue] & 0x80000000) != 0 || objc_msgSend(v14, "intValue") > 9)
        {
          intValue = -1;
        }

        else
        {
          intValue = [v14 intValue];
        }

        identifier = [contextCopy identifier];
        v17 = [APContentData createForServerUnfilledReason:1026 placementType:intValue contextIdentifier:identifier];

        deliveryBlock = [(APPCControllerCoordinator *)self deliveryBlock];
        v25 = v17;
        v19 = [NSArray arrayWithObjects:&v25 count:1];
        (deliveryBlock)[2](deliveryBlock, v19);
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)_requestFromMediaWithParams:(id)params completionHandler:(id)handler
{
  handlerCopy = handler;
  paramsCopy = params;
  if ([(APPCControllerCoordinator *)self mediaServiceRequestClass])
  {
    mediaServiceRequestClass = [(APPCControllerCoordinator *)self mediaServiceRequestClass];
  }

  else
  {
    mediaServiceRequestClass = APMediaServiceRequest;
  }

  v9 = objc_alloc_init(mediaServiceRequestClass);
  [(APPCControllerCoordinator *)self _requestFromMediaApi:v9 params:paramsCopy completionHandler:handlerCopy];
}

- (void)_requestFromMediaApi:(id)api params:(id)params completionHandler:(id)handler
{
  apiCopy = api;
  paramsCopy = params;
  handlerCopy = handler;
  placement = [paramsCopy placement];
  if (placement == 7005)
  {
    [(APPCControllerCoordinator *)self setHasRunningLandingPageRequest:1];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1003778B4;
  v25 = sub_1003778C4;
  v26 = objc_alloc_init(APMediaServiceRequester);
  deliveryBlock = [(APPCControllerCoordinator *)self deliveryBlock];
  [v22[5] setDeliveryBlock:deliveryBlock];

  bundleID = [(APPCControllerCoordinator *)self bundleID];
  [v22[5] setBundleID:bundleID];

  objc_initWeak(&location, self);
  v14 = v22[5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003778CC;
  v16[3] = &unk_1004805F0;
  v19[1] = placement;
  objc_copyWeak(v19, &location);
  v15 = handlerCopy;
  v17 = v15;
  v18 = &v21;
  [v14 sendRequest:apiCopy params:paramsCopy completionHandler:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v21, 8);
}

- (unint64_t)_getAppStorePlacement:(id)placement
{
  placementCopy = placement;
  v4 = placementCopy;
  if (!placementCopy || ([placementCopy current], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || (objc_msgSend(v4, "current"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "placement"), v6, (v7 - 7009) <= 0xFFFFFFFFFFFFFFFBLL))
  {
    APSimulateCrash();
    v7 = 0;
  }

  return v7;
}

+ (void)_sendFirstRequestMetricIfRequiredForPlacement:(unint64_t)placement
{
  if ((byte_1004EA1A8 & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ((byte_1004EA1A8 & 1) == 0)
    {
      v5 = +[NSDate now];
      v6 = +[APPromotedContentControllerDaemonModule daemonStartTime];
      [v5 timeIntervalSinceDate:v6];
      v8 = v7;

      v12[0] = @"Interval";
      v9 = [NSNumber numberWithDouble:v8];
      v12[1] = @"Placement";
      v13[0] = v9;
      v10 = [NSNumber numberWithUnsignedInteger:placement];
      v13[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

      [APAnalytics sendEvent:@"FirstRequestDelay" customPayload:v11];
      byte_1004EA1A8 = 1;
    }

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)isBlockedForNewsSubscriber:(id)subscriber bundleID:(id)d
{
  subscriberCopy = subscriber;
  dCopy = d;
  if (([dCopy isEqualToString:@"com.apple.news"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"com.apple.stocks"))
  {
    v7 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    blockAdsForSubscribers = [v7 blockAdsForSubscribers];

    if (blockAdsForSubscribers)
    {
      blockAdsForSubscribers2 = [v7 blockAdsForSubscribers];
      bOOLValue = [blockAdsForSubscribers2 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    supplementalContext = [subscriberCopy supplementalContext];
    v12 = [supplementalContext objectForKey:APSupplementalContextFeedMetadataContentProviderIdKey];

    supplementalContext2 = [subscriberCopy supplementalContext];
    v14 = [supplementalContext2 objectForKey:APSupplementalContextPlacementKey];

    if (bOOLValue)
    {
      LOBYTE(bOOLValue) = +[APPCPolicyEngine isSubscriber](APPCPolicyEngine, "isSubscriber") && (([v14 isEqualToString:APSupplementalContextInFeedKey] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", APSupplementalContextNativeInFeedKey)) && objc_msgSend(v12, "intValue") == 1;
    }
  }

  else
  {
    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (void)createContentDatasFromContext:(id)context unfilledReasonCode:(int64_t)code types:(id)types diagnosticCode:(int64_t)diagnosticCode completionHandler:(id)handler
{
  contextCopy = context;
  typesCopy = types;
  handlerCopy = handler;
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [typesCopy count]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = typesCopy;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v14 = *v35;
    v15 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
    v30 = contextCopy;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        if (([v17 intValue] & 0x80000000) != 0 || objc_msgSend(v17, "intValue") > 9)
        {
          intValue = -1;
        }

        else
        {
          intValue = [v17 intValue];
        }

        v19 = v15[294];
        identifier = [contextCopy identifier];
        if (code == 1029)
        {
          [contextCopy maxSize];
          v21 = [v19 createForServerUnfilledReason:1029 placementType:intValue contextIdentifier:identifier size:?];

          identifier = [[APContentDataInternal alloc] initWithContent:v21];
          v22 = [APPCControllerCoordinator _addToCacheContentData:identifier context:contextCopy];
          [(APPCControllerCoordinator *)self bundleID];
          v23 = v15;
          v24 = v14;
          v25 = v13;
          v27 = v26 = diagnosticCode;
          [v22 markInUseByClientWithId:v27];

          diagnosticCode = v26;
          v13 = v25;
          v14 = v24;
          v15 = v23;
          code = 1029;
          contextCopy = v30;
          [v22 markUsed];
        }

        else
        {
          v21 = [v19 createForServerUnfilledReason:code placementType:intValue contextIdentifier:identifier];
        }

        [v21 setDiagnosticCode:diagnosticCode];
        [v13 addObject:v21];
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }

  deliveryBlock = [(APPCControllerCoordinator *)self deliveryBlock];
  (deliveryBlock)[2](deliveryBlock, v13);

  handlerCopy[2](handlerCopy);
}

@end