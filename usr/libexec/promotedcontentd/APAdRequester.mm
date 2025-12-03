@interface APAdRequester
- (APAdRequester)initWithBundleID:(id)d identifier:(id)identifier clientInfo:(id)info idAccount:(id)account accumulateRequests:(BOOL)requests;
- (BOOL)_handleAdValidationErrorDomainWithJourneyMetricsHelper:(id)helper code:(int64_t)code internalContent:(id)content type:(id)type;
- (void)_setupAccumulator;
- (void)accumulateAdRequests:(id)requests;
- (void)cancelRequest;
- (void)checkForDiscards:(id)discards placementType:(int64_t)type;
- (void)requestAds:(id)ads;
- (void)sendAnalyticsForGettingAdResponse:(id)response;
@end

@implementation APAdRequester

- (APAdRequester)initWithBundleID:(id)d identifier:(id)identifier clientInfo:(id)info idAccount:(id)account accumulateRequests:(BOOL)requests
{
  requestsCopy = requests;
  dCopy = d;
  identifierCopy = identifier;
  infoCopy = info;
  accountCopy = account;
  v23.receiver = self;
  v23.super_class = APAdRequester;
  v17 = [(APAdRequester *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleID, d);
    objc_storeStrong(&v18->_identifier, identifier);
    v18->_cancelled = 0;
    objc_storeStrong(&v18->_clientInfo, info);
    objc_storeStrong(&v18->_idAccount, account);
    if (requestsCopy)
    {
      v19 = APPerfLogForCategory();
      v18->_signpostID = os_signpost_id_generate(v19);

      v20 = [[APUnfairLock alloc] initWithOptions:1];
      accumulatorLock = v18->_accumulatorLock;
      v18->_accumulatorLock = v20;

      [(APAdRequester *)v18 _setupAccumulator];
    }
  }

  return v18;
}

- (void)sendAnalyticsForGettingAdResponse:(id)response
{
  responseCopy = response;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    identifier = [responseCopy identifier];
    uUIDString = [identifier UUIDString];
    *buf = 138412290;
    v27 = *&uUIDString;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[LegacyInterface] Context (%@) got an ad response.", buf, 0xCu);
  }

  v7 = +[NSDate date];
  prefetchTimestamp = [responseCopy prefetchTimestamp];

  if (prefetchTimestamp)
  {
    prefetchTimestamp2 = [responseCopy prefetchTimestamp];
    [v7 timeIntervalSinceDate:prefetchTimestamp2];
    v11 = v10;

    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      identifier2 = [responseCopy identifier];
      uUIDString2 = [identifier2 UUIDString];
      *buf = 138543618;
      v27 = *&uUIDString2;
      v28 = 2050;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[LegacyInterface] Context %{public}@: Pre-fetch to daemon ad response interval is %{public}f.", buf, 0x16u);
    }

    v15 = [NSNumber numberWithDouble:v11];
    v16 = +[NSDecimalNumber notANumber];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      v18 = APLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%f Invalid interval", buf, 0xCu);
      }
    }

    else
    {
      v25[0] = v15;
      v19 = [NSNumber numberWithLong:4, @"Interval", @"IntervalType"];
      v25[1] = v19;
      v24[2] = @"NetworkType";
      v20 = [NSNumber numberWithUnsignedLong:0];
      v25[2] = v20;
      v24[3] = @"PlacementType";
      current = [responseCopy current];
      v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [current placement]);
      v25[3] = v22;
      v24[4] = @"Failed";
      v23 = [NSNumber numberWithBool:0];
      v25[4] = v23;
      v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];

      [APAnalytics sendEvent:@"adtiming" customPayload:v18];
    }
  }

  else
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "prefetchTimestamp is nil!", buf, 2u);
    }
  }
}

- (void)cancelRequest
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    identifier = [(APAdRequester *)self identifier];
    v5 = 138543362;
    v6 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling request %{public}@", &v5, 0xCu);
  }

  self->_cancelled = 1;
}

- (void)checkForDiscards:(id)discards placementType:(int64_t)type
{
  discardsCopy = discards;
  content = [discardsCopy content];
  error = [content error];

  if (error)
  {
    content2 = [discardsCopy content];
    error2 = [content2 error];
    domain = [error2 domain];

    v12 = [APJourneyDaemonMetricHelper alloc];
    content3 = [discardsCopy content];
    v14 = [(APJourneyDaemonMetricHelper *)v12 initWithContentData:content3];

    if ([domain isEqualToString:@"com.apple.ap.AdValidationErrorDomain"])
    {
      content4 = [discardsCopy content];
      error3 = [content4 error];
      code = [error3 code];
      v18 = [NSNumber numberWithInteger:type];
      v19 = [(APAdRequester *)self _handleAdValidationErrorDomainWithJourneyMetricsHelper:v14 code:code internalContent:discardsCopy type:v18];

      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ([domain isEqualToString:@"com.apple.ap.DaemonDiscardedErrorDomain"])
      {
        bundleID = [(APAdRequester *)self bundleID];
        content5 = [discardsCopy content];
        error4 = [content5 error];
        -[APJourneyDaemonMetricHelper discardedForBundleID:withCode:](v14, "discardedForBundleID:withCode:", bundleID, [error4 code]);
        goto LABEL_11;
      }

      if ([domain isEqualToString:NSURLErrorDomain])
      {
        bundleID2 = [(APAdRequester *)self bundleID];
        identifier = [(APAdRequester *)self identifier];
        uUIDString = [identifier UUIDString];
        [(APJourneyDaemonMetricHelper *)v14 requestFailedForBundleID:bundleID2 withCode:3300 requestID:uUIDString placement:0 placementType:type];
      }
    }

    bundleID = APLogForCategory();
    if (!os_log_type_enabled(bundleID, OS_LOG_TYPE_INFO))
    {
LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    content5 = [discardsCopy content];
    error4 = [content5 identifier];
    v26 = 138543618;
    v27 = error4;
    v28 = 2114;
    v29 = domain;
    _os_log_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_INFO, "Error domain for Content %{public}@ is %{public}@. Not sending a discard metric.", &v26, 0x16u);
LABEL_11:

    goto LABEL_12;
  }

LABEL_14:
}

- (BOOL)_handleAdValidationErrorDomainWithJourneyMetricsHelper:(id)helper code:(int64_t)code internalContent:(id)content type:(id)type
{
  helperCopy = helper;
  contentCopy = content;
  typeCopy = type;
  if (code == 4509)
  {
    bundleID = [(APAdRequester *)self bundleID];
    identifier = [(APAdRequester *)self identifier];
    uUIDString = [identifier UUIDString];
    integerValue = [typeCopy integerValue];
    v17 = helperCopy;
    v18 = bundleID;
    v19 = 3302;
  }

  else
  {
    if (code != 4508)
    {
      v21 = [APDiagnosticDaemonMetricHelper alloc];
      content = [contentCopy content];
      bundleID = [(APDiagnosticDaemonMetricHelper *)v21 initWithContentData:content];

      content2 = [contentCopy content];
      error = [content2 error];
      code = [error code];
      content3 = [contentCopy content];
      error2 = [content3 error];
      [error2 localizedDescription];
      v27 = contentCopy;
      v28 = helperCopy;
      v30 = v29 = typeCopy;
      [(APDiagnosticDaemonMetricHelper *)bundleID validationFailed:code reason:v30];

      typeCopy = v29;
      helperCopy = v28;
      contentCopy = v27;

      identifier = [(APAdRequester *)self bundleID];
      [helperCopy discardedForBundleID:identifier withCode:2605];
      v20 = 1;
      goto LABEL_7;
    }

    bundleID = [(APAdRequester *)self bundleID];
    identifier = [(APAdRequester *)self identifier];
    uUIDString = [identifier UUIDString];
    integerValue = [typeCopy integerValue];
    v17 = helperCopy;
    v18 = bundleID;
    v19 = 3301;
  }

  [v17 requestFailedForBundleID:v18 withCode:v19 requestID:uUIDString placement:0 placementType:integerValue];

  v20 = 0;
LABEL_7:

  return v20;
}

- (void)requestAds:(id)ads
{
  adsCopy = ads;
  v5 = [APAdBatchRequester alloc];
  bundleID = [(APAdRequester *)self bundleID];
  v7 = +[NSUUID UUID];
  clientInfo = [(APAdRequester *)self clientInfo];
  idAccount = [(APAdRequester *)self idAccount];
  v10 = [(APAdBatchRequester *)v5 initWithBatch:adsCopy bundleID:bundleID requestIdentifier:v7 clientInfo:clientInfo idAccount:idAccount];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002AFD64;
  v12[3] = &unk_10047D090;
  v13 = v10;
  selfCopy = self;
  v11 = v10;
  [(APAdBatchRequester *)v11 makeRequest:v12];
}

- (void)_setupAccumulator
{
  accumulatorLock = [(APAdRequester *)self accumulatorLock];
  [accumulatorLock lock];

  adAccumulator = [(APAdRequester *)self adAccumulator];

  if (adAccumulator)
  {
    accumulatorLock2 = [(APAdRequester *)self accumulatorLock];
    [accumulatorLock2 unlock];

    return;
  }

  v5 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v6 = v5;
  if (!v5)
  {
    unsignedIntValue = 200;
    unsignedIntValue2 = 100;
LABEL_15:
    unsignedIntValue3 = 4;
    goto LABEL_16;
  }

  accumulationTime = [v5 accumulationTime];

  if (accumulationTime)
  {
    accumulationTime2 = [v6 accumulationTime];
    unsignedIntValue = [accumulationTime2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 200;
  }

  inactivityTime = [v6 inactivityTime];

  if (inactivityTime)
  {
    inactivityTime2 = [v6 inactivityTime];
    unsignedIntValue2 = [inactivityTime2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = 100;
  }

  itemLimit = [v6 itemLimit];

  if (!itemLimit)
  {
    goto LABEL_15;
  }

  itemLimit2 = [v6 itemLimit];
  unsignedIntValue3 = [itemLimit2 unsignedIntValue];

LABEL_16:
  v16 = APLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v25 = unsignedIntValue;
    v26 = 2048;
    v27 = unsignedIntValue2;
    v28 = 2048;
    v29 = unsignedIntValue3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Creating ad accumulator with parameters: accumulate: %lu, inactivity: %lu, limit: %lu", buf, 0x20u);
  }

  v17 = [[APAccumulator alloc] initWithAccumulationTime:unsignedIntValue inactivityTime:unsignedIntValue2 itemLimit:unsignedIntValue3];
  adAccumulator = self->_adAccumulator;
  self->_adAccumulator = v17;

  objc_initWeak(buf, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1002B06C8;
  v22[3] = &unk_10047D0B8;
  objc_copyWeak(&v23, buf);
  adAccumulator2 = [(APAdRequester *)self adAccumulator];
  [adAccumulator2 setAccumulationHandler:v22];

  accumulatorLock3 = [(APAdRequester *)self accumulatorLock];
  [accumulatorLock3 unlock];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)accumulateAdRequests:(id)requests
{
  requestsCopy = requests;
  [(APUnfairLock *)self->_accumulatorLock lock];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = requestsCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v30;
    *&v6 = 134349570;
    v26 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        adAccumulator = [(APAdRequester *)self adAccumulator];
        accumulatedItems = [adAccumulator accumulatedItems];
        v13 = [accumulatedItems count];

        if (!v13)
        {
          v14 = APPerfLogForCategory();
          signpostID = [(APAdRequester *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v16 = signpostID;
            if (os_signpost_enabled(v14))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "AccumulationInterval", "", buf, 2u);
            }
          }
        }

        adAccumulator2 = [(APAdRequester *)self adAccumulator];
        [adAccumulator2 accumulate:v10];

        v18 = APLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          adAccumulator3 = [(APAdRequester *)self adAccumulator];
          accumulatedItems2 = [adAccumulator3 accumulatedItems];
          selfCopy = self;
          v21 = v7;
          v22 = [accumulatedItems2 count];
          identifier = [v10 identifier];
          context = [v10 context];
          identifier2 = [context identifier];
          *buf = v26;
          v34 = v22;
          v7 = v21;
          self = selfCopy;
          v35 = 2114;
          v36 = identifier;
          v37 = 2114;
          v38 = identifier2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Adding request #%{public}lu to batch with identifier %{public}@ and context %{public}@", buf, 0x20u);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v7);
  }

  [(APUnfairLock *)self->_accumulatorLock unlock];
}

@end