@interface FMRequest
+ (void)initialize;
- (BOOL)canRequestBeRetriedNow;
- (FMRequest)initWithProvider:(id)a3;
- (FMRequestDelegate)delegate;
- (NSMutableDictionary)requestHeaders;
- (NSString)authToken;
- (double)_decayedWaitIntervalForRetryCount:(int64_t)a3;
- (id)_basicAuthValue;
- (id)authTokenType;
- (id)urlSession;
- (int)_consecutiveRetryCountForType:(id)a3;
- (int)_retryCountForType:(id)a3;
- (int64_t)responseErrorType;
- (void)_beginXPCTransaction;
- (void)_disablePowerAssertion;
- (void)_enablePowerAssertion;
- (void)_endXPCTransaction;
- (void)_incrementRetryCountForType:(id)a3;
- (void)_networkCameUp;
- (void)_networkStateChanged:(id)a3;
- (void)_retryNow;
- (void)_retryTimerFired;
- (void)_scheduleRetryAfterTimeInterval:(double)a3;
- (void)cancel;
- (void)checkAndScheduleRetries;
- (void)dealloc;
- (void)deinitializeRequest;
- (void)send;
- (void)setCompletionHandler:(id)a3;
@end

@implementation FMRequest

- (FMRequest)initWithProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMRequest;
  v5 = [(FMRequest *)&v9 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = objc_opt_new();
    [(FMRequest *)v5 setRequestModifierLock:v7];

    [(FMRequest *)v5 setWillRetry:1];
    [(FMRequest *)v5 setProvider:v4];
    [v6 addObserver:v5 selector:"_networkStateChanged:" name:@"com.apple.icloud.fmflocatord.networkChanged" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10003859C(self);
  }

  [(FMRequest *)self deinitializeRequest];
  v4.receiver = self;
  v4.super_class = FMRequest;
  [(FMRequest *)&v4 dealloc];
}

- (void)deinitializeRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(FMRequest *)self fm_logID];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ deinitializing...", &v6, 0xCu);
  }

  [v3 removeObserver:self name:@"com.apple.icloud.fmflocatord.networkChanged" object:0];
}

+ (void)initialize
{
  if (!qword_1000702F8)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = qword_1000702F8;
    qword_1000702F8 = v2;

    qword_100070300 = objc_alloc_init(NSRecursiveLock);

    _objc_release_x1();
  }
}

- (id)urlSession
{
  if (qword_100070320 != -1)
  {
    sub_100038628();
  }

  v3 = qword_100070308;

  return v3;
}

- (NSMutableDictionary)requestHeaders
{
  v3 = objc_opt_new();
  v4 = [(FMRequest *)self delegate];
  v5 = [v4 account];
  v6 = [v5 authId];

  if (v6)
  {
    v7 = [v4 account];
    v8 = [v7 authId];
    [v3 setObject:v8 forKeyedSubscript:@"X-Apple-PrsId"];
  }

  v9 = [v4 account];
  v10 = [v9 apsEnvironment];

  if (v10)
  {
    v11 = [v4 account];
    v12 = [v11 apsEnvironment];
    [v3 setObject:v12 forKeyedSubscript:@"X-Apple-PushEnv"];
  }

  v13 = +[PreferencesMgr sharedInstance];
  if ([v13 userTestApplication])
  {
    [v3 setObject:@"true" forKeyedSubscript:@"X-Apple-Test-Application"];
  }

  [v3 setObject:@"7.0" forKeyedSubscript:@"X-Apple-Find-API-Ver"];
  v14 = +[RealmSupport serverContextHeaderString];
  [v3 fm_safelyMapKey:@"X-Apple-Ctx" toObject:v14];

  v15 = +[SystemConfig sharedInstance];
  v16 = [v15 productType];

  v17 = +[SystemConfig sharedInstance];
  v18 = [v17 buildVersion];

  v19 = [NSString stringWithFormat:@"fmflocatord/%@ %@/%@", @"7.0", v16, v18];
  if (v19)
  {
    [v3 setObject:v19 forKeyedSubscript:@"User-Agent"];
  }

  [v3 setObject:@"application/json" forKeyedSubscript:@"Content-Type"];
  v20 = [(FMRequest *)self _basicAuthValue];
  if (v20)
  {
    [v3 setObject:v20 forKeyedSubscript:@"Authorization"];
  }

  [v3 setObject:@"1.0" forKeyedSubscript:@"X-Apple-Realm-Support"];
  v21 = [v13 httpRequestHeaders];
  if (v21)
  {
    [v3 addEntriesFromDictionary:v21];
  }

  return v3;
}

- (BOOL)canRequestBeRetriedNow
{
  if ([(FMRequest *)self isComplete])
  {
    return 0;
  }

  else
  {
    return ![(FMRequest *)self cancelled];
  }
}

- (NSString)authToken
{
  v2 = [(FMRequest *)self delegate];
  v3 = [v2 account];
  v4 = [v3 authToken];

  return v4;
}

- (id)authTokenType
{
  v2 = [(FMRequest *)self delegate];
  v3 = [v2 account];
  v4 = [v3 authTokenType];

  return v4;
}

- (int64_t)responseErrorType
{
  v3 = [(FMRequest *)self httpResponseError];

  if (v3)
  {
    v4 = [(FMRequest *)self httpResponseError];
    v5 = [v4 domain];
    v6 = [NSURLErrorDomain isEqualToString:v5];

    if (v6)
    {
      v7 = [(FMRequest *)self httpResponseError];
      v8 = [v7 code];

      if (v8 + 1019 < 0x13)
      {
        return qword_100044CA0[v8 + 1019];
      }

      return 2;
    }

    v10 = [(FMRequest *)self httpResponseError];
    v11 = [v10 domain];
    v12 = [NSPOSIXErrorDomain isEqualToString:v11];

    if (v12)
    {
      v13 = [(FMRequest *)self httpResponseError];
      v14 = [v13 code];

      if (v14 == 22)
      {
        return 513;
      }
    }
  }

  v15 = [(FMRequest *)self httpResponseStatus];
  if (v15 == 401)
  {
    return 257;
  }

  if (v15 == 330)
  {
    return 769;
  }

  if ([(FMRequest *)self httpResponseStatus]< 200)
  {
    return 2;
  }

  return 2 * ([(FMRequest *)self httpResponseStatus]> 299);
}

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FMRequest *)self requestModifierLock];
  [v5 lock];

  v6 = objc_retainBlock(v4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  v8 = [(FMRequest *)self requestModifierLock];
  [v8 unlock];
}

- (void)send
{
  v3 = [(FMRequest *)self requestModifierLock];
  [v3 lock];

  if (![(FMRequest *)self inProgress]&& ![(FMRequest *)self cancelled]&& ![(FMRequest *)self isComplete]&& [(FMRequest *)self willRetry])
  {
    v4 = [(FMRequest *)self delegate];
    *v52 = 0;
    v53 = v52;
    v54 = 0x3032000000;
    v55 = sub_1000211A4;
    v56 = sub_1000211B4;
    v57 = 0;
    [(FMRequest *)self setInProgress:1];
    [(FMRequest *)self setAlertFromServerResponse:0];
    v5 = [(FMRequest *)self willSendHandler];

    if (v5)
    {
      v6 = [(FMRequest *)self willSendHandler];
      (v6)[2](v6, self);
    }

    v7 = [(FMRequest *)self completionHandler];
    v8 = [v4 account];
    v9 = [v8 authId];
    if (!v9 || ([(FMRequest *)self authToken], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v9, v11))
    {
      v12 = sub_100002830();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(FMRequest *)self fm_logID];
        *buf = 138412290;
        v59 = v32;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ No credentials found. Not sending the request", buf, 0xCu);
      }

      goto LABEL_49;
    }

    v12 = [(FMRequest *)self requestUrl];
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v8 authId];
      v15 = [(FMRequest *)self authToken];
      sub_10003863C(v14, v15, v67, v13);
    }

    v16 = sub_100002830();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(FMRequest *)self authTokenType];
      *buf = 138412290;
      v59 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Using auth token of type - %@", buf, 0xCu);
    }

    if (!v12)
    {
      v12 = sub_100002830();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(FMRequest *)self fm_logID];
        *buf = 138412290;
        v59 = v33;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ No url found. Not sending the request", buf, 0xCu);
      }

      goto LABEL_49;
    }

    v45 = [v12 host];
    v18 = [v8 authId];
    v19 = [RealmSupport redirectedHostForHost:v45 withContext:v18];
    v20 = *(v53 + 5);
    *(v53 + 5) = v19;

    if (*(v53 + 5) && ([v45 isEqualToString:?] & 1) == 0)
    {
      v21 = [v12 URLByReplacingHost:*(v53 + 5)];

      v12 = v21;
    }

    v44 = [(FMRequest *)self requestHeaders];
    v22 = [(FMRequest *)self requestBody];
    if (v22)
    {
      v51 = 0;
      v23 = [NSJSONSerialization dataWithJSONObject:v22 options:0 error:&v51];
      v24 = v51;
      v43 = v23;
      if (!v23)
      {
        v25 = sub_100002830();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = [(FMRequest *)self fm_logID];
          sub_1000386C4(v26, v66, v25);
        }
      }

      if (v24)
      {
        v27 = sub_100002830();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [(FMRequest *)self fm_logID];
          sub_10003871C(v28, v24, buf, v27);
        }

        v29 = sub_10001BAE0();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *v64 = 138412290;
          v65 = v22;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Encountered a serializing error for the request body : %@", v64, 0xCu);
        }

LABEL_48:
LABEL_49:

        _Block_object_dispose(v52, 8);
        goto LABEL_31;
      }
    }

    else
    {
      v43 = 0;
    }

    v34 = [v44 mutableCopy];
    v35 = [v34 objectForKeyedSubscript:@"Authorization"];

    if (v35)
    {
      [v34 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
    }

    v36 = sub_10001BAE0();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(FMRequest *)self fm_logID];
      *buf = 138412802;
      v59 = v37;
      v60 = 2112;
      v61 = v12;
      v62 = 2112;
      v63 = v34;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Sending %@ to url %@ with headers: \n%@", buf, 0x20u);
    }

    v38 = sub_10001BAE0();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(FMRequest *)self fm_logID];
      *buf = 138412546;
      v59 = v39;
      v60 = 2112;
      v61 = v22;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Sending %@ body dictionary : \n%@ ", buf, 0x16u);
    }

    v24 = [NSMutableURLRequest requestWithURL:v12 cachePolicy:1 timeoutInterval:120.0];
    [v24 setHTTPMethod:@"POST"];
    [v24 setAllHTTPHeaderFields:v44];
    if (v43)
    {
      [v24 setHTTPBody:v43];
    }

    [(FMRequest *)self _enablePowerAssertion];
    if (![(FMRequest *)self totalRetryCount])
    {
      [(FMRequest *)self _beginXPCTransaction];
    }

    v40 = [(FMRequest *)self urlSession];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000211BC;
    v46[3] = &unk_10005E2D8;
    v46[4] = self;
    v47 = 0;
    v50 = v52;
    v48 = v4;
    v49 = v7;
    v41 = [v40 dataTaskWithRequest:v24 completionHandler:v46];
    [(FMRequest *)self setCurrentDataTask:v41];

    v42 = [(FMRequest *)self currentDataTask];
    [v42 resume];

    goto LABEL_48;
  }

  v30 = sub_100002830();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not sending", v52, 2u);
  }

LABEL_31:
  v31 = [(FMRequest *)self requestModifierLock];
  [v31 unlock];
}

- (void)cancel
{
  v3 = [(FMRequest *)self delegate];
  v4 = [(FMRequest *)self requestModifierLock];
  [v4 lock];

  [(FMRequest *)self setCancelled:1];
  [(FMRequest *)self setCurrentDataTask:0];
  [(FMRequest *)self setInProgress:0];
  v5 = [(FMRequest *)self retryTimer];
  [v5 invalidate];

  [(FMRequest *)self setRetryTimer:0];
  [(FMRequest *)self setNextRetryTime:0];
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "endXPCTransaction because cancel", v8, 2u);
  }

  [(FMRequest *)self _endXPCTransaction];
  [(FMRequest *)self _disablePowerAssertion];
  [v3 didCancelRequest:self];
  v7 = [(FMRequest *)self requestModifierLock];
  [v7 unlock];
}

- (id)_basicAuthValue
{
  v3 = [(FMRequest *)self delegate];
  v4 = [v3 account];
  v5 = [v4 authId];
  v6 = [(FMRequest *)self authToken];
  v7 = [NSString stringWithFormat:@"%@:%@", v5, v6];

  v8 = [v3 account];
  v9 = [v8 authId];
  v10 = [(FMRequest *)self authToken];
  v11 = @"(not-nil)";
  if (!v10)
  {
    v11 = @"(nil)";
  }

  v12 = [NSString stringWithFormat:@"%@:%@", v9, v11];

  v13 = sub_100002830();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000388E4();
  }

  [qword_100070300 lock];
  v14 = [qword_1000702F8 objectForKeyedSubscript:v7];
  if (!v14)
  {
    v15 = [v7 dataUsingEncoding:4];
    v16 = v15;
    if (v15 && [v15 length])
    {
      v17 = [v16 base64EncodedString];
      if (v17)
      {
        v14 = [NSString stringWithFormat:@"Basic %@", v17];
        if (v14)
        {
          [qword_1000702F8 setObject:v14 forKeyedSubscript:v7];
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  [qword_100070300 unlock];

  return v14;
}

- (void)_beginXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:v6];
}

- (void)_endXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:v6];
}

- (void)_enablePowerAssertion
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[PowerMgr sharedInstance];
  [v5 powerAssertionEnableWithReason:v6];
}

- (void)_disablePowerAssertion
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[PowerMgr sharedInstance];
  [v5 powerAssertionDisableWithReason:v6];
}

- (void)checkAndScheduleRetries
{
  v3 = [(FMRequest *)self delegate];
  [(FMRequest *)self setNextRetryType:0];
  v4 = [(FMRequest *)self nextRetryType];
  if (v4)
  {
  }

  else if ([(FMRequest *)self isComplete])
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(FMRequest *)self fm_logID];
      v46 = 138412290;
      v47 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Request is complete", &v46, 0xCu);
    }

    [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
  }

  v7 = [(FMRequest *)self nextRetryType];
  if (v7)
  {
  }

  else if (![(FMRequest *)self canRequestBeRetriedNow])
  {
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(FMRequest *)self fm_logID];
      v46 = 138412290;
      v47 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Request cannot be retried anymore. Not scheduling any more retries", &v46, 0xCu);
    }

    [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
  }

  v10 = [(FMRequest *)self nextRetryType];

  v11 = -1.0;
  if (!v10)
  {
    v12 = [(FMRequest *)self httpResponseHeaders];
    v13 = [v12 objectForKeyedSubscript:@"X-Apple-Retry-After"];

    if (v13)
    {
      [v13 doubleValue];
      if (v14 < 0.0)
      {
        v15 = sub_100002830();
        v16 = -1.0;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Server requested that no more retries be done.", &v46, 0xCu);
        }

        v18 = @"NoMoreRetries";
LABEL_23:

        [(FMRequest *)self setNextRetryType:v18];
        v11 = v16;
        goto LABEL_24;
      }

      if (v14 > 0.0)
      {
        v16 = v14;
        v15 = sub_100002830();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(FMRequest *)self fm_logID];
          v46 = 138412546;
          v47 = v19;
          v48 = 2048;
          v49 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Server requested a retry after %f seconds", &v46, 0x16u);
        }

        v18 = @"ServerDelayedRetry";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

  v20 = [(FMRequest *)self nextRetryType];
  if (v20)
  {
  }

  else if ([(FMRequest *)self responseErrorType]== 257)
  {
    [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
  }

  v21 = [(FMRequest *)self nextRetryType];
  if (v21)
  {
    v22 = v21;
LABEL_31:

    goto LABEL_34;
  }

  if ([(FMRequest *)self responseErrorType]== 514 && ![(FMRequest *)self _retryCountForType:@"TryOriginalHost"])
  {
    [(FMRequest *)self setNextRetryType:@"TryOriginalHost"];
    v22 = [v3 account];
    v26 = [v22 authId];
    [RealmSupport clearCachedHostsWithContext:v26];

    v11 = 0.0;
    goto LABEL_31;
  }

LABEL_34:
  v23 = [(FMRequest *)self nextRetryType];
  if (v23)
  {
  }

  else if (([(FMRequest *)self responseErrorType]& 0x200) != 0)
  {
    v24 = [(FMRequest *)self _retryCountForType:@"TimerBasedNetworkRetry"];
    if ([(FMRequest *)self maxTimerBasedNetworkRetries]== -1 || [(FMRequest *)self maxTimerBasedNetworkRetries]> v24)
    {
      [(FMRequest *)self setNextRetryType:@"TimerBasedNetworkRetry"];
      [(FMRequest *)self _decayedWaitIntervalForRetryCount:v24];
      v11 = v25;
    }

    else
    {
      v27 = [(FMRequest *)self _consecutiveRetryCountForType:@"NotificationBasedNetworkRetry"];
      if ([(FMRequest *)self maxConsecutiveNetworkNotificationRetries]== -1 || [(FMRequest *)self maxConsecutiveNetworkNotificationRetries]> v27)
      {
        [(FMRequest *)self setNextRetryType:@"NotificationBasedNetworkRetry"];
        v28 = sub_100002830();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%@ Waiting for a network-up notification to retry again", &v46, 0xCu);
        }

        v11 = -1.0;
      }

      else
      {
        [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
        v30 = sub_100002830();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of consecutive network-up notification based retries", &v46, 0xCu);
        }
      }
    }
  }

  v32 = [(FMRequest *)self nextRetryType];
  if (v32)
  {
  }

  else if ([(FMRequest *)self responseErrorType]== 769)
  {
    v33 = [(FMRequest *)self _retryCountForType:@"RedirectRetry"];
    if (v33)
    {
      v34 = v33;
      if ([(FMRequest *)self maxNonNetworkRelatedRetries]== -1 || [(FMRequest *)self maxNonNetworkRelatedRetries]> v34)
      {
        [(FMRequest *)self setNextRetryType:@"RedirectRetry"];
        [(FMRequest *)self _decayedWaitIntervalForRetryCount:v34];
        v11 = v35;
      }

      else
      {
        [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
        v36 = sub_100002830();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of redirect retries", &v46, 0xCu);
        }
      }
    }

    else
    {
      [(FMRequest *)self setNextRetryType:@"RedirectRetry"];
      v11 = 0.0;
    }
  }

  v38 = [(FMRequest *)self nextRetryType];

  if (!v38)
  {
    v39 = [NSNumber numberWithInteger:[(FMRequest *)self httpResponseStatus]];
    v40 = [v39 stringValue];

    v41 = [(FMRequest *)self _retryCountForType:v40];
    if ([(FMRequest *)self maxNonNetworkRelatedRetries]== -1 || [(FMRequest *)self maxNonNetworkRelatedRetries]> v41)
    {
      [(FMRequest *)self setNextRetryType:v40];
      [(FMRequest *)self _decayedWaitIntervalForRetryCount:v41];
      v11 = v42;
    }

    else
    {
      [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
      v43 = sub_100002830();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [(FMRequest *)self fm_logID];
        v46 = 138412546;
        v47 = v44;
        v48 = 2112;
        v49 = *&v40;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of retries for status code %@", &v46, 0x16u);
      }
    }
  }

  v45 = [(FMRequest *)self nextRetryType];
  -[FMRequest setWillRetry:](self, "setWillRetry:", [v45 isEqualToString:@"NoMoreRetries"] ^ 1);

  [(FMRequest *)self _scheduleRetryAfterTimeInterval:v11];
}

- (double)_decayedWaitIntervalForRetryCount:(int64_t)a3
{
  [(FMRequest *)self firstRetryInterval];
  v6 = v5;
  [(FMRequest *)self retryIntervalDecayFactor];
  v8 = v6 * pow(v7, a3);
  [(FMRequest *)self maxRetryInterval];
  if (v9 <= -1.0)
  {
    return v8;
  }

  [(FMRequest *)self maxRetryInterval];
  if (v8 <= v10)
  {
    return v8;
  }

  [(FMRequest *)self maxRetryInterval];
  return result;
}

- (void)_retryTimerFired
{
  v3 = [(FMRequest *)self retryTimer];
  [v3 invalidate];

  [(FMRequest *)self setRetryTimer:0];
  [(FMRequest *)self setNextRetryTime:0];
  if ([(FMRequest *)self inProgress])
  {
    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(FMRequest *)self fm_logID];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ Retry time arrived, but request cannot be retried anymore or retry is already in progress. Not retrying", &v6, 0xCu);
    }
  }

  else
  {

    [(FMRequest *)self _retryNow];
  }
}

- (void)_retryNow
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ Retrying request now...", &v6, 0xCu);
  }

  v4 = +[NSDate date];
  [(FMRequest *)self setLastRetryTime:v4];

  v5 = [(FMRequest *)self nextRetryType];
  [(FMRequest *)self _incrementRetryCountForType:v5];

  [(FMRequest *)self send];
}

- (void)_networkCameUp
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100038958(self);
  }

  if ([(FMRequest *)self canRequestBeRetriedNow]&& ![(FMRequest *)self inProgress])
  {
    v4 = [(FMRequest *)self nextRetryType];
    if ([v4 isEqualToString:@"TimerBasedNetworkRetry"])
    {
    }

    else
    {
      v5 = [(FMRequest *)self nextRetryType];
      v6 = [v5 isEqualToString:@"NotificationBasedNetworkRetry"];

      if (!v6)
      {
        return;
      }
    }

    v7 = +[NSDate date];
    v8 = [(FMRequest *)self nextRetryType];
    if ([v8 isEqualToString:@"NotificationBasedNetworkRetry"])
    {
      v9 = [(FMRequest *)self nextRetryTime];

      if (v9)
      {
        v10 = sub_100002830();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(FMRequest *)self fm_logID];
          v12 = [(FMRequest *)self nextRetryTime];
          v24 = 138412546;
          v25 = v11;
          v26 = 2112;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ Network up retry already pending for %@", &v24, 0x16u);
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    v13 = [(FMRequest *)self lastRetryType];
    if ([v13 isEqualToString:@"NotificationBasedNetworkRetry"])
    {
      v14 = [(FMRequest *)self lastRetryTime];

      if (v14)
      {
        v15 = [(FMRequest *)self lastRetryTime];
        [v7 timeIntervalSinceDate:v15];
        v17 = v16;

        if (v17 >= 60.0 || v17 < 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = 60.0 - v17;
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v19 = 0.0;
LABEL_23:
    v20 = [(FMRequest *)self nextRetryTime];

    if (!v20 || (-[FMRequest nextRetryTime](self, "nextRetryTime"), v21 = objc_claimAutoreleasedReturnValue(), [v21 timeIntervalSinceDate:v7], v23 = v22, v21, v23 < 0.0) || v23 >= v19)
    {
      [(FMRequest *)self _scheduleRetryAfterTimeInterval:v19];
      goto LABEL_30;
    }

    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000389E4(self);
    }

LABEL_28:

LABEL_30:
  }
}

- (void)_scheduleRetryAfterTimeInterval:(double)a3
{
  if (a3 <= 0.0)
  {
    v15 = sub_100002830();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (a3 >= 0.0)
    {
      if (v16)
      {
        v18 = [(FMRequest *)self fm_logID];
        v19 = [(FMRequest *)self nextRetryType];
        *buf = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@ Scheduling retry of type '%@' to occur now", buf, 0x16u);
      }

      v20 = +[NSDate date];
      [(FMRequest *)self setNextRetryTime:v20];

      v21 = +[NSThread currentThread];
      [(FMRequest *)self performSelector:"_retryNow" onThread:v21 withObject:0 waitUntilDone:0];
    }

    else
    {
      if (v16)
      {
        v17 = [(FMRequest *)self fm_logID];
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@ Not scheduling any retry", buf, 0xCu);
      }

      [(FMRequest *)self setNextRetryTime:0];
    }
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:a3];
    [(FMRequest *)self setNextRetryTime:v5];

    v6 = sub_100002830();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(FMRequest *)self fm_logID];
      v8 = [(FMRequest *)self nextRetryType];
      v9 = [(FMRequest *)self nextRetryTime];
      *buf = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ Scheduling retry of type '%@' to occur at %@", buf, 0x20u);
    }

    v10 = [NSString stringWithFormat:@"com.apple.icloud.fmflocatord.retry.%@-%X", objc_opt_class(), self];
    v11 = [[PCPersistentTimer alloc] initWithTimeInterval:v10 serviceIdentifier:self target:"_retryTimerFired" selector:0 userInfo:a3];
    [(FMRequest *)self setRetryTimer:v11];

    v12 = [(FMRequest *)self retryTimer];
    [v12 setMinimumEarlyFireProportion:0.75];

    v13 = [(FMRequest *)self retryTimer];
    v14 = +[NSRunLoop currentRunLoop];
    [v13 scheduleInRunLoop:v14];
  }
}

- (int)_retryCountForType:(id)a3
{
  v4 = a3;
  v5 = [(FMRequest *)self totalRetriesByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_consecutiveRetryCountForType:(id)a3
{
  v4 = a3;
  v5 = [(FMRequest *)self consecutiveRetriesByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_incrementRetryCountForType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = v4;
    v5 = [(FMRequest *)self totalRetriesByType];

    if (!v5)
    {
      v6 = +[NSMutableDictionary dictionary];
      [(FMRequest *)self setTotalRetriesByType:v6];

      v7 = +[NSMutableDictionary dictionary];
      [(FMRequest *)self setConsecutiveRetriesByType:v7];
    }

    v8 = [(FMRequest *)self totalRetriesByType];
    v9 = [v8 objectForKeyedSubscript:v18];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    v11 = [(FMRequest *)self totalRetriesByType];
    [v11 setObject:v10 forKeyedSubscript:v18];

    v12 = [(FMRequest *)self consecutiveRetriesByType];
    v13 = [v12 objectForKeyedSubscript:v18];

    v14 = [(FMRequest *)self lastRetryType];
    v15 = [v18 isEqualToString:v14];

    if (v15)
    {
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
    }

    else
    {
      v16 = &off_100062F70;
    }

    v17 = [(FMRequest *)self consecutiveRetriesByType];
    [v17 setObject:v16 forKeyedSubscript:v18];

    v4 = v18;
  }

  ++self->_totalRetryCount;
}

- (void)_networkStateChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"IsNetworkAvailable"];

  if (v5 && [v5 BOOLValue])
  {
    [(FMRequest *)self _networkCameUp];
  }

  _objc_release_x1();
}

- (FMRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end