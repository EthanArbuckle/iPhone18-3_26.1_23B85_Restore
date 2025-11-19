@interface APMediaServiceRequester
- (APMediaServiceRequester)init;
- (id)_loadInternalPropertiesFromContentData:(id)a3;
- (id)_loadJourneyStartRelayValuesFromContentData:(id)a3;
- (void)_handleMediaServiceResponse:(id)a3 params:(id)a4 completionHandler:(id)a5;
- (void)_handleRankedRepresentations:(id)a3 params:(id)a4;
- (void)sendRequest:(id)a3 params:(id)a4 completionHandler:(id)a5;
@end

@implementation APMediaServiceRequester

- (APMediaServiceRequester)init
{
  v3.receiver = self;
  v3.super_class = APMediaServiceRequester;
  return [(APMediaServiceRequester *)&v3 init];
}

- (void)sendRequest:(id)a3 params:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(APMediaServiceRequester *)self deliveryBlock];

    if (v8)
    {
      if (v11)
      {
        [(APMediaServiceRequester *)self setCompletionHandler:v10];
        v12 = [v9 context];
        v13 = [v12 fingerprint];
        [(APMediaServiceRequester *)self setContextFingerprint:v13];

        [(APMediaServiceRequester *)self setMediaServiceRequest:v8];
        -[APMediaServiceRequester setHasOdml:](self, "setHasOdml:", [v9 hasOdml]);
        if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[APMockMAPIResponseSettings settings](APMockMAPIResponseSettings, "settings"), v14 = objc_claimAutoreleasedReturnValue(), [v14 contentDataObjects], v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
        {
          [(APMediaServiceRequester *)self _handleMediaServiceResponse:v15 params:v9 completionHandler:v10];
        }

        else
        {
          v16 = [NSUserDefaults alloc];
          v15 = [v16 initWithSuiteName:APDefaultsBundleID];
          v17 = [v9 appMetadataFields];
          [v15 setObject:v17 forKey:@"cachedAppMetadataFields"];

          objc_initWeak(&location, self);
          v18 = [(APMediaServiceRequester *)self mediaServiceRequest];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_1003750E4;
          v19[3] = &unk_1004804E8;
          objc_copyWeak(&v22, &location);
          v20 = v9;
          v21 = v10;
          [v18 runWithParameters:v20 completionHandler:v19];

          objc_destroyWeak(&v22);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

- (void)_handleMediaServiceResponse:(id)a3 params:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APMediaServiceRequester *)self mediaServiceRequest];
  [v11 responseTime];
  [(APMediaServiceRequester *)self setResponseTime:?];

  [(APMediaServiceRequester *)self setReceivedContentDataItems:v8];
  v12 = [(APMediaServiceRequester *)self contextFingerprint];
  [APMediaServiceErrorResponseProcessor processJourneyErrorEventsForContentDataItems:v8 contextFingerprint:v12 params:v9];

  if ([v8 count])
  {
    v13 = [(APMediaServiceRequester *)self hasOdml];
    v14 = APLogForCategory();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      if (v15)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "ODML enabled. Reranking content data.", buf, 2u);
      }

      objc_initWeak(buf, self);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1003755D8;
      v23[3] = &unk_100480510;
      objc_copyWeak(&v25, buf);
      v24 = v9;
      [APMediaServicesRanker rankRepresentations:v8 completionHandler:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v15)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "ODML disabled. Sorting content data.", buf, 2u);
      }

      v22 = [APMediaServicesRanker sortByRank:v8];
      [(APMediaServiceRequester *)self _handleRankedRepresentations:v22 params:v9];
    }
  }

  else
  {
    v16 = [NSUUID alloc];
    v17 = [(APMediaServiceRequester *)self contextFingerprint];
    v18 = [v16 initWithUUIDString:v17];
    v19 = [APContentData createForServerUnfilledReason:1025 placementType:5 contextIdentifier:v18];

    [v19 setDiagnosticCode:1];
    v20 = [(APMediaServiceRequester *)self deliveryBlock];
    v27 = v19;
    v21 = [NSArray arrayWithObjects:&v27 count:1];
    (v20)[2](v20, v21);

    v10[2](v10);
  }
}

- (void)_handleRankedRepresentations:(id)a3 params:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  if (v8)
  {
    v9 = [v7 deliverEntireBatch];
    v10 = [(APMediaServiceRequester *)self deliveryBlock];
    v11 = v10;
    if (v9)
    {
      (*(v10 + 16))(v10, v6);
    }

    else
    {
      v23 = v8;
      v17 = [NSArray arrayWithObjects:&v23 count:1];
      (v11)[2](v11, v17);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003758A8;
    v21[3] = &unk_100480538;
    v21[4] = self;
    [v6 enumerateObjectsUsingBlock:v21];
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "No valid content data object was returned by Media API.", buf, 2u);
    }

    v13 = [v7 deliverEntireBatch];
    v14 = [(APMediaServiceRequester *)self deliveryBlock];
    v15 = [(APMediaServiceRequester *)self receivedContentDataItems];
    v16 = v15;
    if (v13)
    {
      (v14)[2](v14, v15);
    }

    else
    {
      v18 = [v15 firstObject];
      v24 = v18;
      v19 = [NSArray arrayWithObjects:&v24 count:1];
      (v14)[2](v14, v19);
    }
  }

  v20 = [(APMediaServiceRequester *)self completionHandler];
  v20[2]();
}

- (id)_loadJourneyStartRelayValuesFromContentData:(id)a3
{
  v3 = [a3 representations];
  v4 = [v3 anyObject];

  v13[0] = kAPMetricAdGroupId;
  v5 = [v4 journeyRelayAdGroupId];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1004810B8;
  }

  v14[0] = v7;
  v13[1] = kAPMetricCampaignId;
  v8 = [v4 journeyRelayCampaignId];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1004810B8;
  }

  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v11;
}

- (id)_loadInternalPropertiesFromContentData:(id)a3
{
  v3 = a3;
  v4 = [v3 representations];
  v5 = [v4 anyObject];

  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 adamID];

  if (v7)
  {
    v8 = [v5 adamID];
    [v6 setObject:v8 forKey:kAPMetricSubscriptionIdentifier];
  }

  v9 = [v3 impressionId];

  if (v9)
  {
    v10 = [v3 impressionId];
    [v6 setObject:v10 forKey:@"impressionId"];
  }

  v11 = [v5 metadata];

  if (v11)
  {
    v12 = [v5 metadata];
    [v6 setObject:v12 forKey:kAPMetadataIdentifier];
  }

  v13 = [v5 triggers];

  if (v13)
  {
    v14 = [v5 triggers];
    [v6 setObject:v14 forKey:kAPTriggersIdentifier];
  }

  v15 = [NSDictionary dictionaryWithDictionary:v6];

  return v15;
}

@end