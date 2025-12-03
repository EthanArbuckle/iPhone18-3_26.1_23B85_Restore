@interface APMetricsLegacyInterface
- (APMetricsLegacyInterface)init;
- (APMetricsLegacyInterface)initWithRetryManager:(id)manager;
- (APMetricsLegacyInterface)initWithRetryManager:(id)manager databaseManager:(id)databaseManager;
- (APVisibilityCheckFlag)visibleFlag;
- (BOOL)handleExpandedPlaceholderWithUnfilledReason:(int)reason metric:(id)metric internalContent:(id)content context:(id)context idAccount:(id)account;
- (BOOL)shouldIgnoreMetric:(id)metric;
- (id)_confirmed50PercentImpressionRequest:(id)request internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account forClickInteraction:(BOOL)interaction;
- (id)_confirmedImpressionRequest:(id)request internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account forClickInteraction:(BOOL)interaction;
- (id)_unconfirmedImpressionRequest:(id)request internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)aggregatedTimeSpentProcessor;
- (id)baseHandleInterfaceOnScreen:(id)screen internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleArticleLoadFailure:(id)failure internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleClientDiscarded:(id)discarded internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleDaemonRequestFailed:(id)failed internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleInterfaceExceededContainer:(id)container internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleInterfaceInteracted:(id)interacted internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)handleInterfaceOffScreen:(id)screen internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)handleInterfaceOnScreen:(id)screen internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleInterfaceReady:(id)ready internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)handleInterfaceReplaced:(id)replaced metricEnvironment:(id)environment;
- (id)handleInterfaceVisible:(id)visible internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)handleLoadFailed:(id)failed internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleMediaComplete:(id)complete internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)handlePrivacyAdMetric:(id)metric internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)handleQuickReturn:(id)return internalContent:(id)content context:(id)context;
- (id)handleSubscription:(id)subscription;
- (id)handleValidationFailed:(id)failed internalContent:(id)content context:(id)context idAccount:(id)account;
- (id)handleVideoMetric:(id)metric internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account;
- (id)pendingRequestsForContent:(id)content filterPredicate:(id)predicate;
- (void)processMetric:(id)metric environmentProvider:(id)provider;
- (void)removeDelayedRequest:(id)request cancel:(BOOL)cancel;
- (void)sendLegacyMetric:(id)metric;
- (void)sendLegacyMetricWithDelay:(double)delay legacyMetric:(id)metric requestSentHandler:(id)handler;
- (void)trackTimeSpent:(id)spent internalContent:(id)content;
@end

@implementation APMetricsLegacyInterface

- (APMetricsLegacyInterface)init
{
  v7.receiver = self;
  v7.super_class = APMetricsLegacyInterface;
  v2 = [(APMetricsLegacyInterface *)&v7 init];
  if (v2)
  {
    v3 = +[NSProcessInfo processInfo];
    isRunningTests = [v3 isRunningTests];

    if ((isRunningTests & 1) == 0)
    {
      v5 = objc_alloc_init(APLegacyMetricRetryManager);
      v2 = [(APMetricsLegacyInterface *)v2 initWithRetryManager:v5];
    }
  }

  return v2;
}

- (APMetricsLegacyInterface)initWithRetryManager:(id)manager
{
  managerCopy = manager;
  v5 = +[APDatabaseManager mainDatabase];
  v6 = [(APMetricsLegacyInterface *)self initWithRetryManager:managerCopy databaseManager:v5];

  return v6;
}

- (APMetricsLegacyInterface)initWithRetryManager:(id)manager databaseManager:(id)databaseManager
{
  managerCopy = manager;
  databaseManagerCopy = databaseManager;
  v19.receiver = self;
  v19.super_class = APMetricsLegacyInterface;
  v9 = [(APMetricsLegacyInterface *)&v19 init];
  if (v9)
  {
    v10 = +[NSMutableDictionary dictionary];
    pendingDelayedRequests = v9->_pendingDelayedRequests;
    v9->_pendingDelayedRequests = v10;

    v12 = objc_alloc_init(APUnfairRecursiveLock);
    delayedRequestLock = v9->_delayedRequestLock;
    v9->_delayedRequestLock = v12;

    v14 = objc_alloc_init(APUnfairRecursiveLock);
    confirmedClickLock = v9->_confirmedClickLock;
    v9->_confirmedClickLock = v14;

    v16 = [NSSet setWithObjects:@"com.apple.news", @"com.apple.stocks", @"com.apple.ap.promotedcontentd", 0];
    bundleIdentifierAllowList = v9->_bundleIdentifierAllowList;
    v9->_bundleIdentifierAllowList = v16;

    objc_storeStrong(&v9->_metricRetryManager, manager);
    [(APLegacyMetricRetryManagerProtocol *)v9->_metricRetryManager start];
    objc_storeStrong(&v9->_databaseManager, databaseManager);
  }

  return v9;
}

- (id)aggregatedTimeSpentProcessor
{
  v3 = [APAggregatedTimeSpentLegacyInterface alloc];
  databaseManager = [(APMetricsLegacyInterface *)self databaseManager];
  metricRetryManager = [(APMetricsLegacyInterface *)self metricRetryManager];
  v6 = [(APAggregatedTimeSpentLegacyInterface *)v3 initWithDbManager:databaseManager retryManager:metricRetryManager];

  return v6;
}

- (APVisibilityCheckFlag)visibleFlag
{
  visibleFlag = self->_visibleFlag;
  if (!visibleFlag)
  {
    v4 = [APConfigurationMediator configurationForClass:objc_opt_class() usingCache:0];
    v5 = [[APVisibilityCheckFlag alloc] initWithConfig:v4];
    v6 = self->_visibleFlag;
    self->_visibleFlag = v5;

    visibleFlag = self->_visibleFlag;
  }

  return visibleFlag;
}

- (void)sendLegacyMetric:(id)metric
{
  metricCopy = metric;
  metricRetryManager = [(APMetricsLegacyInterface *)self metricRetryManager];
  [metricCopy setRetryManager:metricRetryManager];

  internalContent = [metricCopy internalContent];
  [internalContent eventSent];

  objc_initWeak(&location, self);
  v7 = os_transaction_create();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002D1100;
  v10[3] = &unk_10047D6A8;
  objc_copyWeak(&v13, &location);
  v8 = metricCopy;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [v8 makeRequest:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)sendLegacyMetricWithDelay:(double)delay legacyMetric:(id)metric requestSentHandler:(id)handler
{
  metricCopy = metric;
  handlerCopy = handler;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    metric = [metricCopy metric];
    *buf = 134218242;
    *&buf[4] = delay;
    *&buf[12] = 2114;
    *&buf[14] = metric;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Delaying send of metric by %.2f seconds for metric:\n%{public}@", buf, 0x16u);
  }

  delayedRequestLock = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [delayedRequestLock lock];

  pendingDelayedRequests = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
  requestIdentifier = [metricCopy requestIdentifier];
  [pendingDelayedRequests setObject:metricCopy forKey:requestIdentifier];

  delayedRequestLock2 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [delayedRequestLock2 unlock];

  metricRetryManager = [(APMetricsLegacyInterface *)self metricRetryManager];
  [metricCopy setRetryManager:metricRetryManager];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = sub_1002D144C;
  v28 = sub_1002D145C;
  v29 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1002D1464;
  v22[3] = &unk_10047D6D0;
  v22[4] = self;
  v23 = metricCopy;
  v25 = buf;
  v17 = handlerCopy;
  v24 = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002D150C;
  v19[3] = &unk_10047D6F8;
  v19[4] = self;
  v18 = v23;
  v20 = v18;
  v21 = buf;
  [v18 makeDelayedRequest:v22 requestSentHandler:v19 responseCallback:delay];

  _Block_object_dispose(buf, 8);
}

- (void)removeDelayedRequest:(id)request cancel:(BOOL)cancel
{
  cancelCopy = cancel;
  requestCopy = request;
  delayedRequestLock = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [delayedRequestLock lock];

  if (cancelCopy)
  {
    pendingDelayedRequests = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
    v8 = [pendingDelayedRequests objectForKeyedSubscript:requestCopy];

    [v8 cancelDelayedRequest];
  }

  pendingDelayedRequests2 = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
  [pendingDelayedRequests2 removeObjectForKey:requestCopy];

  delayedRequestLock2 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [delayedRequestLock2 unlock];
}

- (id)pendingRequestsForContent:(id)content filterPredicate:(id)predicate
{
  contentCopy = content;
  predicateCopy = predicate;
  delayedRequestLock = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [delayedRequestLock lock];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1002D144C;
  v23 = sub_1002D145C;
  v24 = 0;
  pendingDelayedRequests = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002D1820;
  v15[3] = &unk_10047D720;
  v10 = contentCopy;
  v16 = v10;
  v18 = &v19;
  v11 = predicateCopy;
  v17 = v11;
  [pendingDelayedRequests enumerateKeysAndObjectsUsingBlock:v15];

  delayedRequestLock2 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [delayedRequestLock2 unlock];

  v13 = [v20[5] copy];
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)processMetric:(id)metric environmentProvider:(id)provider
{
  metricCopy = metric;
  providerCopy = provider;
  v8 = [(APMetricsLegacyInterface *)self shouldIgnoreMetric:metricCopy];
  v9 = APLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      bundleIdentifier = [metricCopy bundleIdentifier];
      *buf = 138412290;
      v79 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Ignoring metric from client %@", buf, 0xCu);
    }

    goto LABEL_112;
  }

  if (v10)
  {
    metric = [metricCopy metric];
    handle = [metricCopy handle];
    contentIdentifier = [metricCopy contentIdentifier];
    *buf = 134218498;
    v79 = metric;
    v80 = 2114;
    v81 = handle;
    v82 = 2114;
    v83 = contentIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received metric %ld with ID %{public}@ for adOpID %{public}@ from PCCD", buf, 0x20u);
  }

  v15 = metricPropertyValue(metricCopy, 0x13);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = metricPropertyValue(metricCopy, 0x13);
    bOOLValue = [v16 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_12;
    }
  }

  else
  {
    contentIdentifier2 = [metricCopy contentIdentifier];
    v19 = [APContentDataInternal isPlaceholderIdentifier:contentIdentifier2];

    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([metricCopy metric] == 1405 || objc_msgSend(metricCopy, "metric") == 1202)
  {
LABEL_12:
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1002D27F0;
    v75[3] = &unk_10047D748;
    v77 = providerCopy;
    v20 = metricCopy;
    v76 = v20;
    v21 = objc_retainBlock(v75);
    if ([v20 purpose] == 100)
    {
      metric2 = [v20 metric];
      v9 = 0;
      if (metric2 > 1406)
      {
        if (metric2 <= 1599)
        {
          if (metric2 <= 1409)
          {
            if (metric2 == 1407)
            {
              v55 = (v21[2])(v21);
              if (v55)
              {
                v24 = v55;
                v74 = v21;
                internalContent = [v55 internalContent];
                context = [v24 context];
                clientInfo = [v24 clientInfo];
                idAccount = [v24 idAccount];
                v29 = [(APMetricsLegacyInterface *)self handleInterfaceOffScreen:v20 internalContent:internalContent context:context clientInfo:clientInfo idAccount:idAccount];
                goto LABEL_79;
              }
            }

            else if (metric2 == 1408)
            {
              v54 = (v21[2])(v21);
              if (v54)
              {
                v24 = v54;
                v74 = v21;
                internalContent = [v54 internalContent];
                context = [v24 context];
                clientInfo = [v24 clientInfo];
                idAccount = [v24 idAccount];
                v29 = [(APMetricsLegacyInterface *)self handleInterfaceInteracted:v20 internalContent:internalContent context:context clientInfo:clientInfo idAccount:idAccount];
                goto LABEL_79;
              }
            }

            else
            {
              v48 = (v21[2])(v21);
              if (v48)
              {
                v24 = v48;
                v74 = v21;
                internalContent2 = [v48 internalContent];
                context2 = [v24 context];
                v9 = [(APMetricsLegacyInterface *)self handleQuickReturn:v20 internalContent:internalContent2 context:context2];
                goto LABEL_86;
              }
            }

            goto LABEL_109;
          }

          if ((metric2 - 1410) < 2)
          {
            goto LABEL_92;
          }
        }

        else if ((metric2 - 1600) <= 9 && metric2 != 1601)
        {
          v36 = (v21[2])(v21);
          if (v36)
          {
            v24 = v36;
            v74 = v21;
            internalContent2 = [v36 internalContent];
            context2 = [v24 context];
            clientInfo2 = [v24 clientInfo];
            idAccount2 = [v24 idAccount];
            v9 = [(APMetricsLegacyInterface *)self handleVideoMetric:v20 internalContent:internalContent2 context:context2 clientInfo:clientInfo2 idAccount:idAccount2];

LABEL_85:
LABEL_86:

            if (!v9)
            {
LABEL_87:
              v9 = v24;
              v21 = v74;
              goto LABEL_92;
            }

LABEL_102:
            [(APMetricsLegacyInterface *)self sendLegacyMetric:v9];
            v65 = v9;
            v9 = v24;
            v21 = v74;
LABEL_111:

            goto LABEL_112;
          }

          goto LABEL_109;
        }
      }

      else if (metric2 <= 1201)
      {
        if (metric2 > 1003)
        {
          switch(metric2)
          {
            case 1004:
              v57 = (v21[2])(v21);
              if (v57)
              {
                v24 = v57;
                v74 = v21;
                internalContent2 = [v57 internalContent];
                context2 = [v24 context];
                clientInfo2 = [v24 idAccount];
                v51 = [(APMetricsLegacyInterface *)self handleDaemonRequestFailed:v20 internalContent:internalContent2 context:context2 idAccount:clientInfo2];
                goto LABEL_84;
              }

              goto LABEL_109;
            case 1200:
              goto LABEL_92;
            case 1201:
              v50 = (v21[2])(v21);
              if (v50)
              {
                v24 = v50;
                v74 = v21;
                internalContent2 = [v50 internalContent];
                context2 = [v24 context];
                clientInfo2 = [v24 idAccount];
                v51 = [(APMetricsLegacyInterface *)self handleClientDiscarded:v20 internalContent:internalContent2 context:context2 idAccount:clientInfo2];
LABEL_84:
                v9 = v51;
                goto LABEL_85;
              }

LABEL_109:
              v65 = 0;
LABEL_110:
              v9 = 0;
              goto LABEL_111;
          }
        }

        else if ((metric2 - 1000) < 4)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (metric2 > 1401)
        {
          if (metric2 <= 1404)
          {
            if ((metric2 - 1402) >= 2)
            {
              if (metric2 == 1404)
              {
                v23 = (v21[2])(v21);
                if (v23)
                {
                  v24 = v23;
                  v74 = v21;
                  internalContent = [v23 internalContent];
                  context = [v24 context];
                  clientInfo = [v24 clientInfo];
                  idAccount = [v24 idAccount];
                  v29 = [(APMetricsLegacyInterface *)self handleInterfaceReady:v20 internalContent:internalContent context:context clientInfo:clientInfo idAccount:idAccount];
LABEL_79:
                  v9 = v29;

                  goto LABEL_101;
                }

                goto LABEL_109;
              }

              goto LABEL_88;
            }

LABEL_92:
            v62 = APLogForCategory();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              metric3 = [v20 metric];
              contentIdentifier3 = [v20 contentIdentifier];
              *buf = 134218242;
              v79 = metric3;
              v80 = 2114;
              v81 = contentIdentifier3;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Metric %ld for content %{public}@ does not send a metric request.", buf, 0x16u);
            }

            v65 = 0;
            goto LABEL_111;
          }

          if (metric2 != 1405)
          {
            v53 = (v21[2])(v21);
            if (v53)
            {
              v24 = v53;
              v74 = v21;
              internalContent = [v53 internalContent];
              context = [v24 context];
              clientInfo = [v24 clientInfo];
              idAccount = [v24 idAccount];
              v29 = [(APMetricsLegacyInterface *)self handleInterfaceVisible:v20 internalContent:internalContent context:context clientInfo:clientInfo idAccount:idAccount];
              goto LABEL_79;
            }

            goto LABEL_109;
          }

          v56 = (v21[2])(v21);
          if (v56)
          {
            v24 = v56;
            v74 = v21;
            internalContent2 = [v56 internalContent];
            context2 = [v24 context];
            clientInfo2 = [v24 idAccount];
            v51 = [(APMetricsLegacyInterface *)self handleInterfaceOnScreen:v20 internalContent:internalContent2 context:context2 idAccount:clientInfo2];
            goto LABEL_84;
          }

          goto LABEL_109;
        }

        if (metric2 == 1202 || metric2 == 1400)
        {
          goto LABEL_92;
        }

        if (metric2 == 1401)
        {
          v52 = (v21[2])(v21);
          if (v52)
          {
            v24 = v52;
            v74 = v21;
            v9 = [(APMetricsLegacyInterface *)self handleInterfaceReplaced:v20 metricEnvironment:v52];
            if (!v9)
            {
              goto LABEL_87;
            }

            goto LABEL_102;
          }

          goto LABEL_109;
        }
      }

LABEL_88:
      v58 = APLogForCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        metric4 = [v20 metric];
        contentIdentifier4 = [v20 contentIdentifier];
        bundleIdentifier2 = [v20 bundleIdentifier];
        *buf = 134218498;
        v79 = metric4;
        v80 = 2114;
        v81 = contentIdentifier4;
        v82 = 2114;
        v83 = bundleIdentifier2;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Ignoring metric %ld for Content %{public}@ received from %{public}@", buf, 0x20u);
      }

      goto LABEL_91;
    }

    if ([v20 purpose] == 101)
    {
      metric5 = [v20 metric];
      if (metric5 != 2503)
      {
        if (metric5 == 2501)
        {
          v31 = (v21[2])(v21);
          if (!v31)
          {
            goto LABEL_109;
          }

          v24 = v31;
          v74 = v21;
          internalContent = [v31 internalContent];
          context3 = [v24 context];
          idAccount3 = [v24 idAccount];
          v34 = [(APMetricsLegacyInterface *)self handleLoadFailed:v20 internalContent:internalContent context:context3 idAccount:idAccount3];
          goto LABEL_99;
        }

LABEL_91:
        v9 = 0;
        goto LABEL_92;
      }

      v49 = (v21[2])(v21);
      if (!v49)
      {
        goto LABEL_109;
      }

      v24 = v49;
      v74 = v21;
      internalContent = [v49 internalContent];
      context3 = [v24 context];
      idAccount3 = [v24 clientInfo];
      idAccount4 = [v24 idAccount];
      v47 = [(APMetricsLegacyInterface *)self handleVideoMetric:v20 internalContent:internalContent context:context3 clientInfo:idAccount3 idAccount:idAccount4];
LABEL_54:
      v9 = v47;

LABEL_100:
      goto LABEL_101;
    }

    if ([v20 purpose] == -1)
    {
      metric6 = [v20 metric];
      v9 = 0;
      if (metric6 > 77003)
      {
        if (metric6 != 77004)
        {
          if (metric6 == 77005)
          {
            v68 = (v21[2])(v21);
            if (!v68)
            {
              goto LABEL_109;
            }

            v69 = v68;
            internalContent3 = [v68 internalContent];
            context4 = [v69 context];
            idAccount5 = [v69 idAccount];
            v9 = [(APMetricsLegacyInterface *)self handleInterstitialOnScreen:v20 internalContent:internalContent3 context:context4 idAccount:idAccount5];
          }

          else if (metric6 != 77006)
          {
            goto LABEL_92;
          }

          v73 = (v21[2])(v21);
          if (!v73)
          {
            v65 = v9;
            goto LABEL_110;
          }

          v24 = v73;
          v74 = v21;
          internalContent = [v73 internalContent];
          [(APMetricsLegacyInterface *)self trackTimeSpent:v20 internalContent:internalContent];
LABEL_101:

          if (v9)
          {
            goto LABEL_102;
          }

          goto LABEL_87;
        }

        v67 = (v21[2])(v21);
        if (!v67)
        {
          goto LABEL_109;
        }

        v24 = v67;
        v74 = v21;
        internalContent = [v67 internalContent];
        context3 = [v24 context];
        idAccount3 = [v24 idAccount];
        v34 = [(APMetricsLegacyInterface *)self handleInterfaceExceededContainer:v20 internalContent:internalContent context:context3 idAccount:idAccount3];
        goto LABEL_99;
      }

      if (metric6 != 77001)
      {
        if (metric6 == 77002)
        {
          v74 = v21;
          v9 = [(APMetricsLegacyInterface *)self handleSubscription:v20];
          v24 = 0;
          if (v9)
          {
            goto LABEL_102;
          }

          goto LABEL_87;
        }

        if (metric6 != 77003)
        {
          goto LABEL_92;
        }

        v45 = (v21[2])(v21);
        if (!v45)
        {
          goto LABEL_109;
        }

        v24 = v45;
        v74 = v21;
        internalContent = [v45 internalContent];
        context3 = [v24 context];
        idAccount3 = [v24 clientInfo];
        idAccount4 = [v24 idAccount];
        v47 = [(APMetricsLegacyInterface *)self handleMediaComplete:v20 internalContent:internalContent context:context3 clientInfo:idAccount3 idAccount:idAccount4];
        goto LABEL_54;
      }

      v66 = (v21[2])(v21);
      if (!v66)
      {
        goto LABEL_109;
      }

      v24 = v66;
      v74 = v21;
      internalContent = [v66 internalContent];
      context3 = [v24 context];
      idAccount3 = [v24 idAccount];
      v34 = [(APMetricsLegacyInterface *)self handleArticleLoadFailure:v20 internalContent:internalContent context:context3 idAccount:idAccount3];
    }

    else
    {
      if ([v20 purpose] != -105 || objc_msgSend(v20, "metric") != 77500)
      {
        goto LABEL_91;
      }

      v35 = (v21[2])(v21);
      if (!v35)
      {
        goto LABEL_109;
      }

      v24 = v35;
      v74 = v21;
      internalContent = [v35 internalContent];
      context3 = [v24 context];
      idAccount3 = [v24 idAccount];
      v34 = [(APMetricsLegacyInterface *)self handleValidationFailed:v20 internalContent:internalContent context:context3 idAccount:idAccount3];
    }

LABEL_99:
    v9 = v34;
    goto LABEL_100;
  }

  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    metric7 = [metricCopy metric];
    contentIdentifier5 = [metricCopy contentIdentifier];
    contextIdentifier = [metricCopy contextIdentifier];
    *buf = 134218498;
    v79 = metric7;
    v80 = 2114;
    v81 = contentIdentifier5;
    v82 = 2114;
    v83 = contextIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "A placeholder APContentData is reporting metric %ld and will not be processed. content: %{public}@ context: %{public}@.", buf, 0x20u);
  }

LABEL_112:
}

- (BOOL)shouldIgnoreMetric:(id)metric
{
  metricCopy = metric;
  bundleIdentifierAllowList = [(APMetricsLegacyInterface *)self bundleIdentifierAllowList];
  bundleIdentifier = [metricCopy bundleIdentifier];

  LOBYTE(metricCopy) = [bundleIdentifierAllowList containsObject:bundleIdentifier];
  return metricCopy ^ 1;
}

- (id)handleClientDiscarded:(id)discarded internalContent:(id)content context:(id)context idAccount:(id)account
{
  discardedCopy = discarded;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  properties = [discardedCopy properties];
  v14 = [properties objectForKeyedSubscript:@"code"];

  if (v14)
  {
    intValue = [v14 intValue];
    v16 = 0;
    v17 = 0xFFFFFFFFLL;
    if (intValue > 2602)
    {
      if (intValue == 2603)
      {
        v16 = 0;
        v18 = 0;
        v20 = 0;
        v17 = 3009;
        v19 = 1;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        if (intValue == 2604)
        {
          v16 = 0;
          v18 = 0;
          v19 = 0;
          v17 = 3010;
          v20 = 1;
        }
      }
    }

    else if (intValue == 2601)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 3007;
      v16 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (intValue == 2602)
      {
        v16 = 0;
        v19 = 0;
        v20 = 0;
        v17 = 3008;
        v18 = 1;
      }
    }

    v42 = v17;
    v41 = intValue;
    v24 = APLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      [contentCopy content];
      v25 = v39 = v19;
      [v25 identifier];
      v40 = v18;
      v26 = v14;
      v27 = accountCopy;
      v28 = contentCopy;
      v29 = discardedCopy;
      v31 = v30 = contextCopy;
      *buf = 138543618;
      v45 = v31;
      v46 = 2048;
      v47 = v41;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Content %{public}@ is being discarded with reason code %ld.", buf, 0x16u);

      contextCopy = v30;
      discardedCopy = v29;
      contentCopy = v28;
      accountCopy = v27;
      v14 = v26;
      v18 = v40;

      v19 = v39;
    }

    if ((v16 | v18 | v19 | v20) == 1)
    {
      v32 = APLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = contextCopy;
        content = [contentCopy content];
        identifier = [content identifier];
        if ((v42 - 3000) >= 0xB)
        {
          v36 = [NSString stringWithFormat:@"(unknown: %i)", v42];
        }

        else
        {
          v36 = *(&off_10047D8A0 + (v42 - 3000));
        }

        *buf = 138543874;
        v45 = identifier;
        v46 = 2114;
        v47 = v36;
        v48 = 2048;
        v49 = v41;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Content %{public}@ is allowed to send %{public}@ for discard code %ld.", buf, 0x20u);

        contextCopy = v33;
      }

      v37 = [[APAdSpaceEventRequester alloc] initWithMetric:discardedCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
      [(APAdSpaceEventRequester *)v37 setStatusCode:v42];
      [(APMetricsLegacyInterface *)self sendLegacyMetric:v37];
    }

    [contentCopy discarded];
  }

  else
  {
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      content2 = [contentCopy content];
      identifier2 = [content2 identifier];
      *buf = 138543362;
      v45 = identifier2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Content %{public}@ is reporting clientDiscarded with no discard code. No ASE sent.", buf, 0xCu);
    }
  }

  return 0;
}

- (id)handleInterfaceReady:(id)ready internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  contentCopy = content;
  v13 = [(APMetricsLegacyInterface *)self _unconfirmedImpressionRequest:ready internalContent:contentCopy context:context clientInfo:info idAccount:account];
  [contentCopy interfaceReady];

  return v13;
}

- (id)handleInterfaceInteracted:(id)interacted internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  interactedCopy = interacted;
  contentCopy = content;
  contextCopy = context;
  infoCopy = info;
  accountCopy = account;
  v16 = metricPropertyValue(interactedCopy, 0x2F);
  objc_opt_class();
  v17 = -1.0;
  v18 = -1.0;
  if (objc_opt_isKindOfClass())
  {
    v19 = metricPropertyValue(interactedCopy, 0x2F);
    [v19 doubleValue];
    v18 = v20;
  }

  v21 = metricPropertyValue(interactedCopy, 0x30);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = metricPropertyValue(interactedCopy, 0x30);
    [v22 doubleValue];
    v17 = v23;
  }

  v24 = metricPropertyValue(interactedCopy, 9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = metricPropertyValue(interactedCopy, 9);
    intValue = [v25 intValue];
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  v27 = metricPropertyValue(interactedCopy, 0x1A);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = metricPropertyValue(interactedCopy, 0x1A);
  }

  else
  {
    v28 = 0;
  }

  v29 = metricPropertyValue(interactedCopy, 0x29);
  objc_opt_class();
  v30 = contextCopy;
  if (objc_opt_isKindOfClass())
  {
    metricPropertyValue(interactedCopy, 0x29);
    v32 = v31 = v28;
    intValue2 = [v32 intValue];

    v28 = v31;
    v34 = intValue2 == 7302;
    contextCopy = v30;
    if (v34)
    {
      v35 = [(APMetricsLegacyInterface *)self handlePrivacyAdMetric:interactedCopy internalContent:contentCopy context:v30 clientInfo:infoCopy idAccount:accountCopy];
      goto LABEL_61;
    }
  }

  else
  {
  }

  v85 = v28;
  v86 = infoCopy;
  if (!v28)
  {
    v36 = APLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      content = [contentCopy content];
      identifier = [content identifier];
      *buf = 138543618;
      v91 = identifier;
      v92 = 2114;
      v93 = interactedCopy;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "RepresentationIdentifier missing for content %{public}@ in metric %{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v36 = [[NSUUID alloc] initWithUUIDString:v28];
  if (v36)
  {
    content2 = [contentCopy content];
    getRepresentation = [content2 representationWithIdentifier:v36];

    if (getRepresentation)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v41 = APLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      content3 = [contentCopy content];
      identifier2 = [content3 identifier];
      *buf = 138543618;
      v91 = v85;
      v92 = 2114;
      v93 = identifier2;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Representation %{public}@ for content %{public}@ is not a valid UUID.", buf, 0x16u);

      contextCopy = v30;
    }
  }

  content4 = [contentCopy content];
  getRepresentation = [content4 getRepresentation];

  if (!getRepresentation)
  {
LABEL_28:

    v46 = -1.0;
    v48 = -1.0;
    goto LABEL_29;
  }

LABEL_26:
  [getRepresentation size];
  v46 = v18 * v45;
  [getRepresentation size];
  v48 = v17 * v47;
  tapAction = [getRepresentation tapAction];

  if (!tapAction)
  {
LABEL_29:
    v51 = v86;
    v52 = APLogForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      content5 = [contentCopy content];
      identifier3 = [content5 identifier];
      *buf = 138543618;
      v91 = v85;
      v92 = 2114;
      v93 = identifier3;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Representation %{public}@ in content %{public}@ has no tap action.", buf, 0x16u);

      contextCopy = v30;
    }

    v83 = 0;
    v50 = 1;
    goto LABEL_32;
  }

  v83 = tapAction;
  v50 = 0;
  v51 = v86;
LABEL_32:
  if (v46 < 0.0 || v48 < 0.0)
  {
    v46 = 0.0;
    v48 = 0.0;
  }

  privateContent = [contentCopy privateContent];
  isCarouselAd = [privateContent isCarouselAd];

  if (isCarouselAd)
  {
    [contentCopy carouselElementClicked:intValue element:{v46, v48}];
  }

  else
  {
    [contentCopy clicked:{v46, v48}];
  }

  v57 = [(APMetricsLegacyInterface *)self _confirmedImpressionRequest:interactedCopy internalContent:contentCopy context:contextCopy clientInfo:v51 idAccount:accountCopy forClickInteraction:1];
  if (v57)
  {
    v58 = APLogForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "APMetricsLegacyInterface sending impression request due to interaction event.", buf, 2u);
    }

    [(APMetricsLegacyInterface *)self sendLegacyMetric:v57];
  }

  v84 = accountCopy;
  v59 = [(APMetricsLegacyInterface *)self _confirmed50PercentImpressionRequest:interactedCopy internalContent:contentCopy context:contextCopy clientInfo:v51 idAccount:accountCopy forClickInteraction:1];
  if (v59)
  {
    v60 = APLogForCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "APMetricsLegacyInterface sending impression request due to interaction event.", buf, 2u);
    }

    [(APMetricsLegacyInterface *)self sendLegacyMetric:v59];
  }

  confirmedClickLock = [(APMetricsLegacyInterface *)self confirmedClickLock];
  [confirmedClickLock lock];

  transientContent = [contentCopy transientContent];
  pendingConfirmedClick = [transientContent pendingConfirmedClick];

  transientContent2 = [contentCopy transientContent];
  hasConfirmedClick = [transientContent2 hasConfirmedClick];

  v66 = APLogForCategory();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    v67 = @"YES";
    if (v50)
    {
      v68 = @"NO";
    }

    else
    {
      v68 = @"YES";
    }

    if (pendingConfirmedClick)
    {
      v69 = @"YES";
    }

    else
    {
      v69 = @"NO";
    }

    *buf = 138543874;
    v91 = v68;
    v92 = 2114;
    v93 = v69;
    if (!hasConfirmedClick)
    {
      v67 = @"NO";
    }

    v94 = 2114;
    v95 = v67;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Action exists: %{public}@, pending confirmed click: %{public}@, confirmed click: %{public}@", buf, 0x20u);
  }

  v81 = v59;
  v82 = v57;
  if ((v50 | pendingConfirmedClick | hasConfirmedClick))
  {
    confirmedClickLock2 = [(APMetricsLegacyInterface *)self confirmedClickLock];
    [confirmedClickLock2 unlock];

    v71 = APLogForCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      content6 = [contentCopy content];
      identifier4 = [content6 identifier];
      *buf = 138543362;
      v91 = identifier4;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%{public}@ already has a confirmed click or a pending confirmed click request. Not posting another one.", buf, 0xCu);
    }

    v28 = v85;
    infoCopy = v86;
    v74 = v83;
    accountCopy = v84;
  }

  else
  {
    infoCopy = v86;
    accountCopy = v84;
    v75 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:interactedCopy internalContent:contentCopy andContext:v30 clientInfo:v86 idAccount:v84];
    [(APLogSysEventRequester *)v75 setEventType:6];
    internalContent = [(APLegacyMetricRequester *)v75 internalContent];
    [internalContent pendingConfirmedClick:1];

    confirmedClickLock3 = [(APMetricsLegacyInterface *)self confirmedClickLock];
    [confirmedClickLock3 unlock];

    v74 = v83;
    [v83 confirmedClickInterval];
    v79 = v78;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_1002D3720;
    v88[3] = &unk_10047D770;
    v88[4] = self;
    v89 = v75;
    v71 = v75;
    [(APMetricsLegacyInterface *)self sendLegacyMetricWithDelay:v71 legacyMetric:v88 requestSentHandler:v79];

    v28 = v85;
  }

  v35 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:interactedCopy internalContent:contentCopy andContext:v30 clientInfo:infoCopy idAccount:accountCopy];
  [(APLogSysEventRequester *)v35 setEventType:1];

  contextCopy = v30;
LABEL_61:

  return v35;
}

- (id)handleQuickReturn:(id)return internalContent:(id)content context:(id)context
{
  returnCopy = return;
  contentCopy = content;
  v9 = metricPropertyValue(returnCopy, 0x1B);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = metricPropertyValue(returnCopy, 0x1B);
    intValue = [v10 intValue];

    if ((intValue - 8101) <= 4)
    {
      v29 = returnCopy;
      content = [contentCopy content];
      identifier = [content identifier];
      v13 = [(APMetricsLegacyInterface *)self pendingRequestsForContent:identifier filterPredicate:&stru_10047D7B0];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            v20 = APLogForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              content2 = [contentCopy content];
              identifier2 = [content2 identifier];
              *buf = 138412802;
              v36 = v19;
              v37 = 2112;
              v38 = identifier2;
              v39 = 2048;
              v40 = intValue;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Cancelling LogSysEventRequest %@ for content %@ due to quick return time %lu.", buf, 0x20u);
            }

            [v19 cancelDelayedRequest];
            confirmedClickLock = [(APMetricsLegacyInterface *)self confirmedClickLock];
            [confirmedClickLock lock];

            internalContent = [v19 internalContent];
            [internalContent pendingConfirmedClick:0];

            confirmedClickLock2 = [(APMetricsLegacyInterface *)self confirmedClickLock];
            [confirmedClickLock2 unlock];
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v16);
      }

      returnCopy = v29;
      goto LABEL_16;
    }
  }

  else
  {

    intValue = 10;
  }

  v14 = APLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    content3 = [contentCopy content];
    identifier3 = [content3 identifier];
    *buf = 138412546;
    v36 = identifier3;
    v37 = 2048;
    v38 = intValue;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ignoring quick return metric for content %@ due to quick return time %lu. Confirmed click was already sent.", buf, 0x16u);
  }

LABEL_16:

  return 0;
}

- (id)handleInterfaceOnScreen:(id)screen internalContent:(id)content context:(id)context idAccount:(id)account
{
  screenCopy = screen;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  internalProperties = [screenCopy internalProperties];
  v15 = [internalProperties objectForKeyedSubscript:@"type"];

  internalProperties2 = [screenCopy internalProperties];
  v17 = [internalProperties2 objectForKeyedSubscript:@"reason"];

  if ([v15 intValue] != 1)
  {
    goto LABEL_4;
  }

  content = [contentCopy content];
  if ([content serverUnfilledReason])
  {

LABEL_4:
    v19 = [(APMetricsLegacyInterface *)self baseHandleInterfaceOnScreen:screenCopy internalContent:contentCopy context:contextCopy idAccount:accountCopy];
    goto LABEL_5;
  }

  if (v17)
  {
    v21 = [v17 count];

    if (v21)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_5:

  return v19;
}

- (id)baseHandleInterfaceOnScreen:(id)screen internalContent:(id)content context:(id)context idAccount:(id)account
{
  screenCopy = screen;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  if (!contentCopy || ([contentCopy content], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      contentIdentifier = [screenCopy contentIdentifier];
      *buf = 138543362;
      v104 = contentIdentifier;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing required parameters to handle on screen for content identifier %{public}@!", buf, 0xCu);
    }

    goto LABEL_8;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  content = [contentCopy content];
  serverUnfilledReason = [content serverUnfilledReason];

  if ((serverUnfilledReason - 1021) <= 2)
  {
    objc_sync_exit(selfCopy);

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  properties = [screenCopy properties];
  v23 = [properties objectForKeyedSubscript:@"collapsed"];

  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    contentIdentifier2 = [screenCopy contentIdentifier];
    v25 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ does not have a valid collapsed property %@.", contentIdentifier2, v23];

    v33 = APLogForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v104 = v25;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (+[APSystemInternal isAppleInternalInstall])
    {
      APSimulateCrash();
    }

    v20 = 0;
    goto LABEL_102;
  }

  internalProperties = [screenCopy internalProperties];
  v25 = [internalProperties objectForKeyedSubscript:@"placeholder"];

  if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    contentIdentifier3 = [screenCopy contentIdentifier];
    v97 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ does not have a valid placeholder value %@.", contentIdentifier3, v25];

    v35 = APLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v104 = v97;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (+[APSystemInternal isAppleInternalInstall])
    {
      APSimulateCrash();
    }

    goto LABEL_100;
  }

  bOOLValue = [v23 BOOLValue];
  bOOLValue2 = [v25 BOOLValue];
  internalProperties2 = [screenCopy internalProperties];
  v97 = [internalProperties2 objectForKeyedSubscript:@"type"];

  if (serverUnfilledReason < 1)
  {
    transientContent = [contentCopy transientContent];
    if ([transientContent interfaceReady])
    {
    }

    else
    {
      privateContent = [contentCopy privateContent];
      isClientRenderedAd = [privateContent isClientRenderedAd];

      if ((isClientRenderedAd & 1) == 0)
      {
        if ((bOOLValue & 1) == 0)
        {
          v38 = APLogForCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            contentIdentifier4 = [screenCopy contentIdentifier];
            *buf = 138543362;
            v104 = contentIdentifier4;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "OnScreen metric with content identifier %{public}@ is reporting as expanded but a ready metric has not been received.", buf, 0xCu);
          }

          v40 = 10;
LABEL_82:
          v93 = v40;
LABEL_83:

          goto LABEL_84;
        }

        v53 = 10;
LABEL_65:
        v93 = v53;
        goto LABEL_84;
      }
    }

    if (bOOLValue)
    {
      transientContent2 = [contentCopy transientContent];
      interfaceReady = [transientContent2 interfaceReady];

      if (!interfaceReady)
      {
        contentIdentifier5 = [screenCopy contentIdentifier];
        if (bOOLValue2)
        {
          v57 = @"YES";
        }

        else
        {
          v57 = @"NO";
        }

        v84 = v57;
        transientContent3 = [contentCopy transientContent];
        interfaceReady2 = [transientContent3 interfaceReady];
        v59 = @"YES";
        if (!interfaceReady2)
        {
          v59 = @"NO";
        }

        v83 = v59;
        privateContent2 = [contentCopy privateContent];
        isClientRenderedAd2 = [privateContent2 isClientRenderedAd];
        v61 = @"YES";
        if (!isClientRenderedAd2)
        {
          v61 = @"NO";
        }

        v82 = v61;
        privateContent3 = [contentCopy privateContent];
        isNativeAd = [privateContent3 isNativeAd];
        v63 = @"YES";
        if (!isNativeAd)
        {
          v63 = @"NO";
        }

        v81 = v63;
        v85 = [screenCopy description];
        content2 = [contentCopy content];
        uniqueIdentifier = [content2 uniqueIdentifier];
        v38 = [NSString stringWithFormat:@"__O.[Diagnostic].OnScreen metric with content identifier %@ occurred without reporting an ASE. collapsed: %@ placeholder: %@ unfilled reason: %ld ready: %@ client rendered: %@ is Native ad: %@ metric: %@ ad identifier: %@", contentIdentifier5, @"YES", v84, serverUnfilledReason, v83, v82, v81, v85, uniqueIdentifier];

        v66 = APLogForCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v104 = v38;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!+[APSystemInternal isAppleInternalInstall])
        {
          goto LABEL_99;
        }

        goto LABEL_62;
      }

      internalProperties3 = [screenCopy internalProperties];
      v38 = [internalProperties3 objectForKeyedSubscript:@"reason"];

      if (v38 && [v38 count])
      {
        contentIdentifier6 = [screenCopy contentIdentifier];
        v48 = [NSString stringWithFormat:@"_OnScreen metric with content identifier %@ for placeholder is reporting AdNotAvailable (ASE 3001)!", contentIdentifier6];

        v49 = APLogForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v104 = v48;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v50 = 3001;
      }

      else
      {
        if ([v97 intValue] == 7)
        {
          contentIdentifier7 = [screenCopy contentIdentifier];
          v78 = [NSString stringWithFormat:@"_OnScreen metric with content identifier %@ for sponsorship Ad is attempting to report onScreen but is collapsed.", contentIdentifier7];

          v79 = APLogForCategory();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v104 = v78;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          goto LABEL_99;
        }

        contentIdentifier8 = [screenCopy contentIdentifier];
        v92 = [NSString stringWithFormat:@"__*.[Diagnostic].3004 OnScreen metric with content identifier %@ is reporting on screen and ready but is still collapsed!", contentIdentifier8];

        v49 = APLogForCategory();
        v48 = v92;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v104 = v92;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v50 = 3004;
      }

      v93 = v50;

      goto LABEL_83;
    }

    privateContent4 = [contentCopy privateContent];
    isPrerollVideo = [privateContent4 isPrerollVideo];

    if (!(bOOLValue2 & 1 | ((isPrerollVideo & 1) == 0)))
    {
LABEL_100:
      v20 = 0;
      goto LABEL_101;
    }

    v53 = 3000;
    goto LABEL_65;
  }

  v93 = [APLegacyTypeTranslator unfilledReasonCodeToASEStatusCode:serverUnfilledReason];
  if (v93 == 3001)
  {
    v27 = 0;
  }

  else
  {
    v27 = bOOLValue2;
  }

  if (v27 != 1)
  {
    v31 = bOOLValue2 ^ 1;
    if ((bOOLValue2 & 1) != 0 || v93 != 3001 || serverUnfilledReason == 1010)
    {
      goto LABEL_45;
    }

    contentIdentifier9 = [screenCopy contentIdentifier];
    v38 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ for non-placeholder that was not an unfilled network error is reporting AdNotAvailable (ASE 3001)! Instead is ASE %d Unfilled Reason: %ld", contentIdentifier9, 3001, serverUnfilledReason];

    v39 = APLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v104 = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (+[APSystemInternal isAppleInternalInstall])
    {
      APSimulateCrash();
    }

    v40 = 3001;
    goto LABEL_82;
  }

  contentIdentifier10 = [screenCopy contentIdentifier];
  v29 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ for placeholder is not reporting AdNotAvailable (ASE 3001)! Instead is ASE: %d Unfilled Reason: %ld", contentIdentifier10, v93, serverUnfilledReason];

  v30 = APLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v104 = v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    APSimulateCrash();
  }

  v31 = 0;
LABEL_45:
  if (((bOOLValue | v31) & 1) == 0)
  {
    if ([(APMetricsLegacyInterface *)selfCopy handleExpandedPlaceholderWithUnfilledReason:v93 metric:screenCopy internalContent:contentCopy context:contextCopy idAccount:accountCopy])
    {
      v38 = APLogForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        content3 = [contentCopy content];
        identifier = [content3 identifier];
        *buf = 138543362;
        v104 = identifier;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Delaying ASE AdNotAvailable for preroll video placeholder %{public}@, waiting for preroll timeout before sending.", buf, 0xCu);
      }

      goto LABEL_99;
    }

    contentIdentifier11 = [screenCopy contentIdentifier];
    content4 = [contentCopy content];
    identifier2 = [content4 identifier];
    v38 = [NSString stringWithFormat:@"OnScreen metric %@ for expanded placeholder %@ with unfilled reason code %ld is in an unexpected state", contentIdentifier11, identifier2, serverUnfilledReason];

    v56 = APLogForCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v104 = v38;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (!+[APSystemInternal isAppleInternalInstall])
    {
      goto LABEL_99;
    }

LABEL_62:
    APSimulateCrash();
LABEL_99:

    goto LABEL_100;
  }

LABEL_84:
  privateContent5 = [contentCopy privateContent];
  isCarouselAd = [privateContent5 isCarouselAd];

  if (isCarouselAd)
  {
    content5 = [contentCopy content];
    identifier3 = [content5 identifier];
    v72 = [(APMetricsLegacyInterface *)selfCopy pendingRequestsForContent:identifier3 filterPredicate:&stru_10047D7D0];

    v91 = v25;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v73 = v72;
    v74 = [v73 countByEnumeratingWithState:&v98 objects:v102 count:16];
    if (v74)
    {
      v75 = *v99;
      do
      {
        for (i = 0; i != v74; i = i + 1)
        {
          if (*v99 != v75)
          {
            objc_enumerationMutation(v73);
          }

          [*(*(&v98 + 1) + 8 * i) cancelDelayedRequest];
        }

        v74 = [v73 countByEnumeratingWithState:&v98 objects:v102 count:16];
      }

      while (v74);
    }

    v25 = v91;
  }

  if (![contentCopy shouldSendAdSpaceStatusEvent:v93])
  {
    goto LABEL_100;
  }

  [contentCopy appearedOnScreenWithStatus:v93];
  v20 = [[APAdSpaceEventRequester alloc] initWithMetric:screenCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
  [(APAdSpaceEventRequester *)v20 setStatusCode:v93];
LABEL_101:

LABEL_102:
  objc_sync_exit(selfCopy);

LABEL_9:

  return v20;
}

- (id)handleInterfaceExceededContainer:(id)container internalContent:(id)content context:(id)context idAccount:(id)account
{
  containerCopy = container;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([contentCopy shouldSendAdSpaceStatusEvent:3005] & 1) != 0 || (objc_msgSend(contentCopy, "transientContent"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasBeenOnScreen"), v15, (v16 & 1) == 0))
  {
    [contentCopy appearedOnScreenWithStatus:3005];
    v17 = [[APAdSpaceEventRequester alloc] initWithMetric:containerCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
    [(APAdSpaceEventRequester *)v17 setStatusCode:3005];
  }

  else
  {
    v17 = 0;
  }

  objc_sync_exit(selfCopy);

  return v17;
}

- (id)handleInterfaceReplaced:(id)replaced metricEnvironment:(id)environment
{
  replacedCopy = replaced;
  environmentCopy = environment;
  v8 = metricPropertyValue(replacedCopy, 0x14);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_25:
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      contentIdentifier = [replacedCopy contentIdentifier];
      *buf = 138543362;
      v59 = contentIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "InterfaceReplaced metric sent for content %{public}@ with no placeholder. Ignoring.", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v9 = metricPropertyValue(replacedCopy, 0x14);

  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    internalContent = [environmentCopy internalContent];
    content = [internalContent content];
    identifier = [content identifier];
    *buf = 138543618;
    v59 = v9;
    v60 = 2114;
    v61 = identifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Replacing %{public}@ with %{public}@", buf, 0x16u);
  }

  v14 = [environmentCopy findInternalContentDataById:v9];
  [v14 interfaceReplaced];
  internalContent2 = [environmentCopy internalContent];
  privateContent = [internalContent2 privateContent];
  isPrerollVideo = [privateContent isPrerollVideo];

  if (isPrerollVideo)
  {
    v48 = v14;
    v49 = v9;
    v50 = replacedCopy;
    [(APMetricsLegacyInterface *)self pendingRequestsForContent:v9 filterPredicate:&stru_10047D7F0];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v56 = 0u;
    v18 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v52 = *v54;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v54 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          v22 = APLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            internalContent3 = [environmentCopy internalContent];
            content2 = [internalContent3 content];
            identifier2 = [content2 identifier];
            internalContent4 = [environmentCopy internalContent];
            content3 = [internalContent4 content];
            serverUnfilledReason = [content3 serverUnfilledReason];
            *buf = 138543618;
            v59 = identifier2;
            v60 = 2048;
            v61 = serverUnfilledReason;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Content %{public}@: has unfilled reason code %ld", buf, 0x16u);
          }

          [v21 cancelDelayedRequest];
          internalContent5 = [environmentCopy internalContent];
          content4 = [internalContent5 content];
          if ([content4 serverUnfilledReason] <= 200)
          {
          }

          else
          {
            content5 = [internalContent5 content];
            serverUnfilledReason2 = [content5 serverUnfilledReason];

            if (serverUnfilledReason2 <= 205)
            {
              v33 = APLogForCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                internalContent6 = [environmentCopy internalContent];
                content6 = [internalContent6 content];
                identifier3 = [content6 identifier];
                internalContent7 = [environmentCopy internalContent];
                content7 = [internalContent7 content];
                serverUnfilledReason3 = [content7 serverUnfilledReason];
                *buf = 138543618;
                v59 = identifier3;
                v60 = 2048;
                v61 = serverUnfilledReason3;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Content %{public}@: has unfilled reason code %ld. Sending an ASE with the unfilled reason code.", buf, 0x16u);
              }

              content8 = [internalContent5 content];
              v41 = +[APLegacyTypeTranslator AdDataUnfilledReasonCodeToASECode:](APLegacyTypeTranslator, "AdDataUnfilledReasonCodeToASECode:", [content8 serverUnfilledReason]);

              if ([internalContent5 shouldSendAdSpaceStatusEvent:v41])
              {
                [internalContent5 appearedOnScreenWithStatus:v41];
                v44 = [APAdSpaceEventRequester alloc];
                context = [environmentCopy context];
                idAccount = [environmentCopy idAccount];
                v47 = [(APAdSpaceEventRequester *)v44 initWithMetric:v50 internalContent:internalContent5 andContext:context idAccount:idAccount];

                [(APAdSpaceEventRequester *)v47 setStatusCode:v41];
                replacedCopy = v50;

                v9 = v49;
                goto LABEL_28;
              }
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v19);
    }

    v9 = v49;
    replacedCopy = v50;
    v14 = v48;
  }

LABEL_27:
  v47 = 0;
LABEL_28:

  return v47;
}

- (id)handleInterfaceVisible:(id)visible internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  visibleCopy = visible;
  contentCopy = content;
  contextCopy = context;
  infoCopy = info;
  accountCopy = account;
  v17 = metricPropertyValue(visibleCopy, 5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v18 = metricPropertyValue(visibleCopy, 5);
  bOOLValue = [v18 BOOLValue];

  if (bOOLValue)
  {
LABEL_6:
    v23 = APLogForCategory();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v27 = 0;
      goto LABEL_10;
    }

    content = [contentCopy content];
    identifier = [content identifier];
    *buf = 138543362;
    v62 = identifier;
    v26 = "Content %{public}@ reporting visible but is collapsed.";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v26, buf, 0xCu);

    goto LABEL_9;
  }

  v20 = metricPropertyValue(visibleCopy, 0x12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = metricPropertyValue(visibleCopy, 0x12);
    intValue = [v21 intValue];
  }

  else
  {
    intValue = 0;
  }

  v29 = metricPropertyValue(visibleCopy, 8);
  objc_opt_class();
  v30 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v31 = metricPropertyValue(visibleCopy, 8);
    [v31 doubleValue];
    v30 = v32;
  }

  v60 = intValue;
  if (intValue >= 100)
  {
    [contentCopy wasFullyVisible];
  }

  v33 = v30 / 1000.0;
  visibleFlag = [(APMetricsLegacyInterface *)self visibleFlag];
  contentID = [accountCopy contentID];
  uUIDString = [contentID UUIDString];
  v37 = [visibleFlag enabledForUUIDString:uUIDString];

  privateContent = [contentCopy privateContent];
  LODWORD(contentID) = [privateContent isCarouselAd];

  if (contentID)
  {
    v39 = metricPropertyValue(visibleCopy, 0xB);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = metricPropertyValue(visibleCopy, 0xB);
    }

    else
    {
      v40 = 0;
    }

    v42 = metricPropertyValue(visibleCopy, 0xA);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = metricPropertyValue(visibleCopy, 0xA);
    }

    else
    {
      v43 = 0;
    }

    v41 = v60;
    [contentCopy carouselVisibleStateChanged:v60 duration:v40 elements:v43 partialElements:v37 shouldUseNewVisibleLogic:v33];
  }

  else
  {
    v41 = v60;
    [contentCopy visibleStateChanged:v60 duration:v37 shouldUseNewVisibleLogic:v33];
  }

  privateContent2 = [contentCopy privateContent];
  isVideo = [privateContent2 isVideo];

  if (isVideo && v41 == 50)
  {
    v46 = metricPropertyValue(visibleCopy, 0x1E);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = metricPropertyValue(visibleCopy, 0x1E);
    }

    else
    {
      v47 = 0;
    }

    v48 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:visibleCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];
    transientContent = [contentCopy transientContent];
    wasFullyVisible = [transientContent wasFullyVisible];

    v51 = 0.51;
    if (wasFullyVisible)
    {
      v51 = 1.0;
    }

    [(APLogVideoAnalyticsEventRequester *)v48 setVideoVisibility:v51];
    [v47 timeIntervalSince1970];
    [(APLogVideoAnalyticsEventRequester *)v48 setVisibilityTimestamp:?];
    [(APMetricsLegacyInterface *)self sendLegacyMetric:v48];
    v52 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:visibleCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];
    [(APLogVideoAnalyticsEventRequester *)v52 setVideoVisibility:0.49];
    v53 = [v47 dateByAddingTimeInterval:v33];
    [v53 timeIntervalSince1970];
    [(APLogVideoAnalyticsEventRequester *)v52 setVisibilityTimestamp:?];
    [(APMetricsLegacyInterface *)self sendLegacyMetric:v52];

    v41 = v60;
  }

  transientContent2 = [contentCopy transientContent];
  playbackInProgress = [transientContent2 playbackInProgress];

  if (playbackInProgress)
  {
    v23 = APLogForCategory();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    content = [contentCopy content];
    identifier = [content identifier];
    *buf = 138543362;
    v62 = identifier;
    v26 = "Ignoring impression request for %{public}@: playback is in progress.";
    goto LABEL_8;
  }

  if (v41 >= 50)
  {
    v56 = [(APMetricsLegacyInterface *)self _confirmed50PercentImpressionRequest:visibleCopy internalContent:contentCopy context:contextCopy clientInfo:infoCopy idAccount:accountCopy forClickInteraction:0];
    if (v56)
    {
      v57 = APLogForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        content2 = [contentCopy content];
        identifier2 = [content2 identifier];
        *buf = 138543362;
        v62 = identifier2;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Sending 50%% impression request for %{public}@", buf, 0xCu);
      }

      [(APMetricsLegacyInterface *)self sendLegacyMetric:v56];
    }
  }

  v27 = [(APMetricsLegacyInterface *)self _confirmedImpressionRequest:visibleCopy internalContent:contentCopy context:contextCopy clientInfo:infoCopy idAccount:accountCopy forClickInteraction:0];
LABEL_10:

  return v27;
}

- (id)handleInterfaceOffScreen:(id)screen internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  screenCopy = screen;
  contentCopy = content;
  contextCopy = context;
  infoCopy = info;
  accountCopy = account;
  privateContent = [contentCopy privateContent];
  isCarouselAd = [privateContent isCarouselAd];

  if (isCarouselAd)
  {
    transientContent = [contentCopy transientContent];
    if ([transientContent hasConfirmedImpression])
    {
      transientContent2 = [contentCopy transientContent];
      carouselFinishedSent = [transientContent2 carouselFinishedSent];

      if ((carouselFinishedSent & 1) == 0)
      {
        transientContent3 = [contentCopy transientContent];
        [transientContent3 carouselVisibleTime];
        v24 = v23;

        v25 = floor(v24 * 10.0 + 0.5) / 10.0;
        if (v25 <= 30.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 30.0;
        }

        v27 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:screenCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];
        [(APLogSysEventRequester *)v27 setEventType:908];
        logMetadata = [(APLegacyMetricRequester *)v27 logMetadata];
        [logMetadata setTimeSinceAppResume:v26];

        transientContent4 = [contentCopy transientContent];
        carouselElementsVisible = [transientContent4 carouselElementsVisible];

        if (!carouselElementsVisible)
        {
          v30 = APLogForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            content = [contentCopy content];
            identifier = [content identifier];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = identifier;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "carouselElementsVisible is nil for content %{public}@", &buf, 0xCu);
          }
        }

        transientContent5 = [contentCopy transientContent];
        carouselElementsPartiallyVisible = [transientContent5 carouselElementsPartiallyVisible];

        if (!carouselElementsPartiallyVisible)
        {
          v34 = APLogForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            content2 = [contentCopy content];
            identifier2 = [content2 identifier];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = identifier2;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "carouselElementsPartiallyVisible is nil for content %{public}@", &buf, 0xCu);
          }
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v68 = 0x3032000000;
        v69 = sub_1002D144C;
        v70 = sub_1002D145C;
        v71 = objc_alloc_init(NSMutableData);
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1002D5F48;
        v64[3] = &unk_10047D818;
        v64[4] = &buf;
        v57 = objc_retainBlock(v64);
        if (carouselElementsVisible)
        {
          [carouselElementsVisible enumerateObjectsUsingBlock:v57];
          v37 = [*(*(&buf + 1) + 40) copy];
          logMetadata2 = [(APLegacyMetricRequester *)v27 logMetadata];
          [logMetadata2 setTiltStationBlob:v37];

          logMetadata3 = [(APLegacyMetricRequester *)v27 logMetadata];
          tiltStationBlob = [logMetadata3 tiltStationBlob];
          LODWORD(logMetadata2) = tiltStationBlob == 0;

          if (logMetadata2)
          {
            v41 = APLogForCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              content3 = [contentCopy content];
              identifier3 = [content3 identifier];
              *v65 = 138543362;
              v66 = identifier3;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "tiltStationBlob is nil for content %{public}@", v65, 0xCu);
            }
          }
        }

        v44 = objc_alloc_init(NSMutableData);
        v45 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v44;

        if (carouselElementsPartiallyVisible)
        {
          [carouselElementsPartiallyVisible enumerateObjectsUsingBlock:v57];
          logMetadata4 = [(APLegacyMetricRequester *)v27 logMetadata];
          v47 = [*(*(&buf + 1) + 40) copy];
          [logMetadata4 addTiltTrackBlob:v47];

          logMetadata5 = [(APLegacyMetricRequester *)v27 logMetadata];
          tiltTrackBlobs = [logMetadata5 tiltTrackBlobs];
          LODWORD(v47) = tiltTrackBlobs == 0;

          if (v47)
          {
            v50 = APLogForCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              content4 = [contentCopy content];
              identifier4 = [content4 identifier];
              *v65 = 138543362;
              v66 = identifier4;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "tiltTrackBlobs is nil for content after checking partially visible cells %{public}@", v65, 0xCu);
            }
          }
        }

        v53 = 30.0;
        if (+[APSystemInternal isAppleInternalInstall])
        {
          v54 = +[NSProcessInfo processInfo];
          isRunningTests = [v54 isRunningTests];

          if (isRunningTests)
          {
            v53 = 1.0;
          }

          else
          {
            v53 = 30.0;
          }
        }

        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1002D5F94;
        v61[3] = &unk_10047D840;
        v62 = contentCopy;
        v63 = v53;
        [(APMetricsLegacyInterface *)self sendLegacyMetricWithDelay:v27 legacyMetric:v61 requestSentHandler:v53];

        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
    }
  }

  return 0;
}

- (id)_unconfirmedImpressionRequest:(id)request internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  accountCopy = account;
  infoCopy = info;
  contextCopy = context;
  contentCopy = content;
  requestCopy = request;
  v16 = [(APLegacyMetricRequester *)[APLogImpressionRequester alloc] initWithMetric:requestCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];

  [(APLogImpressionRequester *)v16 setType:1];

  return v16;
}

- (id)_confirmedImpressionRequest:(id)request internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account forClickInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  requestCopy = request;
  contentCopy = content;
  contextCopy = context;
  infoCopy = info;
  accountCopy = account;
  if ([contentCopy canSendImpression:interactionCopy])
  {
    [contentCopy confirmImpression];
    v18 = [(APLegacyMetricRequester *)[APLogImpressionRequester alloc] initWithMetric:requestCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];
    [(APLogImpressionRequester *)v18 setType:2];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_confirmed50PercentImpressionRequest:(id)request internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account forClickInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  requestCopy = request;
  contentCopy = content;
  contextCopy = context;
  infoCopy = info;
  accountCopy = account;
  if ([contentCopy canSend50PercentImpression:interactionCopy])
  {
    [contentCopy confirm50PercentImpression];
    v18 = [(APLegacyMetricRequester *)[APLogImpressionRequester alloc] initWithMetric:requestCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];
    [(APLogImpressionRequester *)v18 setType:3];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)handleLoadFailed:(id)failed internalContent:(id)content context:(id)context idAccount:(id)account
{
  failedCopy = failed;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  transientContent = metricPropertyValue(failedCopy, 0x32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_6;
  }

  v14 = metricPropertyValue(failedCopy, 0x32);
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue && [contentCopy shouldSendAdSpaceStatusEvent:8])
  {
    [contentCopy loadFailed];
    v16 = [[APAdSpaceEventRequester alloc] initWithMetric:failedCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
    transientContent = [contentCopy transientContent];
    -[APAdSpaceEventRequester setStatusCode:](v16, "setStatusCode:", [transientContent lastStatusCode]);
LABEL_6:

    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (id)handleVideoMetric:(id)metric internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  metricCopy = metric;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  infoCopy = info;
  privateContent = [contentCopy privateContent];
  if ([(APAdSpaceEventRequester *)privateContent isPrerollVideo])
  {
    if ([metricCopy metric] == 1600)
    {
    }

    else
    {
      metric = [metricCopy metric];

      if (metric != 2503)
      {
        goto LABEL_11;
      }
    }

    if ([metricCopy metric] == 1600)
    {
      v19 = 3000;
    }

    else
    {
      v19 = 3013;
    }

    if (![contentCopy shouldSendAdSpaceStatusEvent:v19])
    {
      goto LABEL_11;
    }

    privateContent = [[APAdSpaceEventRequester alloc] initWithMetric:metricCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
    [(APAdSpaceEventRequester *)privateContent setStatusCode:v19];
    [(APMetricsLegacyInterface *)self sendLegacyMetric:privateContent];
  }

LABEL_11:
  v20 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:metricCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];

  return v20;
}

- (id)handlePrivacyAdMetric:(id)metric internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  accountCopy = account;
  infoCopy = info;
  contextCopy = context;
  contentCopy = content;
  metricCopy = metric;
  v16 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:metricCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];

  [(APLogSysEventRequester *)v16 setEventType:900];

  return v16;
}

- (id)handleValidationFailed:(id)failed internalContent:(id)content context:(id)context idAccount:(id)account
{
  failedCopy = failed;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  v14 = [APServerErrorRequester alloc];
  content = [contentCopy content];
  error = [content error];
  v17 = [(APServerErrorRequester *)v14 initWithMetric:failedCopy internalContent:contentCopy context:contextCopy idAccount:accountCopy error:error];

  [(APMetricsLegacyInterface *)self sendLegacyMetric:v17];
  if ([contentCopy shouldSendAdSpaceStatusEvent:9])
  {
    v18 = [[APAdSpaceEventRequester alloc] initWithMetric:failedCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
    [(APAdSpaceEventRequester *)v18 setStatusCode:9];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)handleDaemonRequestFailed:(id)failed internalContent:(id)content context:(id)context idAccount:(id)account
{
  failedCopy = failed;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  v14 = metricPropertyValue(failedCopy, 4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v17 = -1;
LABEL_6:
    v23 = APLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = 134217984;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unexpected APJourneyMetricRequestFailedReasonCode: %ld", &v25, 0xCu);
    }

    goto LABEL_9;
  }

  v15 = metricPropertyValue(failedCopy, 4);
  intValue = [v15 intValue];

  if (intValue != 3300)
  {
    v17 = intValue;
    if ((intValue - 3303) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = [APServerErrorRequester alloc];
      content = [contentCopy content];
      error = [content error];
      v21 = [(APServerErrorRequester *)v18 initWithMetric:failedCopy internalContent:contentCopy context:contextCopy idAccount:accountCopy error:error];

      [(APMetricsLegacyInterface *)self sendLegacyMetric:v21];
      v22 = [[APAdSpaceEventRequester alloc] initWithMetric:failedCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
      [(APAdSpaceEventRequester *)v22 setStatusCode:1];

      goto LABEL_10;
    }

    goto LABEL_6;
  }

LABEL_9:
  v22 = 0;
LABEL_10:

  return v22;
}

- (id)handleArticleLoadFailure:(id)failure internalContent:(id)content context:(id)context idAccount:(id)account
{
  failureCopy = failure;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  if ([contentCopy shouldSendAdSpaceStatusEvent:3012])
  {
    v13 = [[APAdSpaceEventRequester alloc] initWithMetric:failureCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
    [(APAdSpaceEventRequester *)v13 setStatusCode:3012];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)handleMediaComplete:(id)complete internalContent:(id)content context:(id)context clientInfo:(id)info idAccount:(id)account
{
  completeCopy = complete;
  contentCopy = content;
  contextCopy = context;
  infoCopy = info;
  accountCopy = account;
  privateContent = [contentCopy privateContent];
  if ([privateContent isVideo])
  {
    content = [contentCopy content];
    serverUnfilledReason = [content serverUnfilledReason];

    if (!serverUnfilledReason)
    {
      v19 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:completeCopy internalContent:contentCopy andContext:contextCopy clientInfo:infoCopy idAccount:accountCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_6:

  return v19;
}

- (void)trackTimeSpent:(id)spent internalContent:(id)content
{
  spentCopy = spent;
  contentCopy = content;
  content = [contentCopy content];
  representations = [content representations];
  v9 = [representations count];

  if (v9)
  {
    content2 = [contentCopy content];
    getRepresentation = [content2 getRepresentation];
    journeyRelayLineId = [getRepresentation journeyRelayLineId];

    contentIdentifier2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    enableAggregatedTimespent = [contentIdentifier2 enableAggregatedTimespent];

    if (enableAggregatedTimespent)
    {
      enableAggregatedTimespent2 = [contentIdentifier2 enableAggregatedTimespent];
      bOOLValue = [enableAggregatedTimespent2 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    transientContent = [contentCopy transientContent];
    [transientContent timeSpent];
    v19 = v18;

    content3 = [contentCopy content];
    if (![content3 serverUnfilledReason] && objc_msgSend(contentCopy, "hasConfirmed50PercentImpression") && journeyRelayLineId)
    {
      v25 = v19;
      transientContent2 = [contentCopy transientContent];
      [transientContent2 timeSpent];
      v28 = v27;
      content4 = [contentCopy content];
      [content4 impressionThreshold];
      v32 = v28 >= v30 && v25 > 0;
      v33 = v32 & bOOLValue;

      if (v33 == 1)
      {
        v34 = [_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase alloc];
        v35 = +[APDatabaseManager mainDatabase];
        v23 = [(AggregatedTimeSpentStoreDatabase *)v34 initWithDatabase:v35];

        +[APTimestampUtilities midnightUTCOfCurrentDay];
        v24 = [NSDate dateWithTimeIntervalSince1970:?];
        bundleIdentifier = [spentCopy bundleIdentifier];
        v37 = [(AggregatedTimeSpentStoreDatabase *)v23 storeEntryWithLineID:journeyRelayLineId durationInSeconds:v25 eventTimestamp:v24 clientIdentifier:bundleIdentifier];

        if (v37)
        {
          [contentCopy resetTimeSpent];
        }

        else
        {
          v38 = APLogForCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            contentIdentifier = [spentCopy contentIdentifier];
            v40 = 138543618;
            v41 = contentIdentifier;
            v42 = 2114;
            v43 = journeyRelayLineId;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to store accumulated visibility time for contentData %{public}@ to line identifier %{public}@", &v40, 0x16u);
          }
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    if ((bOOLValue & 1) == 0)
    {
      v21 = [_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase alloc];
      v22 = +[APDatabaseManager mainDatabase];
      v23 = [(AggregatedTimeSpentStoreDatabase *)v21 initWithDatabase:v22];

      if ([(AggregatedTimeSpentStoreDatabase *)v23 removeAllEntries])
      {
LABEL_28:

        goto LABEL_29;
      }

      v24 = APLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove all entries", &v40, 2u);
      }

LABEL_27:

      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  journeyRelayLineId = APLogForCategory();
  if (os_log_type_enabled(journeyRelayLineId, OS_LOG_TYPE_ERROR))
  {
    contentIdentifier2 = [spentCopy contentIdentifier];
    v40 = 138543362;
    v41 = contentIdentifier2;
    _os_log_impl(&_mh_execute_header, journeyRelayLineId, OS_LOG_TYPE_ERROR, "No representations found for contentData %{public}@", &v40, 0xCu);
    goto LABEL_29;
  }

LABEL_30:
}

- (id)handleSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v4 = [APLogSubscriptionEventRequester alloc];
  bundleIdentifier = [subscriptionCopy bundleIdentifier];
  v6 = [(APLogSubscriptionEventRequester *)v4 initWithMetric:subscriptionCopy bundleID:bundleIdentifier];

  return v6;
}

- (BOOL)handleExpandedPlaceholderWithUnfilledReason:(int)reason metric:(id)metric internalContent:(id)content context:(id)context idAccount:(id)account
{
  metricCopy = metric;
  contentCopy = content;
  contextCopy = context;
  accountCopy = account;
  internalProperties = [metricCopy internalProperties];
  v17 = [internalProperties objectForKeyedSubscript:@"type"];

  v18 = 0;
  if (reason == 3001 && v17)
  {
    if ([v17 intValue] == 3)
    {
      transientContent = [contentCopy transientContent];
      hasBeenOnScreen = [transientContent hasBeenOnScreen];

      if (hasBeenOnScreen)
      {
        v21 = APLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          content = [contentCopy content];
          identifier = [content identifier];
          v26 = 138543362;
          v27 = identifier;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not queuing delayed AdNotAvailable ASE for content %{public}@, it has previously been on screen.", &v26, 0xCu);
        }
      }

      else
      {
        [contentCopy appearedOnScreenWithStatus:3001];
        v24 = [[APAdSpaceEventRequester alloc] initWithMetric:metricCopy internalContent:contentCopy andContext:contextCopy idAccount:accountCopy];
        [(APAdSpaceEventRequester *)v24 setStatusCode:3001];
        [(APMetricsLegacyInterface *)self sendLegacyMetricWithDelay:v24 legacyMetric:&stru_10047D880 requestSentHandler:2.0];
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

@end