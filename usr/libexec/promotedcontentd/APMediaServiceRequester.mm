@interface APMediaServiceRequester
- (APMediaServiceRequester)init;
- (id)_loadInternalPropertiesFromContentData:(id)data;
- (id)_loadJourneyStartRelayValuesFromContentData:(id)data;
- (void)_handleMediaServiceResponse:(id)response params:(id)params completionHandler:(id)handler;
- (void)_handleRankedRepresentations:(id)representations params:(id)params;
- (void)sendRequest:(id)request params:(id)params completionHandler:(id)handler;
@end

@implementation APMediaServiceRequester

- (APMediaServiceRequester)init
{
  v3.receiver = self;
  v3.super_class = APMediaServiceRequester;
  return [(APMediaServiceRequester *)&v3 init];
}

- (void)sendRequest:(id)request params:(id)params completionHandler:(id)handler
{
  requestCopy = request;
  paramsCopy = params;
  handlerCopy = handler;
  if (handlerCopy)
  {
    deliveryBlock = [(APMediaServiceRequester *)self deliveryBlock];

    if (requestCopy)
    {
      if (deliveryBlock)
      {
        [(APMediaServiceRequester *)self setCompletionHandler:handlerCopy];
        context = [paramsCopy context];
        fingerprint = [context fingerprint];
        [(APMediaServiceRequester *)self setContextFingerprint:fingerprint];

        [(APMediaServiceRequester *)self setMediaServiceRequest:requestCopy];
        -[APMediaServiceRequester setHasOdml:](self, "setHasOdml:", [paramsCopy hasOdml]);
        if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[APMockMAPIResponseSettings settings](APMockMAPIResponseSettings, "settings"), v14 = objc_claimAutoreleasedReturnValue(), [v14 contentDataObjects], v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
        {
          [(APMediaServiceRequester *)self _handleMediaServiceResponse:v15 params:paramsCopy completionHandler:handlerCopy];
        }

        else
        {
          v16 = [NSUserDefaults alloc];
          v15 = [v16 initWithSuiteName:APDefaultsBundleID];
          appMetadataFields = [paramsCopy appMetadataFields];
          [v15 setObject:appMetadataFields forKey:@"cachedAppMetadataFields"];

          objc_initWeak(&location, self);
          mediaServiceRequest = [(APMediaServiceRequester *)self mediaServiceRequest];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_1003750E4;
          v19[3] = &unk_1004804E8;
          objc_copyWeak(&v22, &location);
          v20 = paramsCopy;
          v21 = handlerCopy;
          [mediaServiceRequest runWithParameters:v20 completionHandler:v19];

          objc_destroyWeak(&v22);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

- (void)_handleMediaServiceResponse:(id)response params:(id)params completionHandler:(id)handler
{
  responseCopy = response;
  paramsCopy = params;
  handlerCopy = handler;
  mediaServiceRequest = [(APMediaServiceRequester *)self mediaServiceRequest];
  [mediaServiceRequest responseTime];
  [(APMediaServiceRequester *)self setResponseTime:?];

  [(APMediaServiceRequester *)self setReceivedContentDataItems:responseCopy];
  contextFingerprint = [(APMediaServiceRequester *)self contextFingerprint];
  [APMediaServiceErrorResponseProcessor processJourneyErrorEventsForContentDataItems:responseCopy contextFingerprint:contextFingerprint params:paramsCopy];

  if ([responseCopy count])
  {
    hasOdml = [(APMediaServiceRequester *)self hasOdml];
    v14 = APLogForCategory();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (hasOdml)
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
      v24 = paramsCopy;
      [APMediaServicesRanker rankRepresentations:responseCopy completionHandler:v23];

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

      v22 = [APMediaServicesRanker sortByRank:responseCopy];
      [(APMediaServiceRequester *)self _handleRankedRepresentations:v22 params:paramsCopy];
    }
  }

  else
  {
    v16 = [NSUUID alloc];
    contextFingerprint2 = [(APMediaServiceRequester *)self contextFingerprint];
    v18 = [v16 initWithUUIDString:contextFingerprint2];
    v19 = [APContentData createForServerUnfilledReason:1025 placementType:5 contextIdentifier:v18];

    [v19 setDiagnosticCode:1];
    deliveryBlock = [(APMediaServiceRequester *)self deliveryBlock];
    v27 = v19;
    v21 = [NSArray arrayWithObjects:&v27 count:1];
    (deliveryBlock)[2](deliveryBlock, v21);

    handlerCopy[2](handlerCopy);
  }
}

- (void)_handleRankedRepresentations:(id)representations params:(id)params
{
  representationsCopy = representations;
  paramsCopy = params;
  firstObject = [representationsCopy firstObject];
  if (firstObject)
  {
    deliverEntireBatch = [paramsCopy deliverEntireBatch];
    deliveryBlock = [(APMediaServiceRequester *)self deliveryBlock];
    v11 = deliveryBlock;
    if (deliverEntireBatch)
    {
      (*(deliveryBlock + 16))(deliveryBlock, representationsCopy);
    }

    else
    {
      v23 = firstObject;
      v17 = [NSArray arrayWithObjects:&v23 count:1];
      (v11)[2](v11, v17);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003758A8;
    v21[3] = &unk_100480538;
    v21[4] = self;
    [representationsCopy enumerateObjectsUsingBlock:v21];
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "No valid content data object was returned by Media API.", buf, 2u);
    }

    deliverEntireBatch2 = [paramsCopy deliverEntireBatch];
    deliveryBlock2 = [(APMediaServiceRequester *)self deliveryBlock];
    receivedContentDataItems = [(APMediaServiceRequester *)self receivedContentDataItems];
    v16 = receivedContentDataItems;
    if (deliverEntireBatch2)
    {
      (deliveryBlock2)[2](deliveryBlock2, receivedContentDataItems);
    }

    else
    {
      firstObject2 = [receivedContentDataItems firstObject];
      v24 = firstObject2;
      v19 = [NSArray arrayWithObjects:&v24 count:1];
      (deliveryBlock2)[2](deliveryBlock2, v19);
    }
  }

  completionHandler = [(APMediaServiceRequester *)self completionHandler];
  completionHandler[2]();
}

- (id)_loadJourneyStartRelayValuesFromContentData:(id)data
{
  representations = [data representations];
  anyObject = [representations anyObject];

  v13[0] = kAPMetricAdGroupId;
  journeyRelayAdGroupId = [anyObject journeyRelayAdGroupId];
  v6 = journeyRelayAdGroupId;
  if (journeyRelayAdGroupId)
  {
    v7 = journeyRelayAdGroupId;
  }

  else
  {
    v7 = &stru_1004810B8;
  }

  v14[0] = v7;
  v13[1] = kAPMetricCampaignId;
  journeyRelayCampaignId = [anyObject journeyRelayCampaignId];
  v9 = journeyRelayCampaignId;
  if (journeyRelayCampaignId)
  {
    v10 = journeyRelayCampaignId;
  }

  else
  {
    v10 = &stru_1004810B8;
  }

  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v11;
}

- (id)_loadInternalPropertiesFromContentData:(id)data
{
  dataCopy = data;
  representations = [dataCopy representations];
  anyObject = [representations anyObject];

  v6 = +[NSMutableDictionary dictionary];
  adamID = [anyObject adamID];

  if (adamID)
  {
    adamID2 = [anyObject adamID];
    [v6 setObject:adamID2 forKey:kAPMetricSubscriptionIdentifier];
  }

  impressionId = [dataCopy impressionId];

  if (impressionId)
  {
    impressionId2 = [dataCopy impressionId];
    [v6 setObject:impressionId2 forKey:@"impressionId"];
  }

  metadata = [anyObject metadata];

  if (metadata)
  {
    metadata2 = [anyObject metadata];
    [v6 setObject:metadata2 forKey:kAPMetadataIdentifier];
  }

  triggers = [anyObject triggers];

  if (triggers)
  {
    triggers2 = [anyObject triggers];
    [v6 setObject:triggers2 forKey:kAPTriggersIdentifier];
  }

  v15 = [NSDictionary dictionaryWithDictionary:v6];

  return v15;
}

@end