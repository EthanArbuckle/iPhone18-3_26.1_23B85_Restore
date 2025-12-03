@interface APPCControllerMetricCoordinator
+ (void)startWithLegacyInterface:(id)interface;
+ (void)stop;
- (APPCControllerMetricCoordinator)initWithTokens:(id)tokens legacyInterface:(id)interface;
- (BOOL)_processContentIdOverrideIfNecessaryForMetric:(id)metric;
- (id)_loadOverrideContextForMetric:(id)metric;
- (id)_provideEnvironmentForMetric:(id)metric;
- (void)_setRateLimit:(id)limit;
- (void)handleMetricForTesting:(id)testing;
- (void)internalMetricReceived:(id)received;
- (void)internalSignalReceived:(id)received;
- (void)metricReceived:(id)received;
- (void)processInternalMetric:(id)metric;
- (void)processMetric:(id)metric;
@end

@implementation APPCControllerMetricCoordinator

+ (void)startWithLegacyInterface:(id)interface
{
  interfaceCopy = interface;
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
  v14 = [(APPCControllerMetricCoordinator *)v12 initWithTokens:v13 legacyInterface:interfaceCopy];

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
  registrationTokens = [qword_1004EA1F8 registrationTokens];
  v3 = [registrationTokens countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(registrationTokens);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = +[MetricsModule storage];
        notificationRegistrar = [v8 notificationRegistrar];
        [notificationRegistrar removeHandlerWithIdentifier:{objc_msgSend(v7, "integerValue")}];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [registrationTokens countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = qword_1004EA1F8;
  qword_1004EA1F8 = 0;

  v11 = qword_1004EA200;
  qword_1004EA200 = 0;
}

- (APPCControllerMetricCoordinator)initWithTokens:(id)tokens legacyInterface:(id)interface
{
  tokensCopy = tokens;
  interfaceCopy = interface;
  v12.receiver = self;
  v12.super_class = APPCControllerMetricCoordinator;
  v9 = [(APPCControllerMetricCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_registrationTokens, tokens);
    objc_storeStrong(&v10->_legacyMetrics, interface);
  }

  return v10;
}

- (void)internalMetricReceived:(id)received
{
  receivedCopy = received;
  v5 = os_transaction_create();
  v6 = qword_1004EA200;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003821BC;
  block[3] = &unk_10047E550;
  block[4] = self;
  v10 = receivedCopy;
  v11 = v5;
  v7 = v5;
  v8 = receivedCopy;
  dispatch_async(v6, block);
}

- (void)metricReceived:(id)received
{
  receivedCopy = received;
  v5 = os_transaction_create();
  v6 = qword_1004EA200;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100382294;
  block[3] = &unk_10047E550;
  block[4] = self;
  v10 = receivedCopy;
  v11 = v5;
  v7 = v5;
  v8 = receivedCopy;
  dispatch_async(v6, block);
}

- (void)internalSignalReceived:(id)received
{
  receivedCopy = received;
  v5 = os_transaction_create();
  v6 = qword_1004EA200;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038236C;
  block[3] = &unk_10047E550;
  block[4] = self;
  v10 = receivedCopy;
  v11 = v5;
  v7 = v5;
  v8 = receivedCopy;
  dispatch_async(v6, block);
}

- (void)handleMetricForTesting:(id)testing
{
  testingCopy = testing;
  v5 = os_transaction_create();
  host = [(APPCControllerMetricCoordinator *)self host];

  if (!host)
  {
    v7 = [NSUserDefaults alloc];
    v8 = [v7 initWithSuiteName:APDefaultsBundleID];
    v9 = [v8 objectForKey:@"APMetricListener.enableConnection"];
    [(APPCControllerMetricCoordinator *)self setHost:v9];
  }

  host2 = [(APPCControllerMetricCoordinator *)self host];
  v11 = [host2 componentsSeparatedByString:@":"];

  if ([v11 count] > 1)
  {
    v13 = qword_1004EA208;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100382544;
    v14[3] = &unk_100480AE8;
    v14[4] = self;
    v15 = v11;
    v16 = testingCopy;
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

- (void)processInternalMetric:(id)metric
{
  metricCopy = metric;
  if ([metricCopy metric] == 77000)
  {
    [(APPCControllerMetricCoordinator *)self _setRateLimit:metricCopy];
  }

  legacyMetrics = [(APPCControllerMetricCoordinator *)self legacyMetrics];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100382840;
  v7[3] = &unk_100480B10;
  v7[4] = self;
  v8 = metricCopy;
  v6 = metricCopy;
  [legacyMetrics processMetric:v6 environmentProvider:v7];
}

- (id)_provideEnvironmentForMetric:(id)metric
{
  metricCopy = metric;
  internalProperties = [metricCopy internalProperties];
  v6 = [internalProperties objectForKeyedSubscript:kAPMetricClientInfoKey];

  if (v6)
  {
    v7 = v6;
  }

  contextIdentifier = [metricCopy contextIdentifier];

  if (contextIdentifier && ([metricCopy contextIdentifier], v9 = objc_claimAutoreleasedReturnValue(), +[APManagedContext findManagedContextByFingerprint:](APManagedContext, "findManagedContextByFingerprint:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      contextIdentifier2 = [metricCopy contextIdentifier];
      contentIdentifier = [metricCopy contentIdentifier];
      v40 = 138543618;
      v41 = contextIdentifier2;
      v42 = 2114;
      v43 = contentIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully retrieved cached context data %{public}@ for content identifier %{public}@.", &v40, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      contextIdentifier3 = [metricCopy contextIdentifier];
      contentIdentifier2 = [metricCopy contentIdentifier];
      v40 = 138543618;
      v41 = contextIdentifier3;
      v42 = 2114;
      v43 = contentIdentifier2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to find context with identifier %{public}@ for content %{public}@. Metric may not contain all required fields.", &v40, 0x16u);
    }

    v10 = 0;
    v14 = 1;
  }

  idAccount = [v10 idAccount];
  if (!idAccount)
  {
    idAccount = +[APIDAccountProvider privateUserAccount];
  }

  contentIdentifier3 = [metricCopy contentIdentifier];
  v19 = [APManagedContentData findById:contentIdentifier3];

  if (!v19)
  {
    handle = [metricCopy handle];
    v19 = [APManagedContentData findById:handle];

    if (!v19)
    {
      if (!-[APPCControllerMetricCoordinator _processContentIdOverrideIfNecessaryForMetric:](self, "_processContentIdOverrideIfNecessaryForMetric:", metricCopy) || ([metricCopy contentIdentifier], v31 = objc_claimAutoreleasedReturnValue(), +[APManagedContentData findById:](APManagedContentData, "findById:", v31), v19 = objc_claimAutoreleasedReturnValue(), v31, !v19))
      {
        v32 = APLogForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          contentIdentifier4 = [metricCopy contentIdentifier];
          v40 = 138543362;
          v41 = contentIdentifier4;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No managed content found for content identifier %{public}@. Assuming there was no response from server for ad request with that identifier.", &v40, 0xCu);
        }

        if (v14)
        {
          v26 = APLogForCategory();
          if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_ERROR))
          {
            contextIdentifier4 = [metricCopy contextIdentifier];
            contentIdentifier5 = [metricCopy contentIdentifier];
            v40 = 138543618;
            v41 = contextIdentifier4;
            v42 = 2114;
            v43 = contentIdentifier5;
            _os_log_impl(&_mh_execute_header, &v26->super, OS_LOG_TYPE_ERROR, "Unable to find managed context %{public}@ for content %{public}@. Cannot continue, metric ignored.", &v40, 0x16u);
          }

          v27 = 0;
          goto LABEL_28;
        }

        contentIdentifier7 = objc_alloc_init(APContentData);
        contentIdentifier6 = [metricCopy contentIdentifier];
        [contentIdentifier7 setIdentifier:contentIdentifier6];

        v37 = [NSUUID alloc];
        contextIdentifier5 = [metricCopy contextIdentifier];
        v39 = [v37 initWithUUIDString:contextIdentifier5];
        [contentIdentifier7 setContextIdentifier:v39];

        [contentIdentifier7 setServerUnfilledReason:1010];
        v21 = [[APContentDataInternal alloc] initWithContent:contentIdentifier7];
        v19 = [v10 addContentData:v21];
        goto LABEL_17;
      }
    }
  }

  v21 = APLogForCategory();
  if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_DEFAULT))
  {
    contentIdentifier7 = [metricCopy contentIdentifier];
    v40 = 138543362;
    v41 = contentIdentifier7;
    _os_log_impl(&_mh_execute_header, &v21->super, OS_LOG_TYPE_DEFAULT, "Successfully retrieved cached content data for identifier %{public}@.", &v40, 0xCu);
LABEL_17:
  }

  v23 = [(APPCControllerMetricCoordinator *)self _loadOverrideContextForMetric:metricCopy];
  if (v23)
  {
    v24 = APLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      contentIdentifier8 = [metricCopy contentIdentifier];
      v40 = 138543362;
      v41 = contentIdentifier8;
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
    context = [v10 context];
    [(APMetricEnvironment *)v27 setContext:context];
  }

  [(APMetricEnvironment *)v27 setClientInfo:v6];
  [(APMetricEnvironment *)v27 setIdAccount:idAccount];
  idAccount2 = [(APMetricEnvironment *)v27 idAccount];

  if (!idAccount2)
  {
    CreateDiagnosticReport();
  }

LABEL_28:

  return v27;
}

- (void)processMetric:(id)metric
{
  metricCopy = metric;
  legacyMetrics = [(APPCControllerMetricCoordinator *)self legacyMetrics];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100382F54;
  v7[3] = &unk_100480B10;
  v7[4] = self;
  v8 = metricCopy;
  v6 = metricCopy;
  [legacyMetrics processMetric:v6 environmentProvider:v7];
}

- (BOOL)_processContentIdOverrideIfNecessaryForMetric:(id)metric
{
  metricCopy = metric;
  internalProperties = [metricCopy internalProperties];
  v5 = [internalProperties objectForKeyedSubscript:kAPOriginalContentIdentifier];

  internalProperties2 = [metricCopy internalProperties];
  v7 = [internalProperties2 objectForKeyedSubscript:kAPServerUnfilledReason];

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
    contentIdentifier = [metricCopy contentIdentifier];
    LOBYTE(v11) = [(APSponsorshipAdTransformer *)v9 copyContentDataId:v5 toNewContentDataId:contentIdentifier];

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

  contextIdentifier = [metricCopy contextIdentifier];
  v11 = [contextIdentifier length];

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
    contextIdentifier2 = [metricCopy contextIdentifier];
    contentIdentifier2 = [metricCopy contentIdentifier];
    LOBYTE(v11) = -[APSponsorshipAdTransformer createContentDataForContextId:contentId:withServerUnfilledReason:](v9, "createContentDataForContextId:contentId:withServerUnfilledReason:", contextIdentifier2, contentIdentifier2, [v7 intValue]);

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

- (id)_loadOverrideContextForMetric:(id)metric
{
  metricCopy = metric;
  internalProperties = [metricCopy internalProperties];
  v5 = [internalProperties objectForKeyedSubscript:kAPSupplementalContext];

  if (!v5)
  {
    v12 = 0;
    goto LABEL_11;
  }

  contextIdentifier = [metricCopy contextIdentifier];
  v7 = [contextIdentifier length];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [NSUUID alloc];
  contextIdentifier2 = [metricCopy contextIdentifier];
  v10 = [v8 initWithUUIDString:contextIdentifier2];

  if (!v10)
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      contextIdentifier3 = [metricCopy contextIdentifier];
      v17 = 138543362;
      v18 = contextIdentifier3;
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

- (void)_setRateLimit:(id)limit
{
  limitCopy = limit;
  v28 = +[APPromotedContentLegacyInterface sharedInstance];
  properties = [limitCopy properties];

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