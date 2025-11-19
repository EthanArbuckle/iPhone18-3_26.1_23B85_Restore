@interface APPCControllerMetricCoordinator
+ (void)startWithLegacyInterface:(id)a3;
+ (void)stop;
- (APPCControllerMetricCoordinator)initWithTokens:(id)a3 legacyInterface:(id)a4;
- (BOOL)_processContentIdOverrideIfNecessaryForMetric:(id)a3;
- (id)_loadOverrideContextForMetric:(id)a3;
- (id)_provideEnvironmentForMetric:(id)a3;
- (void)_setRateLimit:(id)a3;
- (void)handleMetricForTesting:(id)a3;
- (void)internalMetricReceived:(id)a3;
- (void)internalSignalReceived:(id)a3;
- (void)metricReceived:(id)a3;
- (void)processInternalMetric:(id)a3;
- (void)processMetric:(id)a3;
@end

@implementation APPCControllerMetricCoordinator

+ (void)startWithLegacyInterface:(id)a3
{
  v3 = a3;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting APPCMetricCoordinator interface handler", buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100381DE0;
  v18[3] = &unk_1004809E0;
  v5 = objc_alloc_init(NSMutableArray);
  v19 = v5;
  v6 = objc_retainBlock(v18);
  (v6[2])(v6, 100, &stru_100480A00);
  (v6[2])(v6, -1, &stru_100480A20);
  (v6[2])(v6, 101, &stru_100480A40);
  (v6[2])(v6, -104, &stru_100480A60);
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v7 = [NSUserDefaults alloc];
    v8 = [v7 initWithSuiteName:APDefaultsBundleID];
    v9 = [v8 objectForKey:@"APMetricListener.enableConnection"];
    if (v9)
    {
      (v6[2])(v6, 100, &stru_100480AA0);
      (v6[2])(v6, 1234, &stru_100480AC0);
      v10 = dispatch_queue_create("com.apple.ap.promotedcontent.metrics.clientConnection", 0);
      v11 = qword_1004EA208;
      qword_1004EA208 = v10;
    }
  }

  v12 = [APPCControllerMetricCoordinator alloc];
  v13 = [NSArray arrayWithArray:v5];
  v14 = [(APPCControllerMetricCoordinator *)v12 initWithTokens:v13 legacyInterface:v3];

  v15 = qword_1004EA1F8;
  qword_1004EA1F8 = v14;

  v16 = dispatch_queue_create("com.apple.ap.promotedcontent.legacyinterface.metrics", 0);
  v17 = qword_1004EA200;
  qword_1004EA200 = v16;
}

+ (void)stop
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [qword_1004EA1F8 registrationTokens];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = +[MetricsModule storage];
        v9 = [v8 notificationRegistrar];
        [v9 removeHandlerWithIdentifier:{objc_msgSend(v7, "integerValue")}];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = qword_1004EA1F8;
  qword_1004EA1F8 = 0;

  v11 = qword_1004EA200;
  qword_1004EA200 = 0;
}

- (APPCControllerMetricCoordinator)initWithTokens:(id)a3 legacyInterface:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = APPCControllerMetricCoordinator;
  v9 = [(APPCControllerMetricCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_registrationTokens, a3);
    objc_storeStrong(&v10->_legacyMetrics, a4);
  }

  return v10;
}

- (void)internalMetricReceived:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = qword_1004EA200;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003821BC;
  block[3] = &unk_10047E550;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (void)metricReceived:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = qword_1004EA200;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100382294;
  block[3] = &unk_10047E550;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (void)internalSignalReceived:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = qword_1004EA200;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038236C;
  block[3] = &unk_10047E550;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (void)handleMetricForTesting:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(APPCControllerMetricCoordinator *)self host];

  if (!v6)
  {
    v7 = [NSUserDefaults alloc];
    v8 = [v7 initWithSuiteName:APDefaultsBundleID];
    v9 = [v8 objectForKey:@"APMetricListener.enableConnection"];
    [(APPCControllerMetricCoordinator *)self setHost:v9];
  }

  v10 = [(APPCControllerMetricCoordinator *)self host];
  v11 = [v10 componentsSeparatedByString:@":"];

  if ([v11 count] > 1)
  {
    v13 = qword_1004EA208;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100382544;
    v14[3] = &unk_100480AE8;
    v14[4] = self;
    v15 = v11;
    v16 = v4;
    v17 = v5;
    dispatch_async(v13, v14);
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error extracting host and port. The format should be host:port", buf, 2u);
    }
  }
}

- (void)processInternalMetric:(id)a3
{
  v4 = a3;
  if ([v4 metric] == 77000)
  {
    [(APPCControllerMetricCoordinator *)self _setRateLimit:v4];
  }

  v5 = [(APPCControllerMetricCoordinator *)self legacyMetrics];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100382840;
  v7[3] = &unk_100480B10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 processMetric:v6 environmentProvider:v7];
}

- (id)_provideEnvironmentForMetric:(id)a3
{
  v4 = a3;
  v5 = [v4 internalProperties];
  v6 = [v5 objectForKeyedSubscript:kAPMetricClientInfoKey];

  if (v6)
  {
    v7 = v6;
  }

  v8 = [v4 contextIdentifier];

  if (v8 && ([v4 contextIdentifier], v9 = objc_claimAutoreleasedReturnValue(), +[APManagedContext findManagedContextByFingerprint:](APManagedContext, "findManagedContextByFingerprint:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 contextIdentifier];
      v13 = [v4 contentIdentifier];
      v40 = 138543618;
      v41 = v12;
      v42 = 2114;
      v43 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully retrieved cached context data %{public}@ for content identifier %{public}@.", &v40, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 contextIdentifier];
      v16 = [v4 contentIdentifier];
      v40 = 138543618;
      v41 = v15;
      v42 = 2114;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to find context with identifier %{public}@ for content %{public}@. Metric may not contain all required fields.", &v40, 0x16u);
    }

    v10 = 0;
    v14 = 1;
  }

  v17 = [v10 idAccount];
  if (!v17)
  {
    v17 = +[APIDAccountProvider privateUserAccount];
  }

  v18 = [v4 contentIdentifier];
  v19 = [APManagedContentData findById:v18];

  if (!v19)
  {
    v20 = [v4 handle];
    v19 = [APManagedContentData findById:v20];

    if (!v19)
    {
      if (!-[APPCControllerMetricCoordinator _processContentIdOverrideIfNecessaryForMetric:](self, "_processContentIdOverrideIfNecessaryForMetric:", v4) || ([v4 contentIdentifier], v31 = objc_claimAutoreleasedReturnValue(), +[APManagedContentData findById:](APManagedContentData, "findById:", v31), v19 = objc_claimAutoreleasedReturnValue(), v31, !v19))
      {
        v32 = APLogForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v4 contentIdentifier];
          v40 = 138543362;
          v41 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No managed content found for content identifier %{public}@. Assuming there was no response from server for ad request with that identifier.", &v40, 0xCu);
        }

        if (v14)
        {
          v26 = APLogForCategory();
          if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_ERROR))
          {
            v34 = [v4 contextIdentifier];
            v35 = [v4 contentIdentifier];
            v40 = 138543618;
            v41 = v34;
            v42 = 2114;
            v43 = v35;
            _os_log_impl(&_mh_execute_header, &v26->super, OS_LOG_TYPE_ERROR, "Unable to find managed context %{public}@ for content %{public}@. Cannot continue, metric ignored.", &v40, 0x16u);
          }

          v27 = 0;
          goto LABEL_28;
        }

        v22 = objc_alloc_init(APContentData);
        v36 = [v4 contentIdentifier];
        [v22 setIdentifier:v36];

        v37 = [NSUUID alloc];
        v38 = [v4 contextIdentifier];
        v39 = [v37 initWithUUIDString:v38];
        [v22 setContextIdentifier:v39];

        [v22 setServerUnfilledReason:1010];
        v21 = [[APContentDataInternal alloc] initWithContent:v22];
        v19 = [v10 addContentData:v21];
        goto LABEL_17;
      }
    }
  }

  v21 = APLogForCategory();
  if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v4 contentIdentifier];
    v40 = 138543362;
    v41 = v22;
    _os_log_impl(&_mh_execute_header, &v21->super, OS_LOG_TYPE_DEFAULT, "Successfully retrieved cached content data for identifier %{public}@.", &v40, 0xCu);
LABEL_17:
  }

  v23 = [(APPCControllerMetricCoordinator *)self _loadOverrideContextForMetric:v4];
  if (v23)
  {
    v24 = APLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v4 contentIdentifier];
      v40 = 138543362;
      v41 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Successfully loaded override context for metric %{public}@", &v40, 0xCu);
    }
  }

  v26 = [[APContentDataInternal alloc] initWithContentDataProvider:v19];
  v27 = objc_alloc_init(APMetricEnvironment);
  [(APMetricEnvironment *)v27 setInternalContent:v26];
  if (v23)
  {
    [(APMetricEnvironment *)v27 setContext:v23];
  }

  else
  {
    v28 = [v10 context];
    [(APMetricEnvironment *)v27 setContext:v28];
  }

  [(APMetricEnvironment *)v27 setClientInfo:v6];
  [(APMetricEnvironment *)v27 setIdAccount:v17];
  v29 = [(APMetricEnvironment *)v27 idAccount];

  if (!v29)
  {
    CreateDiagnosticReport();
  }

LABEL_28:

  return v27;
}

- (void)processMetric:(id)a3
{
  v4 = a3;
  v5 = [(APPCControllerMetricCoordinator *)self legacyMetrics];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100382F54;
  v7[3] = &unk_100480B10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 processMetric:v6 environmentProvider:v7];
}

- (BOOL)_processContentIdOverrideIfNecessaryForMetric:(id)a3
{
  v3 = a3;
  v4 = [v3 internalProperties];
  v5 = [v4 objectForKeyedSubscript:kAPOriginalContentIdentifier];

  v6 = [v3 internalProperties];
  v7 = [v6 objectForKeyedSubscript:kAPServerUnfilledReason];

  if ([v5 length])
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543362;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Processing a special case for originalContentId: %{public}@.", &v19, 0xCu);
    }

    v9 = objc_alloc_init(APSponsorshipAdTransformer);
    v10 = [v3 contentIdentifier];
    LOBYTE(v11) = [(APSponsorshipAdTransformer *)v9 copyContentDataId:v5 toNewContentDataId:v10];

    if (v11)
    {
      goto LABEL_9;
    }

    v12 = APLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

LABEL_9:
      goto LABEL_10;
    }

    LOWORD(v19) = 0;
    v13 = "Content override was requested but the copy operation has failed.";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, &v19, 2u);
    goto LABEL_8;
  }

  if (!v7)
  {
    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  v15 = [v3 contextIdentifier];
  v11 = [v15 length];

  if (v11)
  {
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543362;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Processing a special case for serverUnfilledReason: %{public}@", &v19, 0xCu);
    }

    v9 = objc_alloc_init(APSponsorshipAdTransformer);
    v17 = [v3 contextIdentifier];
    v18 = [v3 contentIdentifier];
    LOBYTE(v11) = -[APSponsorshipAdTransformer createContentDataForContextId:contentId:withServerUnfilledReason:](v9, "createContentDataForContextId:contentId:withServerUnfilledReason:", v17, v18, [v7 intValue]);

    if (v11)
    {
      goto LABEL_9;
    }

    v12 = APLogForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    LOWORD(v19) = 0;
    v13 = "Server unfilled reason was requested but the operation has failed.";
    goto LABEL_7;
  }

LABEL_10:

  return v11;
}

- (id)_loadOverrideContextForMetric:(id)a3
{
  v3 = a3;
  v4 = [v3 internalProperties];
  v5 = [v4 objectForKeyedSubscript:kAPSupplementalContext];

  if (!v5)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v6 = [v3 contextIdentifier];
  v7 = [v6 length];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [NSUUID alloc];
  v9 = [v3 contextIdentifier];
  v10 = [v8 initWithUUIDString:v9];

  if (!v10)
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v3 contextIdentifier];
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Metric context ID has invalid format. %{public}@", &v17, 0xCu);
    }

LABEL_9:
    v15 = [APContext alloc];
    v10 = +[NSUUID UUID];
    v11 = v15;
    goto LABEL_10;
  }

  v11 = [APContext alloc];
LABEL_10:
  v12 = [v11 initWithIdentifier:v10 maxSize:0 requestedAdIdentifier:0 currentContent:0 adjacentContent:v5 supplementalContext:{0.0, 0.0}];

LABEL_11:

  return v12;
}

- (void)_setRateLimit:(id)a3
{
  v3 = a3;
  v28 = +[APPromotedContentLegacyInterface sharedInstance];
  v4 = [v3 properties];

  v5 = sub_10000797C();
  v7 = sub_100396D18(v5, v6);
  v8 = sub_10000797C();
  v10 = sub_100396D18(v8, v9);
  v11 = sub_10000797C();
  v13 = sub_100396D18(v11, v12);
  v14 = sub_10000797C();
  v16 = sub_100396D18(v14, v15);
  v17 = sub_10000797C();
  v19 = sub_100396D18(v17, v18);
  v20 = sub_10000797C();
  LODWORD(v22) = sub_100396D18(v20, v21);
  *&v23 = v7;
  *&v24 = v10;
  *&v25 = v13;
  *&v26 = v16;
  *&v27 = v19;
  [v28 setRateLimitRequestsInFeed:v23 inArticle:v24 betweenArticle:v25 videoInArticle:v26 nativeInFeed:v27 nativeInArticle:v22];
}

@end