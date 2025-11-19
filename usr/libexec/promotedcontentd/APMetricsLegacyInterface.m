@interface APMetricsLegacyInterface
- (APMetricsLegacyInterface)init;
- (APMetricsLegacyInterface)initWithRetryManager:(id)a3;
- (APMetricsLegacyInterface)initWithRetryManager:(id)a3 databaseManager:(id)a4;
- (APVisibilityCheckFlag)visibleFlag;
- (BOOL)handleExpandedPlaceholderWithUnfilledReason:(int)a3 metric:(id)a4 internalContent:(id)a5 context:(id)a6 idAccount:(id)a7;
- (BOOL)shouldIgnoreMetric:(id)a3;
- (id)_confirmed50PercentImpressionRequest:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7 forClickInteraction:(BOOL)a8;
- (id)_confirmedImpressionRequest:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7 forClickInteraction:(BOOL)a8;
- (id)_unconfirmedImpressionRequest:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)aggregatedTimeSpentProcessor;
- (id)baseHandleInterfaceOnScreen:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleArticleLoadFailure:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleClientDiscarded:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleDaemonRequestFailed:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleInterfaceExceededContainer:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleInterfaceInteracted:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)handleInterfaceOffScreen:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)handleInterfaceOnScreen:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleInterfaceReady:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)handleInterfaceReplaced:(id)a3 metricEnvironment:(id)a4;
- (id)handleInterfaceVisible:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)handleLoadFailed:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleMediaComplete:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)handlePrivacyAdMetric:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)handleQuickReturn:(id)a3 internalContent:(id)a4 context:(id)a5;
- (id)handleSubscription:(id)a3;
- (id)handleValidationFailed:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6;
- (id)handleVideoMetric:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (id)pendingRequestsForContent:(id)a3 filterPredicate:(id)a4;
- (void)processMetric:(id)a3 environmentProvider:(id)a4;
- (void)removeDelayedRequest:(id)a3 cancel:(BOOL)a4;
- (void)sendLegacyMetric:(id)a3;
- (void)sendLegacyMetricWithDelay:(double)a3 legacyMetric:(id)a4 requestSentHandler:(id)a5;
- (void)trackTimeSpent:(id)a3 internalContent:(id)a4;
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
    v4 = [v3 isRunningTests];

    if ((v4 & 1) == 0)
    {
      v5 = objc_alloc_init(APLegacyMetricRetryManager);
      v2 = [(APMetricsLegacyInterface *)v2 initWithRetryManager:v5];
    }
  }

  return v2;
}

- (APMetricsLegacyInterface)initWithRetryManager:(id)a3
{
  v4 = a3;
  v5 = +[APDatabaseManager mainDatabase];
  v6 = [(APMetricsLegacyInterface *)self initWithRetryManager:v4 databaseManager:v5];

  return v6;
}

- (APMetricsLegacyInterface)initWithRetryManager:(id)a3 databaseManager:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_metricRetryManager, a3);
    [(APLegacyMetricRetryManagerProtocol *)v9->_metricRetryManager start];
    objc_storeStrong(&v9->_databaseManager, a4);
  }

  return v9;
}

- (id)aggregatedTimeSpentProcessor
{
  v3 = [APAggregatedTimeSpentLegacyInterface alloc];
  v4 = [(APMetricsLegacyInterface *)self databaseManager];
  v5 = [(APMetricsLegacyInterface *)self metricRetryManager];
  v6 = [(APAggregatedTimeSpentLegacyInterface *)v3 initWithDbManager:v4 retryManager:v5];

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

- (void)sendLegacyMetric:(id)a3
{
  v4 = a3;
  v5 = [(APMetricsLegacyInterface *)self metricRetryManager];
  [v4 setRetryManager:v5];

  v6 = [v4 internalContent];
  [v6 eventSent];

  objc_initWeak(&location, self);
  v7 = os_transaction_create();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002D1100;
  v10[3] = &unk_10047D6A8;
  objc_copyWeak(&v13, &location);
  v8 = v4;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [v8 makeRequest:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)sendLegacyMetricWithDelay:(double)a3 legacyMetric:(id)a4 requestSentHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 metric];
    *buf = 134218242;
    *&buf[4] = a3;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Delaying send of metric by %.2f seconds for metric:\n%{public}@", buf, 0x16u);
  }

  v12 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [v12 lock];

  v13 = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
  v14 = [v8 requestIdentifier];
  [v13 setObject:v8 forKey:v14];

  v15 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [v15 unlock];

  v16 = [(APMetricsLegacyInterface *)self metricRetryManager];
  [v8 setRetryManager:v16];

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
  v23 = v8;
  v25 = buf;
  v17 = v9;
  v24 = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002D150C;
  v19[3] = &unk_10047D6F8;
  v19[4] = self;
  v18 = v23;
  v20 = v18;
  v21 = buf;
  [v18 makeDelayedRequest:v22 requestSentHandler:v19 responseCallback:a3];

  _Block_object_dispose(buf, 8);
}

- (void)removeDelayedRequest:(id)a3 cancel:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [v6 lock];

  if (v4)
  {
    v7 = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
    v8 = [v7 objectForKeyedSubscript:v11];

    [v8 cancelDelayedRequest];
  }

  v9 = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
  [v9 removeObjectForKey:v11];

  v10 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [v10 unlock];
}

- (id)pendingRequestsForContent:(id)a3 filterPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [v8 lock];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1002D144C;
  v23 = sub_1002D145C;
  v24 = 0;
  v9 = [(APMetricsLegacyInterface *)self pendingDelayedRequests];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002D1820;
  v15[3] = &unk_10047D720;
  v10 = v6;
  v16 = v10;
  v18 = &v19;
  v11 = v7;
  v17 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];

  v12 = [(APMetricsLegacyInterface *)self delayedRequestLock];
  [v12 unlock];

  v13 = [v20[5] copy];
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)processMetric:(id)a3 environmentProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APMetricsLegacyInterface *)self shouldIgnoreMetric:v6];
  v9 = APLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = [v6 bundleIdentifier];
      *buf = 138412290;
      v79 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Ignoring metric from client %@", buf, 0xCu);
    }

    goto LABEL_112;
  }

  if (v10)
  {
    v12 = [v6 metric];
    v13 = [v6 handle];
    v14 = [v6 contentIdentifier];
    *buf = 134218498;
    v79 = v12;
    v80 = 2114;
    v81 = v13;
    v82 = 2114;
    v83 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received metric %ld with ID %{public}@ for adOpID %{public}@ from PCCD", buf, 0x20u);
  }

  v15 = metricPropertyValue(v6, 0x13);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = metricPropertyValue(v6, 0x13);
    v17 = [v16 BOOLValue];

    if (!v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = [v6 contentIdentifier];
    v19 = [APContentDataInternal isPlaceholderIdentifier:v18];

    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v6 metric] == 1405 || objc_msgSend(v6, "metric") == 1202)
  {
LABEL_12:
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1002D27F0;
    v75[3] = &unk_10047D748;
    v77 = v7;
    v20 = v6;
    v76 = v20;
    v21 = objc_retainBlock(v75);
    if ([v20 purpose] == 100)
    {
      v22 = [v20 metric];
      v9 = 0;
      if (v22 > 1406)
      {
        if (v22 <= 1599)
        {
          if (v22 <= 1409)
          {
            if (v22 == 1407)
            {
              v55 = (v21[2])(v21);
              if (v55)
              {
                v24 = v55;
                v74 = v21;
                v25 = [v55 internalContent];
                v26 = [v24 context];
                v27 = [v24 clientInfo];
                v28 = [v24 idAccount];
                v29 = [(APMetricsLegacyInterface *)self handleInterfaceOffScreen:v20 internalContent:v25 context:v26 clientInfo:v27 idAccount:v28];
                goto LABEL_79;
              }
            }

            else if (v22 == 1408)
            {
              v54 = (v21[2])(v21);
              if (v54)
              {
                v24 = v54;
                v74 = v21;
                v25 = [v54 internalContent];
                v26 = [v24 context];
                v27 = [v24 clientInfo];
                v28 = [v24 idAccount];
                v29 = [(APMetricsLegacyInterface *)self handleInterfaceInteracted:v20 internalContent:v25 context:v26 clientInfo:v27 idAccount:v28];
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
                v37 = [v48 internalContent];
                v38 = [v24 context];
                v9 = [(APMetricsLegacyInterface *)self handleQuickReturn:v20 internalContent:v37 context:v38];
                goto LABEL_86;
              }
            }

            goto LABEL_109;
          }

          if ((v22 - 1410) < 2)
          {
            goto LABEL_92;
          }
        }

        else if ((v22 - 1600) <= 9 && v22 != 1601)
        {
          v36 = (v21[2])(v21);
          if (v36)
          {
            v24 = v36;
            v74 = v21;
            v37 = [v36 internalContent];
            v38 = [v24 context];
            v39 = [v24 clientInfo];
            v40 = [v24 idAccount];
            v9 = [(APMetricsLegacyInterface *)self handleVideoMetric:v20 internalContent:v37 context:v38 clientInfo:v39 idAccount:v40];

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

      else if (v22 <= 1201)
      {
        if (v22 > 1003)
        {
          switch(v22)
          {
            case 1004:
              v57 = (v21[2])(v21);
              if (v57)
              {
                v24 = v57;
                v74 = v21;
                v37 = [v57 internalContent];
                v38 = [v24 context];
                v39 = [v24 idAccount];
                v51 = [(APMetricsLegacyInterface *)self handleDaemonRequestFailed:v20 internalContent:v37 context:v38 idAccount:v39];
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
                v37 = [v50 internalContent];
                v38 = [v24 context];
                v39 = [v24 idAccount];
                v51 = [(APMetricsLegacyInterface *)self handleClientDiscarded:v20 internalContent:v37 context:v38 idAccount:v39];
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

        else if ((v22 - 1000) < 4)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v22 > 1401)
        {
          if (v22 <= 1404)
          {
            if ((v22 - 1402) >= 2)
            {
              if (v22 == 1404)
              {
                v23 = (v21[2])(v21);
                if (v23)
                {
                  v24 = v23;
                  v74 = v21;
                  v25 = [v23 internalContent];
                  v26 = [v24 context];
                  v27 = [v24 clientInfo];
                  v28 = [v24 idAccount];
                  v29 = [(APMetricsLegacyInterface *)self handleInterfaceReady:v20 internalContent:v25 context:v26 clientInfo:v27 idAccount:v28];
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
              v63 = [v20 metric];
              v64 = [v20 contentIdentifier];
              *buf = 134218242;
              v79 = v63;
              v80 = 2114;
              v81 = v64;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Metric %ld for content %{public}@ does not send a metric request.", buf, 0x16u);
            }

            v65 = 0;
            goto LABEL_111;
          }

          if (v22 != 1405)
          {
            v53 = (v21[2])(v21);
            if (v53)
            {
              v24 = v53;
              v74 = v21;
              v25 = [v53 internalContent];
              v26 = [v24 context];
              v27 = [v24 clientInfo];
              v28 = [v24 idAccount];
              v29 = [(APMetricsLegacyInterface *)self handleInterfaceVisible:v20 internalContent:v25 context:v26 clientInfo:v27 idAccount:v28];
              goto LABEL_79;
            }

            goto LABEL_109;
          }

          v56 = (v21[2])(v21);
          if (v56)
          {
            v24 = v56;
            v74 = v21;
            v37 = [v56 internalContent];
            v38 = [v24 context];
            v39 = [v24 idAccount];
            v51 = [(APMetricsLegacyInterface *)self handleInterfaceOnScreen:v20 internalContent:v37 context:v38 idAccount:v39];
            goto LABEL_84;
          }

          goto LABEL_109;
        }

        if (v22 == 1202 || v22 == 1400)
        {
          goto LABEL_92;
        }

        if (v22 == 1401)
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
        v59 = [v20 metric];
        v60 = [v20 contentIdentifier];
        v61 = [v20 bundleIdentifier];
        *buf = 134218498;
        v79 = v59;
        v80 = 2114;
        v81 = v60;
        v82 = 2114;
        v83 = v61;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Ignoring metric %ld for Content %{public}@ received from %{public}@", buf, 0x20u);
      }

      goto LABEL_91;
    }

    if ([v20 purpose] == 101)
    {
      v30 = [v20 metric];
      if (v30 != 2503)
      {
        if (v30 == 2501)
        {
          v31 = (v21[2])(v21);
          if (!v31)
          {
            goto LABEL_109;
          }

          v24 = v31;
          v74 = v21;
          v25 = [v31 internalContent];
          v32 = [v24 context];
          v33 = [v24 idAccount];
          v34 = [(APMetricsLegacyInterface *)self handleLoadFailed:v20 internalContent:v25 context:v32 idAccount:v33];
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
      v25 = [v49 internalContent];
      v32 = [v24 context];
      v33 = [v24 clientInfo];
      v46 = [v24 idAccount];
      v47 = [(APMetricsLegacyInterface *)self handleVideoMetric:v20 internalContent:v25 context:v32 clientInfo:v33 idAccount:v46];
LABEL_54:
      v9 = v47;

LABEL_100:
      goto LABEL_101;
    }

    if ([v20 purpose] == -1)
    {
      v44 = [v20 metric];
      v9 = 0;
      if (v44 > 77003)
      {
        if (v44 != 77004)
        {
          if (v44 == 77005)
          {
            v68 = (v21[2])(v21);
            if (!v68)
            {
              goto LABEL_109;
            }

            v69 = v68;
            v70 = [v68 internalContent];
            v71 = [v69 context];
            v72 = [v69 idAccount];
            v9 = [(APMetricsLegacyInterface *)self handleInterstitialOnScreen:v20 internalContent:v70 context:v71 idAccount:v72];
          }

          else if (v44 != 77006)
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
          v25 = [v73 internalContent];
          [(APMetricsLegacyInterface *)self trackTimeSpent:v20 internalContent:v25];
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
        v25 = [v67 internalContent];
        v32 = [v24 context];
        v33 = [v24 idAccount];
        v34 = [(APMetricsLegacyInterface *)self handleInterfaceExceededContainer:v20 internalContent:v25 context:v32 idAccount:v33];
        goto LABEL_99;
      }

      if (v44 != 77001)
      {
        if (v44 == 77002)
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

        if (v44 != 77003)
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
        v25 = [v45 internalContent];
        v32 = [v24 context];
        v33 = [v24 clientInfo];
        v46 = [v24 idAccount];
        v47 = [(APMetricsLegacyInterface *)self handleMediaComplete:v20 internalContent:v25 context:v32 clientInfo:v33 idAccount:v46];
        goto LABEL_54;
      }

      v66 = (v21[2])(v21);
      if (!v66)
      {
        goto LABEL_109;
      }

      v24 = v66;
      v74 = v21;
      v25 = [v66 internalContent];
      v32 = [v24 context];
      v33 = [v24 idAccount];
      v34 = [(APMetricsLegacyInterface *)self handleArticleLoadFailure:v20 internalContent:v25 context:v32 idAccount:v33];
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
      v25 = [v35 internalContent];
      v32 = [v24 context];
      v33 = [v24 idAccount];
      v34 = [(APMetricsLegacyInterface *)self handleValidationFailed:v20 internalContent:v25 context:v32 idAccount:v33];
    }

LABEL_99:
    v9 = v34;
    goto LABEL_100;
  }

  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v41 = [v6 metric];
    v42 = [v6 contentIdentifier];
    v43 = [v6 contextIdentifier];
    *buf = 134218498;
    v79 = v41;
    v80 = 2114;
    v81 = v42;
    v82 = 2114;
    v83 = v43;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "A placeholder APContentData is reporting metric %ld and will not be processed. content: %{public}@ context: %{public}@.", buf, 0x20u);
  }

LABEL_112:
}

- (BOOL)shouldIgnoreMetric:(id)a3
{
  v4 = a3;
  v5 = [(APMetricsLegacyInterface *)self bundleIdentifierAllowList];
  v6 = [v4 bundleIdentifier];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4 ^ 1;
}

- (id)handleClientDiscarded:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 properties];
  v14 = [v13 objectForKeyedSubscript:@"code"];

  if (v14)
  {
    v15 = [v14 intValue];
    v16 = 0;
    v17 = 0xFFFFFFFFLL;
    if (v15 > 2602)
    {
      if (v15 == 2603)
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
        if (v15 == 2604)
        {
          v16 = 0;
          v18 = 0;
          v19 = 0;
          v17 = 3010;
          v20 = 1;
        }
      }
    }

    else if (v15 == 2601)
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
      if (v15 == 2602)
      {
        v16 = 0;
        v19 = 0;
        v20 = 0;
        v17 = 3008;
        v18 = 1;
      }
    }

    v42 = v17;
    v41 = v15;
    v24 = APLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      [v10 content];
      v25 = v39 = v19;
      [v25 identifier];
      v40 = v18;
      v26 = v14;
      v27 = v12;
      v28 = v10;
      v29 = v9;
      v31 = v30 = v11;
      *buf = 138543618;
      v45 = v31;
      v46 = 2048;
      v47 = v41;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Content %{public}@ is being discarded with reason code %ld.", buf, 0x16u);

      v11 = v30;
      v9 = v29;
      v10 = v28;
      v12 = v27;
      v14 = v26;
      v18 = v40;

      v19 = v39;
    }

    if ((v16 | v18 | v19 | v20) == 1)
    {
      v32 = APLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = v11;
        v34 = [v10 content];
        v35 = [v34 identifier];
        if ((v42 - 3000) >= 0xB)
        {
          v36 = [NSString stringWithFormat:@"(unknown: %i)", v42];
        }

        else
        {
          v36 = *(&off_10047D8A0 + (v42 - 3000));
        }

        *buf = 138543874;
        v45 = v35;
        v46 = 2114;
        v47 = v36;
        v48 = 2048;
        v49 = v41;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Content %{public}@ is allowed to send %{public}@ for discard code %ld.", buf, 0x20u);

        v11 = v33;
      }

      v37 = [[APAdSpaceEventRequester alloc] initWithMetric:v9 internalContent:v10 andContext:v11 idAccount:v12];
      [(APAdSpaceEventRequester *)v37 setStatusCode:v42];
      [(APMetricsLegacyInterface *)self sendLegacyMetric:v37];
    }

    [v10 discarded];
  }

  else
  {
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v10 content];
      v23 = [v22 identifier];
      *buf = 138543362;
      v45 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Content %{public}@ is reporting clientDiscarded with no discard code. No ASE sent.", buf, 0xCu);
    }
  }

  return 0;
}

- (id)handleInterfaceReady:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v12 = a4;
  v13 = [(APMetricsLegacyInterface *)self _unconfirmedImpressionRequest:a3 internalContent:v12 context:a5 clientInfo:a6 idAccount:a7];
  [v12 interfaceReady];

  return v13;
}

- (id)handleInterfaceInteracted:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = metricPropertyValue(v11, 0x2F);
  objc_opt_class();
  v17 = -1.0;
  v18 = -1.0;
  if (objc_opt_isKindOfClass())
  {
    v19 = metricPropertyValue(v11, 0x2F);
    [v19 doubleValue];
    v18 = v20;
  }

  v21 = metricPropertyValue(v11, 0x30);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = metricPropertyValue(v11, 0x30);
    [v22 doubleValue];
    v17 = v23;
  }

  v24 = metricPropertyValue(v11, 9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = metricPropertyValue(v11, 9);
    v26 = [v25 intValue];
  }

  else
  {
    v26 = 0xFFFFFFFFLL;
  }

  v27 = metricPropertyValue(v11, 0x1A);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = metricPropertyValue(v11, 0x1A);
  }

  else
  {
    v28 = 0;
  }

  v29 = metricPropertyValue(v11, 0x29);
  objc_opt_class();
  v30 = v13;
  if (objc_opt_isKindOfClass())
  {
    metricPropertyValue(v11, 0x29);
    v32 = v31 = v28;
    v33 = [v32 intValue];

    v28 = v31;
    v34 = v33 == 7302;
    v13 = v30;
    if (v34)
    {
      v35 = [(APMetricsLegacyInterface *)self handlePrivacyAdMetric:v11 internalContent:v12 context:v30 clientInfo:v14 idAccount:v15];
      goto LABEL_61;
    }
  }

  else
  {
  }

  v85 = v28;
  v86 = v14;
  if (!v28)
  {
    v36 = APLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = [v12 content];
      v40 = [v39 identifier];
      *buf = 138543618;
      v91 = v40;
      v92 = 2114;
      v93 = v11;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "RepresentationIdentifier missing for content %{public}@ in metric %{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v36 = [[NSUUID alloc] initWithUUIDString:v28];
  if (v36)
  {
    v37 = [v12 content];
    v38 = [v37 representationWithIdentifier:v36];

    if (v38)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v41 = APLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [v12 content];
      v43 = [v42 identifier];
      *buf = 138543618;
      v91 = v85;
      v92 = 2114;
      v93 = v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Representation %{public}@ for content %{public}@ is not a valid UUID.", buf, 0x16u);

      v13 = v30;
    }
  }

  v44 = [v12 content];
  v38 = [v44 getRepresentation];

  if (!v38)
  {
LABEL_28:

    v46 = -1.0;
    v48 = -1.0;
    goto LABEL_29;
  }

LABEL_26:
  [v38 size];
  v46 = v18 * v45;
  [v38 size];
  v48 = v17 * v47;
  v49 = [v38 tapAction];

  if (!v49)
  {
LABEL_29:
    v51 = v86;
    v52 = APLogForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [v12 content];
      v54 = [v53 identifier];
      *buf = 138543618;
      v91 = v85;
      v92 = 2114;
      v93 = v54;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Representation %{public}@ in content %{public}@ has no tap action.", buf, 0x16u);

      v13 = v30;
    }

    v83 = 0;
    v50 = 1;
    goto LABEL_32;
  }

  v83 = v49;
  v50 = 0;
  v51 = v86;
LABEL_32:
  if (v46 < 0.0 || v48 < 0.0)
  {
    v46 = 0.0;
    v48 = 0.0;
  }

  v55 = [v12 privateContent];
  v56 = [v55 isCarouselAd];

  if (v56)
  {
    [v12 carouselElementClicked:v26 element:{v46, v48}];
  }

  else
  {
    [v12 clicked:{v46, v48}];
  }

  v57 = [(APMetricsLegacyInterface *)self _confirmedImpressionRequest:v11 internalContent:v12 context:v13 clientInfo:v51 idAccount:v15 forClickInteraction:1];
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

  v84 = v15;
  v59 = [(APMetricsLegacyInterface *)self _confirmed50PercentImpressionRequest:v11 internalContent:v12 context:v13 clientInfo:v51 idAccount:v15 forClickInteraction:1];
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

  v61 = [(APMetricsLegacyInterface *)self confirmedClickLock];
  [v61 lock];

  v62 = [v12 transientContent];
  v63 = [v62 pendingConfirmedClick];

  v64 = [v12 transientContent];
  v65 = [v64 hasConfirmedClick];

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

    if (v63)
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
    if (!v65)
    {
      v67 = @"NO";
    }

    v94 = 2114;
    v95 = v67;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Action exists: %{public}@, pending confirmed click: %{public}@, confirmed click: %{public}@", buf, 0x20u);
  }

  v81 = v59;
  v82 = v57;
  if ((v50 | v63 | v65))
  {
    v70 = [(APMetricsLegacyInterface *)self confirmedClickLock];
    [v70 unlock];

    v71 = APLogForCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      v72 = [v12 content];
      v73 = [v72 identifier];
      *buf = 138543362;
      v91 = v73;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%{public}@ already has a confirmed click or a pending confirmed click request. Not posting another one.", buf, 0xCu);
    }

    v28 = v85;
    v14 = v86;
    v74 = v83;
    v15 = v84;
  }

  else
  {
    v14 = v86;
    v15 = v84;
    v75 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:v11 internalContent:v12 andContext:v30 clientInfo:v86 idAccount:v84];
    [(APLogSysEventRequester *)v75 setEventType:6];
    v76 = [(APLegacyMetricRequester *)v75 internalContent];
    [v76 pendingConfirmedClick:1];

    v77 = [(APMetricsLegacyInterface *)self confirmedClickLock];
    [v77 unlock];

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

  v35 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:v11 internalContent:v12 andContext:v30 clientInfo:v14 idAccount:v15];
  [(APLogSysEventRequester *)v35 setEventType:1];

  v13 = v30;
LABEL_61:

  return v35;
}

- (id)handleQuickReturn:(id)a3 internalContent:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = metricPropertyValue(v7, 0x1B);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = metricPropertyValue(v7, 0x1B);
    v30 = [v10 intValue];

    if ((v30 - 8101) <= 4)
    {
      v29 = v7;
      v11 = [v8 content];
      v12 = [v11 identifier];
      v13 = [(APMetricsLegacyInterface *)self pendingRequestsForContent:v12 filterPredicate:&stru_10047D7B0];

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
              v21 = [v8 content];
              v22 = [v21 identifier];
              *buf = 138412802;
              v36 = v19;
              v37 = 2112;
              v38 = v22;
              v39 = 2048;
              v40 = v30;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Cancelling LogSysEventRequest %@ for content %@ due to quick return time %lu.", buf, 0x20u);
            }

            [v19 cancelDelayedRequest];
            v23 = [(APMetricsLegacyInterface *)self confirmedClickLock];
            [v23 lock];

            v24 = [v19 internalContent];
            [v24 pendingConfirmedClick:0];

            v25 = [(APMetricsLegacyInterface *)self confirmedClickLock];
            [v25 unlock];
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v16);
      }

      v7 = v29;
      goto LABEL_16;
    }
  }

  else
  {

    v30 = 10;
  }

  v14 = APLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v26 = [v8 content];
    v27 = [v26 identifier];
    *buf = 138412546;
    v36 = v27;
    v37 = 2048;
    v38 = v30;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ignoring quick return metric for content %@ due to quick return time %lu. Confirmed click was already sent.", buf, 0x16u);
  }

LABEL_16:

  return 0;
}

- (id)handleInterfaceOnScreen:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 internalProperties];
  v15 = [v14 objectForKeyedSubscript:@"type"];

  v16 = [v10 internalProperties];
  v17 = [v16 objectForKeyedSubscript:@"reason"];

  if ([v15 intValue] != 1)
  {
    goto LABEL_4;
  }

  v18 = [v11 content];
  if ([v18 serverUnfilledReason])
  {

LABEL_4:
    v19 = [(APMetricsLegacyInterface *)self baseHandleInterfaceOnScreen:v10 internalContent:v11 context:v12 idAccount:v13];
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

- (id)baseHandleInterfaceOnScreen:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11 || ([v11 content], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v10 contentIdentifier];
      *buf = 138543362;
      v104 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing required parameters to handle on screen for content identifier %{public}@!", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v15 = self;
  objc_sync_enter(v15);
  v16 = [v11 content];
  v17 = [v16 serverUnfilledReason];

  if ((v17 - 1021) <= 2)
  {
    objc_sync_exit(v15);

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v22 = [v10 properties];
  v23 = [v22 objectForKeyedSubscript:@"collapsed"];

  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v32 = [v10 contentIdentifier];
    v25 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ does not have a valid collapsed property %@.", v32, v23];

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

  v24 = [v10 internalProperties];
  v25 = [v24 objectForKeyedSubscript:@"placeholder"];

  if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = [v10 contentIdentifier];
    v97 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ does not have a valid placeholder value %@.", v34, v25];

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

  v89 = [v23 BOOLValue];
  v87 = [v25 BOOLValue];
  v26 = [v10 internalProperties];
  v97 = [v26 objectForKeyedSubscript:@"type"];

  if (v17 < 1)
  {
    v36 = [v11 transientContent];
    if ([v36 interfaceReady])
    {
    }

    else
    {
      v43 = [v11 privateContent];
      v94 = [v43 isClientRenderedAd];

      if ((v94 & 1) == 0)
      {
        if ((v89 & 1) == 0)
        {
          v38 = APLogForCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v67 = [v10 contentIdentifier];
            *buf = 138543362;
            v104 = v67;
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

    if (v89)
    {
      v44 = [v11 transientContent];
      v45 = [v44 interfaceReady];

      if (!v45)
      {
        v86 = [v10 contentIdentifier];
        if (v87)
        {
          v57 = @"YES";
        }

        else
        {
          v57 = @"NO";
        }

        v84 = v57;
        v96 = [v11 transientContent];
        v58 = [v96 interfaceReady];
        v59 = @"YES";
        if (!v58)
        {
          v59 = @"NO";
        }

        v83 = v59;
        v90 = [v11 privateContent];
        v60 = [v90 isClientRenderedAd];
        v61 = @"YES";
        if (!v60)
        {
          v61 = @"NO";
        }

        v82 = v61;
        v88 = [v11 privateContent];
        v62 = [v88 isNativeAd];
        v63 = @"YES";
        if (!v62)
        {
          v63 = @"NO";
        }

        v81 = v63;
        v85 = [v10 description];
        v64 = [v11 content];
        v65 = [v64 uniqueIdentifier];
        v38 = [NSString stringWithFormat:@"__O.[Diagnostic].OnScreen metric with content identifier %@ occurred without reporting an ASE. collapsed: %@ placeholder: %@ unfilled reason: %ld ready: %@ client rendered: %@ is Native ad: %@ metric: %@ ad identifier: %@", v86, @"YES", v84, v17, v83, v82, v81, v85, v65];

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

      v46 = [v10 internalProperties];
      v38 = [v46 objectForKeyedSubscript:@"reason"];

      if (v38 && [v38 count])
      {
        v47 = [v10 contentIdentifier];
        v48 = [NSString stringWithFormat:@"_OnScreen metric with content identifier %@ for placeholder is reporting AdNotAvailable (ASE 3001)!", v47];

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
          v77 = [v10 contentIdentifier];
          v78 = [NSString stringWithFormat:@"_OnScreen metric with content identifier %@ for sponsorship Ad is attempting to report onScreen but is collapsed.", v77];

          v79 = APLogForCategory();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v104 = v78;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          goto LABEL_99;
        }

        v80 = [v10 contentIdentifier];
        v92 = [NSString stringWithFormat:@"__*.[Diagnostic].3004 OnScreen metric with content identifier %@ is reporting on screen and ready but is still collapsed!", v80];

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

    v51 = [v11 privateContent];
    v52 = [v51 isPrerollVideo];

    if (!(v87 & 1 | ((v52 & 1) == 0)))
    {
LABEL_100:
      v20 = 0;
      goto LABEL_101;
    }

    v53 = 3000;
    goto LABEL_65;
  }

  v93 = [APLegacyTypeTranslator unfilledReasonCodeToASEStatusCode:v17];
  if (v93 == 3001)
  {
    v27 = 0;
  }

  else
  {
    v27 = v87;
  }

  if (v27 != 1)
  {
    v31 = v87 ^ 1;
    if ((v87 & 1) != 0 || v93 != 3001 || v17 == 1010)
    {
      goto LABEL_45;
    }

    v37 = [v10 contentIdentifier];
    v38 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ for non-placeholder that was not an unfilled network error is reporting AdNotAvailable (ASE 3001)! Instead is ASE %d Unfilled Reason: %ld", v37, 3001, v17];

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

  v28 = [v10 contentIdentifier];
  v29 = [NSString stringWithFormat:@"OnScreen metric with content identifier %@ for placeholder is not reporting AdNotAvailable (ASE 3001)! Instead is ASE: %d Unfilled Reason: %ld", v28, v93, v17];

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
  if (((v89 | v31) & 1) == 0)
  {
    if ([(APMetricsLegacyInterface *)v15 handleExpandedPlaceholderWithUnfilledReason:v93 metric:v10 internalContent:v11 context:v12 idAccount:v13])
    {
      v38 = APLogForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v41 = [v11 content];
        v42 = [v41 identifier];
        *buf = 138543362;
        v104 = v42;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Delaying ASE AdNotAvailable for preroll video placeholder %{public}@, waiting for preroll timeout before sending.", buf, 0xCu);
      }

      goto LABEL_99;
    }

    v95 = [v10 contentIdentifier];
    v54 = [v11 content];
    v55 = [v54 identifier];
    v38 = [NSString stringWithFormat:@"OnScreen metric %@ for expanded placeholder %@ with unfilled reason code %ld is in an unexpected state", v95, v55, v17];

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
  v68 = [v11 privateContent];
  v69 = [v68 isCarouselAd];

  if (v69)
  {
    v70 = [v11 content];
    v71 = [v70 identifier];
    v72 = [(APMetricsLegacyInterface *)v15 pendingRequestsForContent:v71 filterPredicate:&stru_10047D7D0];

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

  if (![v11 shouldSendAdSpaceStatusEvent:v93])
  {
    goto LABEL_100;
  }

  [v11 appearedOnScreenWithStatus:v93];
  v20 = [[APAdSpaceEventRequester alloc] initWithMetric:v10 internalContent:v11 andContext:v12 idAccount:v13];
  [(APAdSpaceEventRequester *)v20 setStatusCode:v93];
LABEL_101:

LABEL_102:
  objc_sync_exit(v15);

LABEL_9:

  return v20;
}

- (id)handleInterfaceExceededContainer:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  if (([v11 shouldSendAdSpaceStatusEvent:3005] & 1) != 0 || (objc_msgSend(v11, "transientContent"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasBeenOnScreen"), v15, (v16 & 1) == 0))
  {
    [v11 appearedOnScreenWithStatus:3005];
    v17 = [[APAdSpaceEventRequester alloc] initWithMetric:v10 internalContent:v11 andContext:v12 idAccount:v13];
    [(APAdSpaceEventRequester *)v17 setStatusCode:3005];
  }

  else
  {
    v17 = 0;
  }

  objc_sync_exit(v14);

  return v17;
}

- (id)handleInterfaceReplaced:(id)a3 metricEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = metricPropertyValue(v6, 0x14);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_25:
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v42 = [v6 contentIdentifier];
      *buf = 138543362;
      v59 = v42;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "InterfaceReplaced metric sent for content %{public}@ with no placeholder. Ignoring.", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v9 = metricPropertyValue(v6, 0x14);

  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v7 internalContent];
    v12 = [v11 content];
    v13 = [v12 identifier];
    *buf = 138543618;
    v59 = v9;
    v60 = 2114;
    v61 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Replacing %{public}@ with %{public}@", buf, 0x16u);
  }

  v14 = [v7 findInternalContentDataById:v9];
  [v14 interfaceReplaced];
  v15 = [v7 internalContent];
  v16 = [v15 privateContent];
  v17 = [v16 isPrerollVideo];

  if (v17)
  {
    v48 = v14;
    v49 = v9;
    v50 = v6;
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
            v23 = [v7 internalContent];
            v24 = [v23 content];
            v25 = [v24 identifier];
            v26 = [v7 internalContent];
            v27 = [v26 content];
            v28 = [v27 serverUnfilledReason];
            *buf = 138543618;
            v59 = v25;
            v60 = 2048;
            v61 = v28;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Content %{public}@: has unfilled reason code %ld", buf, 0x16u);
          }

          [v21 cancelDelayedRequest];
          v29 = [v7 internalContent];
          v30 = [v29 content];
          if ([v30 serverUnfilledReason] <= 200)
          {
          }

          else
          {
            v31 = [v29 content];
            v32 = [v31 serverUnfilledReason];

            if (v32 <= 205)
            {
              v33 = APLogForCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = [v7 internalContent];
                v35 = [v34 content];
                v36 = [v35 identifier];
                v37 = [v7 internalContent];
                v38 = [v37 content];
                v39 = [v38 serverUnfilledReason];
                *buf = 138543618;
                v59 = v36;
                v60 = 2048;
                v61 = v39;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Content %{public}@: has unfilled reason code %ld. Sending an ASE with the unfilled reason code.", buf, 0x16u);
              }

              v40 = [v29 content];
              v41 = +[APLegacyTypeTranslator AdDataUnfilledReasonCodeToASECode:](APLegacyTypeTranslator, "AdDataUnfilledReasonCodeToASECode:", [v40 serverUnfilledReason]);

              if ([v29 shouldSendAdSpaceStatusEvent:v41])
              {
                [v29 appearedOnScreenWithStatus:v41];
                v44 = [APAdSpaceEventRequester alloc];
                v45 = [v7 context];
                v46 = [v7 idAccount];
                v47 = [(APAdSpaceEventRequester *)v44 initWithMetric:v50 internalContent:v29 andContext:v45 idAccount:v46];

                [(APAdSpaceEventRequester *)v47 setStatusCode:v41];
                v6 = v50;

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
    v6 = v50;
    v14 = v48;
  }

LABEL_27:
  v47 = 0;
LABEL_28:

  return v47;
}

- (id)handleInterfaceVisible:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = metricPropertyValue(v12, 5);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v18 = metricPropertyValue(v12, 5);
  v19 = [v18 BOOLValue];

  if (v19)
  {
LABEL_6:
    v23 = APLogForCategory();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      v27 = 0;
      goto LABEL_10;
    }

    v24 = [v13 content];
    v25 = [v24 identifier];
    *buf = 138543362;
    v62 = v25;
    v26 = "Content %{public}@ reporting visible but is collapsed.";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v26, buf, 0xCu);

    goto LABEL_9;
  }

  v20 = metricPropertyValue(v12, 0x12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = metricPropertyValue(v12, 0x12);
    v22 = [v21 intValue];
  }

  else
  {
    v22 = 0;
  }

  v29 = metricPropertyValue(v12, 8);
  objc_opt_class();
  v30 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v31 = metricPropertyValue(v12, 8);
    [v31 doubleValue];
    v30 = v32;
  }

  v60 = v22;
  if (v22 >= 100)
  {
    [v13 wasFullyVisible];
  }

  v33 = v30 / 1000.0;
  v34 = [(APMetricsLegacyInterface *)self visibleFlag];
  v35 = [v16 contentID];
  v36 = [v35 UUIDString];
  v37 = [v34 enabledForUUIDString:v36];

  v38 = [v13 privateContent];
  LODWORD(v35) = [v38 isCarouselAd];

  if (v35)
  {
    v39 = metricPropertyValue(v12, 0xB);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = metricPropertyValue(v12, 0xB);
    }

    else
    {
      v40 = 0;
    }

    v42 = metricPropertyValue(v12, 0xA);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = metricPropertyValue(v12, 0xA);
    }

    else
    {
      v43 = 0;
    }

    v41 = v60;
    [v13 carouselVisibleStateChanged:v60 duration:v40 elements:v43 partialElements:v37 shouldUseNewVisibleLogic:v33];
  }

  else
  {
    v41 = v60;
    [v13 visibleStateChanged:v60 duration:v37 shouldUseNewVisibleLogic:v33];
  }

  v44 = [v13 privateContent];
  v45 = [v44 isVideo];

  if (v45 && v41 == 50)
  {
    v46 = metricPropertyValue(v12, 0x1E);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = metricPropertyValue(v12, 0x1E);
    }

    else
    {
      v47 = 0;
    }

    v48 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:v12 internalContent:v13 andContext:v14 clientInfo:v15 idAccount:v16];
    v49 = [v13 transientContent];
    v50 = [v49 wasFullyVisible];

    v51 = 0.51;
    if (v50)
    {
      v51 = 1.0;
    }

    [(APLogVideoAnalyticsEventRequester *)v48 setVideoVisibility:v51];
    [v47 timeIntervalSince1970];
    [(APLogVideoAnalyticsEventRequester *)v48 setVisibilityTimestamp:?];
    [(APMetricsLegacyInterface *)self sendLegacyMetric:v48];
    v52 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:v12 internalContent:v13 andContext:v14 clientInfo:v15 idAccount:v16];
    [(APLogVideoAnalyticsEventRequester *)v52 setVideoVisibility:0.49];
    v53 = [v47 dateByAddingTimeInterval:v33];
    [v53 timeIntervalSince1970];
    [(APLogVideoAnalyticsEventRequester *)v52 setVisibilityTimestamp:?];
    [(APMetricsLegacyInterface *)self sendLegacyMetric:v52];

    v41 = v60;
  }

  v54 = [v13 transientContent];
  v55 = [v54 playbackInProgress];

  if (v55)
  {
    v23 = APLogForCategory();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v24 = [v13 content];
    v25 = [v24 identifier];
    *buf = 138543362;
    v62 = v25;
    v26 = "Ignoring impression request for %{public}@: playback is in progress.";
    goto LABEL_8;
  }

  if (v41 >= 50)
  {
    v56 = [(APMetricsLegacyInterface *)self _confirmed50PercentImpressionRequest:v12 internalContent:v13 context:v14 clientInfo:v15 idAccount:v16 forClickInteraction:0];
    if (v56)
    {
      v57 = APLogForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = [v13 content];
        v59 = [v58 identifier];
        *buf = 138543362;
        v62 = v59;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Sending 50%% impression request for %{public}@", buf, 0xCu);
      }

      [(APMetricsLegacyInterface *)self sendLegacyMetric:v56];
    }
  }

  v27 = [(APMetricsLegacyInterface *)self _confirmedImpressionRequest:v12 internalContent:v13 context:v14 clientInfo:v15 idAccount:v16 forClickInteraction:0];
LABEL_10:

  return v27;
}

- (id)handleInterfaceOffScreen:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 privateContent];
  v18 = [v17 isCarouselAd];

  if (v18)
  {
    v19 = [v13 transientContent];
    if ([v19 hasConfirmedImpression])
    {
      v20 = [v13 transientContent];
      v21 = [v20 carouselFinishedSent];

      if ((v21 & 1) == 0)
      {
        v22 = [v13 transientContent];
        [v22 carouselVisibleTime];
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

        v27 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:v12 internalContent:v13 andContext:v14 clientInfo:v15 idAccount:v16];
        [(APLogSysEventRequester *)v27 setEventType:908];
        v28 = [(APLegacyMetricRequester *)v27 logMetadata];
        [v28 setTimeSinceAppResume:v26];

        v29 = [v13 transientContent];
        v60 = [v29 carouselElementsVisible];

        if (!v60)
        {
          v30 = APLogForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [v13 content];
            v32 = [v31 identifier];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "carouselElementsVisible is nil for content %{public}@", &buf, 0xCu);
          }
        }

        v33 = [v13 transientContent];
        v59 = [v33 carouselElementsPartiallyVisible];

        if (!v59)
        {
          v34 = APLogForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = [v13 content];
            v36 = [v35 identifier];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v36;
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
        if (v60)
        {
          [v60 enumerateObjectsUsingBlock:v57];
          v37 = [*(*(&buf + 1) + 40) copy];
          v38 = [(APLegacyMetricRequester *)v27 logMetadata];
          [v38 setTiltStationBlob:v37];

          v39 = [(APLegacyMetricRequester *)v27 logMetadata];
          v40 = [v39 tiltStationBlob];
          LODWORD(v38) = v40 == 0;

          if (v38)
          {
            v41 = APLogForCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = [v13 content];
              v43 = [v42 identifier];
              *v65 = 138543362;
              v66 = v43;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "tiltStationBlob is nil for content %{public}@", v65, 0xCu);
            }
          }
        }

        v44 = objc_alloc_init(NSMutableData);
        v45 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v44;

        if (v59)
        {
          [v59 enumerateObjectsUsingBlock:v57];
          v46 = [(APLegacyMetricRequester *)v27 logMetadata];
          v47 = [*(*(&buf + 1) + 40) copy];
          [v46 addTiltTrackBlob:v47];

          v48 = [(APLegacyMetricRequester *)v27 logMetadata];
          v49 = [v48 tiltTrackBlobs];
          LODWORD(v47) = v49 == 0;

          if (v47)
          {
            v50 = APLogForCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v51 = [v13 content];
              v52 = [v51 identifier];
              *v65 = 138543362;
              v66 = v52;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "tiltTrackBlobs is nil for content after checking partially visible cells %{public}@", v65, 0xCu);
            }
          }
        }

        v53 = 30.0;
        if (+[APSystemInternal isAppleInternalInstall])
        {
          v54 = +[NSProcessInfo processInfo];
          v55 = [v54 isRunningTests];

          if (v55)
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
        v62 = v13;
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

- (id)_unconfirmedImpressionRequest:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(APLegacyMetricRequester *)[APLogImpressionRequester alloc] initWithMetric:v15 internalContent:v14 andContext:v13 clientInfo:v12 idAccount:v11];

  [(APLogImpressionRequester *)v16 setType:1];

  return v16;
}

- (id)_confirmedImpressionRequest:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7 forClickInteraction:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([v14 canSendImpression:v8])
  {
    [v14 confirmImpression];
    v18 = [(APLegacyMetricRequester *)[APLogImpressionRequester alloc] initWithMetric:v13 internalContent:v14 andContext:v15 clientInfo:v16 idAccount:v17];
    [(APLogImpressionRequester *)v18 setType:2];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_confirmed50PercentImpressionRequest:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7 forClickInteraction:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([v14 canSend50PercentImpression:v8])
  {
    [v14 confirm50PercentImpression];
    v18 = [(APLegacyMetricRequester *)[APLogImpressionRequester alloc] initWithMetric:v13 internalContent:v14 andContext:v15 clientInfo:v16 idAccount:v17];
    [(APLogImpressionRequester *)v18 setType:3];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)handleLoadFailed:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = metricPropertyValue(v9, 0x32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_6;
  }

  v14 = metricPropertyValue(v9, 0x32);
  v15 = [v14 BOOLValue];

  if (v15 && [v10 shouldSendAdSpaceStatusEvent:8])
  {
    [v10 loadFailed];
    v16 = [[APAdSpaceEventRequester alloc] initWithMetric:v9 internalContent:v10 andContext:v11 idAccount:v12];
    v13 = [v10 transientContent];
    -[APAdSpaceEventRequester setStatusCode:](v16, "setStatusCode:", [v13 lastStatusCode]);
LABEL_6:

    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (id)handleVideoMetric:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a6;
  v17 = [v13 privateContent];
  if ([(APAdSpaceEventRequester *)v17 isPrerollVideo])
  {
    if ([v12 metric] == 1600)
    {
    }

    else
    {
      v18 = [v12 metric];

      if (v18 != 2503)
      {
        goto LABEL_11;
      }
    }

    if ([v12 metric] == 1600)
    {
      v19 = 3000;
    }

    else
    {
      v19 = 3013;
    }

    if (![v13 shouldSendAdSpaceStatusEvent:v19])
    {
      goto LABEL_11;
    }

    v17 = [[APAdSpaceEventRequester alloc] initWithMetric:v12 internalContent:v13 andContext:v14 idAccount:v15];
    [(APAdSpaceEventRequester *)v17 setStatusCode:v19];
    [(APMetricsLegacyInterface *)self sendLegacyMetric:v17];
  }

LABEL_11:
  v20 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:v12 internalContent:v13 andContext:v14 clientInfo:v16 idAccount:v15];

  return v20;
}

- (id)handlePrivacyAdMetric:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(APLegacyMetricRequester *)[APLogSysEventRequester alloc] initWithMetric:v15 internalContent:v14 andContext:v13 clientInfo:v12 idAccount:v11];

  [(APLogSysEventRequester *)v16 setEventType:900];

  return v16;
}

- (id)handleValidationFailed:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [APServerErrorRequester alloc];
  v15 = [v11 content];
  v16 = [v15 error];
  v17 = [(APServerErrorRequester *)v14 initWithMetric:v10 internalContent:v11 context:v12 idAccount:v13 error:v16];

  [(APMetricsLegacyInterface *)self sendLegacyMetric:v17];
  if ([v11 shouldSendAdSpaceStatusEvent:9])
  {
    v18 = [[APAdSpaceEventRequester alloc] initWithMetric:v10 internalContent:v11 andContext:v12 idAccount:v13];
    [(APAdSpaceEventRequester *)v18 setStatusCode:9];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)handleDaemonRequestFailed:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = metricPropertyValue(v10, 4);
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

  v15 = metricPropertyValue(v10, 4);
  v16 = [v15 intValue];

  if (v16 != 3300)
  {
    v17 = v16;
    if ((v16 - 3303) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = [APServerErrorRequester alloc];
      v19 = [v11 content];
      v20 = [v19 error];
      v21 = [(APServerErrorRequester *)v18 initWithMetric:v10 internalContent:v11 context:v12 idAccount:v13 error:v20];

      [(APMetricsLegacyInterface *)self sendLegacyMetric:v21];
      v22 = [[APAdSpaceEventRequester alloc] initWithMetric:v10 internalContent:v11 andContext:v12 idAccount:v13];
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

- (id)handleArticleLoadFailure:(id)a3 internalContent:(id)a4 context:(id)a5 idAccount:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 shouldSendAdSpaceStatusEvent:3012])
  {
    v13 = [[APAdSpaceEventRequester alloc] initWithMetric:v9 internalContent:v10 andContext:v11 idAccount:v12];
    [(APAdSpaceEventRequester *)v13 setStatusCode:3012];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)handleMediaComplete:(id)a3 internalContent:(id)a4 context:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 privateContent];
  if ([v16 isVideo])
  {
    v17 = [v12 content];
    v18 = [v17 serverUnfilledReason];

    if (!v18)
    {
      v19 = [[APLogVideoAnalyticsEventRequester alloc] initWithMetric:v11 internalContent:v12 andContext:v13 clientInfo:v14 idAccount:v15];
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

- (void)trackTimeSpent:(id)a3 internalContent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 content];
  v8 = [v7 representations];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v6 content];
    v11 = [v10 getRepresentation];
    v12 = [v11 journeyRelayLineId];

    v13 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    v14 = [v13 enableAggregatedTimespent];

    if (v14)
    {
      v15 = [v13 enableAggregatedTimespent];
      v16 = [v15 BOOLValue];
    }

    else
    {
      v16 = 1;
    }

    v17 = [v6 transientContent];
    [v17 timeSpent];
    v19 = v18;

    v20 = [v6 content];
    if (![v20 serverUnfilledReason] && objc_msgSend(v6, "hasConfirmed50PercentImpression") && v12)
    {
      v25 = v19;
      v26 = [v6 transientContent];
      [v26 timeSpent];
      v28 = v27;
      v29 = [v6 content];
      [v29 impressionThreshold];
      v32 = v28 >= v30 && v25 > 0;
      v33 = v32 & v16;

      if (v33 == 1)
      {
        v34 = [_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase alloc];
        v35 = +[APDatabaseManager mainDatabase];
        v23 = [(AggregatedTimeSpentStoreDatabase *)v34 initWithDatabase:v35];

        +[APTimestampUtilities midnightUTCOfCurrentDay];
        v24 = [NSDate dateWithTimeIntervalSince1970:?];
        v36 = [v5 bundleIdentifier];
        v37 = [(AggregatedTimeSpentStoreDatabase *)v23 storeEntryWithLineID:v12 durationInSeconds:v25 eventTimestamp:v24 clientIdentifier:v36];

        if (v37)
        {
          [v6 resetTimeSpent];
        }

        else
        {
          v38 = APLogForCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [v5 contentIdentifier];
            v40 = 138543618;
            v41 = v39;
            v42 = 2114;
            v43 = v12;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to store accumulated visibility time for contentData %{public}@ to line identifier %{public}@", &v40, 0x16u);
          }
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    if ((v16 & 1) == 0)
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

  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [v5 contentIdentifier];
    v40 = 138543362;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No representations found for contentData %{public}@", &v40, 0xCu);
    goto LABEL_29;
  }

LABEL_30:
}

- (id)handleSubscription:(id)a3
{
  v3 = a3;
  v4 = [APLogSubscriptionEventRequester alloc];
  v5 = [v3 bundleIdentifier];
  v6 = [(APLogSubscriptionEventRequester *)v4 initWithMetric:v3 bundleID:v5];

  return v6;
}

- (BOOL)handleExpandedPlaceholderWithUnfilledReason:(int)a3 metric:(id)a4 internalContent:(id)a5 context:(id)a6 idAccount:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 internalProperties];
  v17 = [v16 objectForKeyedSubscript:@"type"];

  v18 = 0;
  if (a3 == 3001 && v17)
  {
    if ([v17 intValue] == 3)
    {
      v19 = [v13 transientContent];
      v20 = [v19 hasBeenOnScreen];

      if (v20)
      {
        v21 = APLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v13 content];
          v23 = [v22 identifier];
          v26 = 138543362;
          v27 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not queuing delayed AdNotAvailable ASE for content %{public}@, it has previously been on screen.", &v26, 0xCu);
        }
      }

      else
      {
        [v13 appearedOnScreenWithStatus:3001];
        v24 = [[APAdSpaceEventRequester alloc] initWithMetric:v12 internalContent:v13 andContext:v14 idAccount:v15];
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