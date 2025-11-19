@interface APAdRequester
- (APAdRequester)initWithBundleID:(id)a3 identifier:(id)a4 clientInfo:(id)a5 idAccount:(id)a6 accumulateRequests:(BOOL)a7;
- (BOOL)_handleAdValidationErrorDomainWithJourneyMetricsHelper:(id)a3 code:(int64_t)a4 internalContent:(id)a5 type:(id)a6;
- (void)_setupAccumulator;
- (void)accumulateAdRequests:(id)a3;
- (void)cancelRequest;
- (void)checkForDiscards:(id)a3 placementType:(int64_t)a4;
- (void)requestAds:(id)a3;
- (void)sendAnalyticsForGettingAdResponse:(id)a3;
@end

@implementation APAdRequester

- (APAdRequester)initWithBundleID:(id)a3 identifier:(id)a4 clientInfo:(id)a5 idAccount:(id)a6 accumulateRequests:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v23.receiver = self;
  v23.super_class = APAdRequester;
  v17 = [(APAdRequester *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleID, a3);
    objc_storeStrong(&v18->_identifier, a4);
    v18->_cancelled = 0;
    objc_storeStrong(&v18->_clientInfo, a5);
    objc_storeStrong(&v18->_idAccount, a6);
    if (v7)
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

- (void)sendAnalyticsForGettingAdResponse:(id)a3
{
  v3 = a3;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 identifier];
    v6 = [v5 UUIDString];
    *buf = 138412290;
    v27 = *&v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[LegacyInterface] Context (%@) got an ad response.", buf, 0xCu);
  }

  v7 = +[NSDate date];
  v8 = [v3 prefetchTimestamp];

  if (v8)
  {
    v9 = [v3 prefetchTimestamp];
    [v7 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v3 identifier];
      v14 = [v13 UUIDString];
      *buf = 138543618;
      v27 = *&v14;
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
      v21 = [v3 current];
      v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 placement]);
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
    v4 = [(APAdRequester *)self identifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling request %{public}@", &v5, 0xCu);
  }

  self->_cancelled = 1;
}

- (void)checkForDiscards:(id)a3 placementType:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 content];
  v8 = [v7 error];

  if (v8)
  {
    v9 = [v6 content];
    v10 = [v9 error];
    v11 = [v10 domain];

    v12 = [APJourneyDaemonMetricHelper alloc];
    v13 = [v6 content];
    v14 = [(APJourneyDaemonMetricHelper *)v12 initWithContentData:v13];

    if ([v11 isEqualToString:@"com.apple.ap.AdValidationErrorDomain"])
    {
      v15 = [v6 content];
      v16 = [v15 error];
      v17 = [v16 code];
      v18 = [NSNumber numberWithInteger:a4];
      v19 = [(APAdRequester *)self _handleAdValidationErrorDomainWithJourneyMetricsHelper:v14 code:v17 internalContent:v6 type:v18];

      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ([v11 isEqualToString:@"com.apple.ap.DaemonDiscardedErrorDomain"])
      {
        v20 = [(APAdRequester *)self bundleID];
        v21 = [v6 content];
        v22 = [v21 error];
        -[APJourneyDaemonMetricHelper discardedForBundleID:withCode:](v14, "discardedForBundleID:withCode:", v20, [v22 code]);
        goto LABEL_11;
      }

      if ([v11 isEqualToString:NSURLErrorDomain])
      {
        v23 = [(APAdRequester *)self bundleID];
        v24 = [(APAdRequester *)self identifier];
        v25 = [v24 UUIDString];
        [(APJourneyDaemonMetricHelper *)v14 requestFailedForBundleID:v23 withCode:3300 requestID:v25 placement:0 placementType:a4];
      }
    }

    v20 = APLogForCategory();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    v21 = [v6 content];
    v22 = [v21 identifier];
    v26 = 138543618;
    v27 = v22;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Error domain for Content %{public}@ is %{public}@. Not sending a discard metric.", &v26, 0x16u);
LABEL_11:

    goto LABEL_12;
  }

LABEL_14:
}

- (BOOL)_handleAdValidationErrorDomainWithJourneyMetricsHelper:(id)a3 code:(int64_t)a4 internalContent:(id)a5 type:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 == 4509)
  {
    v13 = [(APAdRequester *)self bundleID];
    v14 = [(APAdRequester *)self identifier];
    v15 = [v14 UUIDString];
    v16 = [v12 integerValue];
    v17 = v10;
    v18 = v13;
    v19 = 3302;
  }

  else
  {
    if (a4 != 4508)
    {
      v21 = [APDiagnosticDaemonMetricHelper alloc];
      v22 = [v11 content];
      v13 = [(APDiagnosticDaemonMetricHelper *)v21 initWithContentData:v22];

      v32 = [v11 content];
      v23 = [v32 error];
      v24 = [v23 code];
      v25 = [v11 content];
      v26 = [v25 error];
      [v26 localizedDescription];
      v27 = v11;
      v28 = v10;
      v30 = v29 = v12;
      [(APDiagnosticDaemonMetricHelper *)v13 validationFailed:v24 reason:v30];

      v12 = v29;
      v10 = v28;
      v11 = v27;

      v14 = [(APAdRequester *)self bundleID];
      [v10 discardedForBundleID:v14 withCode:2605];
      v20 = 1;
      goto LABEL_7;
    }

    v13 = [(APAdRequester *)self bundleID];
    v14 = [(APAdRequester *)self identifier];
    v15 = [v14 UUIDString];
    v16 = [v12 integerValue];
    v17 = v10;
    v18 = v13;
    v19 = 3301;
  }

  [v17 requestFailedForBundleID:v18 withCode:v19 requestID:v15 placement:0 placementType:v16];

  v20 = 0;
LABEL_7:

  return v20;
}

- (void)requestAds:(id)a3
{
  v4 = a3;
  v5 = [APAdBatchRequester alloc];
  v6 = [(APAdRequester *)self bundleID];
  v7 = +[NSUUID UUID];
  v8 = [(APAdRequester *)self clientInfo];
  v9 = [(APAdRequester *)self idAccount];
  v10 = [(APAdBatchRequester *)v5 initWithBatch:v4 bundleID:v6 requestIdentifier:v7 clientInfo:v8 idAccount:v9];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002AFD64;
  v12[3] = &unk_10047D090;
  v13 = v10;
  v14 = self;
  v11 = v10;
  [(APAdBatchRequester *)v11 makeRequest:v12];
}

- (void)_setupAccumulator
{
  v3 = [(APAdRequester *)self accumulatorLock];
  [v3 lock];

  v4 = [(APAdRequester *)self adAccumulator];

  if (v4)
  {
    v21 = [(APAdRequester *)self accumulatorLock];
    [v21 unlock];

    return;
  }

  v5 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v6 = v5;
  if (!v5)
  {
    v9 = 200;
    v10 = 100;
LABEL_15:
    v15 = 4;
    goto LABEL_16;
  }

  v7 = [v5 accumulationTime];

  if (v7)
  {
    v8 = [v6 accumulationTime];
    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v9 = 200;
  }

  v11 = [v6 inactivityTime];

  if (v11)
  {
    v12 = [v6 inactivityTime];
    v10 = [v12 unsignedIntValue];
  }

  else
  {
    v10 = 100;
  }

  v13 = [v6 itemLimit];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [v6 itemLimit];
  v15 = [v14 unsignedIntValue];

LABEL_16:
  v16 = APLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v25 = v9;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Creating ad accumulator with parameters: accumulate: %lu, inactivity: %lu, limit: %lu", buf, 0x20u);
  }

  v17 = [[APAccumulator alloc] initWithAccumulationTime:v9 inactivityTime:v10 itemLimit:v15];
  adAccumulator = self->_adAccumulator;
  self->_adAccumulator = v17;

  objc_initWeak(buf, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1002B06C8;
  v22[3] = &unk_10047D0B8;
  objc_copyWeak(&v23, buf);
  v19 = [(APAdRequester *)self adAccumulator];
  [v19 setAccumulationHandler:v22];

  v20 = [(APAdRequester *)self accumulatorLock];
  [v20 unlock];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)accumulateAdRequests:(id)a3
{
  v4 = a3;
  [(APUnfairLock *)self->_accumulatorLock lock];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
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
        v11 = [(APAdRequester *)self adAccumulator];
        v12 = [v11 accumulatedItems];
        v13 = [v12 count];

        if (!v13)
        {
          v14 = APPerfLogForCategory();
          v15 = [(APAdRequester *)self signpostID];
          if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v16 = v15;
            if (os_signpost_enabled(v14))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "AccumulationInterval", "", buf, 2u);
            }
          }
        }

        v17 = [(APAdRequester *)self adAccumulator];
        [v17 accumulate:v10];

        v18 = APLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v28 = [(APAdRequester *)self adAccumulator];
          v19 = [v28 accumulatedItems];
          v20 = self;
          v21 = v7;
          v22 = [v19 count];
          v23 = [v10 identifier];
          v24 = [v10 context];
          v25 = [v24 identifier];
          *buf = v26;
          v34 = v22;
          v7 = v21;
          self = v20;
          v35 = 2114;
          v36 = v23;
          v37 = 2114;
          v38 = v25;
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