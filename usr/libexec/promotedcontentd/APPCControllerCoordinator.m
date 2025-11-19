@interface APPCControllerCoordinator
+ (id)_addToCacheContentData:(id)a3 context:(id)a4;
+ (void)_sendFirstRequestMetricIfRequiredForPlacement:(unint64_t)a3;
- (BOOL)isBlockedForNewsSubscriber:(id)a3 bundleID:(id)a4;
- (id)queryCacheForRequests:(id)a3 managedContext:(id)a4;
- (unint64_t)_getAppStorePlacement:(id)a3;
- (void)_handleMissingClientInfoForRequestOfTypes:(id)a3 forContext:(id)a4;
- (void)_requestFromMediaApi:(id)a3 params:(id)a4 completionHandler:(id)a5;
- (void)_requestFromMediaWithParams:(id)a3 completionHandler:(id)a4;
- (void)createContentDatasFromContext:(id)a3 unfilledReasonCode:(int64_t)a4 types:(id)a5 diagnosticCode:(int64_t)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)findQualifiedPlacementFromCachedData:(id)a3 forRequests:(id)a4;
- (void)handleNewPromotedContent:(id)a3 adsReceived:(unint64_t *)a4 adsRequested:(unint64_t)a5 token:(id)a6 context:(id)a7 lastInBatch:(BOOL)a8 deliverEntireBatch:(BOOL)a9 completionHandler:(id)a10;
- (void)requestFromLegacyInterfaceForPromotedContents:(id)a3 context:(id)a4 withToken:(id)a5 andBundleID:(id)a6 clientInfo:(id)a7 idAccount:(id)a8 deliverEntireBatch:(BOOL)a9 completionHandler:(id)a10;
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

+ (id)_addToCacheContentData:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 fingerprint];
  v8 = [APManagedContext findManagedContextByFingerprint:v7];

  if (!v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 content];
      v11 = [v10 identifier];
      v12 = [v6 fingerprint];
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received promoted content %{public}@ for context %{public}@ but managed content does not exist. Creating new managed context.", &v16, 0x16u);
    }

    v13 = +[APIDAccountProvider privateUserAccount];
    v8 = [APManagedContext createManagedContextWithContext:v6 idAccount:v13];
  }

  v14 = [v8 addContentData:v5];

  return v14;
}

- (void)handleNewPromotedContent:(id)a3 adsReceived:(unint64_t *)a4 adsRequested:(unint64_t)a5 token:(id)a6 context:(id)a7 lastInBatch:(BOOL)a8 deliverEntireBatch:(BOOL)a9 completionHandler:(id)a10
{
  v34 = a8;
  v14 = a3;
  v15 = a6;
  v16 = a10;
  v17 = [APPCControllerCoordinator _addToCacheContentData:v14 context:a7];
  v18 = [(APPCControllerCoordinator *)self bundleID];
  [v17 markInUseByClientWithId:v18];

  v19 = APLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Send one promoted content", buf, 2u);
  }

  v20 = [(APPCControllerCoordinator *)self deliveryBlock];
  v21 = [v14 content];
  v44 = v21;
  v22 = [NSArray arrayWithObjects:&v44 count:1];
  (v20)[2](v20, v22);

  v23 = [(APPCControllerCoordinator *)self lock];
  [v23 lock];
  ++*a4;
  v24 = APLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v14 content];
    [v25 identifier];
    v33 = v17;
    v27 = v26 = v16;
    v28 = *a4;
    *buf = 138544130;
    v37 = v27;
    v38 = 2114;
    v39 = v15;
    v40 = 2050;
    v41 = v28;
    v42 = 2050;
    v43 = a5;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received one promoted content %{public}@ for the request %{public}@. Progress %{public}lu/%{public}lu.", buf, 0x2Au);

    v16 = v26;
    v17 = v33;
  }

  if (a9)
  {
    if (!v34)
    {
      goto LABEL_12;
    }
  }

  else if (*a4 != a5)
  {
    goto LABEL_12;
  }

  v29 = APLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [v15 UUIDString];
    v31 = v30 = v16;
    *buf = 138543362;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "All responses for the request %{public}@ have been received.", buf, 0xCu);

    v16 = v30;
  }

  v16[2](v16);
  v32 = [(APPCControllerCoordinator *)self tokens];
  [v32 removeObject:v15];

LABEL_12:
  [v23 unlock];
}

- (void)findQualifiedPlacementFromCachedData:(id)a3 forRequests:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate date];
  v9 = [v6 expirationDate];
  v10 = [v9 isEarlierThan:v8];

  if (v10)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 identifier];
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Promoted content %{public}@ matches a request but is expired.", buf, 0xCu);
    }
  }

  else
  {
    v13 = [v6 placementTypes];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100376CC4;
    v14[3] = &unk_1004805A0;
    v15 = v7;
    v16 = v6;
    v17 = self;
    [v13 enumerateObjectsUsingBlock:v14];

    v11 = v15;
  }
}

- (id)queryCacheForRequests:(id)a3 managedContext:(id)a4
{
  v6 = a4;
  v7 = [NSCountedSet setWithArray:a3];
  [v6 managedContentDataEnumerator];
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

- (void)requestFromLegacyInterfaceForPromotedContents:(id)a3 context:(id)a4 withToken:(id)a5 andBundleID:(id)a6 clientInfo:(id)a7 idAccount:(id)a8 deliverEntireBatch:(BOOL)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v28 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v19;
  v22 = v20;
  v23 = a10;
  if (v19)
  {
    v24 = APLogForCategory();
    v25 = v16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = [v17 identifier];
      *buf = 136643331;
      *&buf[4] = "[APPCControllerCoordinator requestFromLegacyInterfaceForPromotedContents:context:withToken:andBundleID:clientInfo:idAccount:deliverEntireBatch:completionHandler:]";
      *&buf[12] = 2114;
      *&buf[14] = v26;
      *&buf[22] = 2114;
      v39 = v18;
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
    v31 = v28;
    v32 = v17;
    v36 = a9;
    v33 = v23;
    [v27 requestPromotedContentOfTypes:v30 forContext:v32 withToken:v31 andBundleID:v18 clientInfo:v21 idAccount:v22 completionHandler:v29];

    v16 = v25;
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(APPCControllerCoordinator *)self _handleMissingClientInfoForRequestOfTypes:v16 forContext:v17];
    v23[2](v23);
  }
}

- (void)_handleMissingClientInfoForRequestOfTypes:(id)a3 forContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v30 = @"BUG ON INTEGRATOR: This app appears to be integrating with PromotedContentUI, but is making requests for Ads without having already called the [PCUI start] method.";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v27 = @"requestTypes";
  v28 = v6;
  v9 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  CreateDiagnosticReport();

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
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
          v15 = -1;
        }

        else
        {
          v15 = [v14 intValue];
        }

        v16 = [v7 identifier];
        v17 = [APContentData createForServerUnfilledReason:1026 placementType:v15 contextIdentifier:v16];

        v18 = [(APPCControllerCoordinator *)self deliveryBlock];
        v25 = v17;
        v19 = [NSArray arrayWithObjects:&v25 count:1];
        (v18)[2](v18, v19);
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)_requestFromMediaWithParams:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(APPCControllerCoordinator *)self mediaServiceRequestClass])
  {
    v8 = [(APPCControllerCoordinator *)self mediaServiceRequestClass];
  }

  else
  {
    v8 = APMediaServiceRequest;
  }

  v9 = objc_alloc_init(v8);
  [(APPCControllerCoordinator *)self _requestFromMediaApi:v9 params:v7 completionHandler:v6];
}

- (void)_requestFromMediaApi:(id)a3 params:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 placement];
  if (v11 == 7005)
  {
    [(APPCControllerCoordinator *)self setHasRunningLandingPageRequest:1];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1003778B4;
  v25 = sub_1003778C4;
  v26 = objc_alloc_init(APMediaServiceRequester);
  v12 = [(APPCControllerCoordinator *)self deliveryBlock];
  [v22[5] setDeliveryBlock:v12];

  v13 = [(APPCControllerCoordinator *)self bundleID];
  [v22[5] setBundleID:v13];

  objc_initWeak(&location, self);
  v14 = v22[5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003778CC;
  v16[3] = &unk_1004805F0;
  v19[1] = v11;
  objc_copyWeak(v19, &location);
  v15 = v10;
  v17 = v15;
  v18 = &v21;
  [v14 sendRequest:v8 params:v9 completionHandler:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v21, 8);
}

- (unint64_t)_getAppStorePlacement:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ([v3 current], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || (objc_msgSend(v4, "current"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "placement"), v6, (v7 - 7009) <= 0xFFFFFFFFFFFFFFFBLL))
  {
    APSimulateCrash();
    v7 = 0;
  }

  return v7;
}

+ (void)_sendFirstRequestMetricIfRequiredForPlacement:(unint64_t)a3
{
  if ((byte_1004EA1A8 & 1) == 0)
  {
    v4 = a1;
    objc_sync_enter(v4);
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
      v10 = [NSNumber numberWithUnsignedInteger:a3];
      v13[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

      [APAnalytics sendEvent:@"FirstRequestDelay" customPayload:v11];
      byte_1004EA1A8 = 1;
    }

    objc_sync_exit(v4);
  }
}

- (BOOL)isBlockedForNewsSubscriber:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"com.apple.news"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.stocks"))
  {
    v7 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    v8 = [v7 blockAdsForSubscribers];

    if (v8)
    {
      v9 = [v7 blockAdsForSubscribers];
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 1;
    }

    v11 = [v5 supplementalContext];
    v12 = [v11 objectForKey:APSupplementalContextFeedMetadataContentProviderIdKey];

    v13 = [v5 supplementalContext];
    v14 = [v13 objectForKey:APSupplementalContextPlacementKey];

    if (v10)
    {
      LOBYTE(v10) = +[APPCPolicyEngine isSubscriber](APPCPolicyEngine, "isSubscriber") && (([v14 isEqualToString:APSupplementalContextInFeedKey] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", APSupplementalContextNativeInFeedKey)) && objc_msgSend(v12, "intValue") == 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)createContentDatasFromContext:(id)a3 unfilledReasonCode:(int64_t)a4 types:(id)a5 diagnosticCode:(int64_t)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a5;
  v29 = a7;
  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v12;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v14 = *v35;
    v15 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
    v30 = v11;
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
          v18 = -1;
        }

        else
        {
          v18 = [v17 intValue];
        }

        v19 = v15[294];
        v20 = [v11 identifier];
        if (a4 == 1029)
        {
          [v11 maxSize];
          v21 = [v19 createForServerUnfilledReason:1029 placementType:v18 contextIdentifier:v20 size:?];

          v20 = [[APContentDataInternal alloc] initWithContent:v21];
          v22 = [APPCControllerCoordinator _addToCacheContentData:v20 context:v11];
          [(APPCControllerCoordinator *)self bundleID];
          v23 = v15;
          v24 = v14;
          v25 = v13;
          v27 = v26 = a6;
          [v22 markInUseByClientWithId:v27];

          a6 = v26;
          v13 = v25;
          v14 = v24;
          v15 = v23;
          a4 = 1029;
          v11 = v30;
          [v22 markUsed];
        }

        else
        {
          v21 = [v19 createForServerUnfilledReason:a4 placementType:v18 contextIdentifier:v20];
        }

        [v21 setDiagnosticCode:a6];
        [v13 addObject:v21];
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }

  v28 = [(APPCControllerCoordinator *)self deliveryBlock];
  (v28)[2](v28, v13);

  v29[2](v29);
}

@end