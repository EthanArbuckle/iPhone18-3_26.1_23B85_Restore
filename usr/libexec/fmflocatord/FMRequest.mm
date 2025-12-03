@interface FMRequest
+ (void)initialize;
- (BOOL)canRequestBeRetriedNow;
- (FMRequest)initWithProvider:(id)provider;
- (FMRequestDelegate)delegate;
- (NSMutableDictionary)requestHeaders;
- (NSString)authToken;
- (double)_decayedWaitIntervalForRetryCount:(int64_t)count;
- (id)_basicAuthValue;
- (id)authTokenType;
- (id)urlSession;
- (int)_consecutiveRetryCountForType:(id)type;
- (int)_retryCountForType:(id)type;
- (int64_t)responseErrorType;
- (void)_beginXPCTransaction;
- (void)_disablePowerAssertion;
- (void)_enablePowerAssertion;
- (void)_endXPCTransaction;
- (void)_incrementRetryCountForType:(id)type;
- (void)_networkCameUp;
- (void)_networkStateChanged:(id)changed;
- (void)_retryNow;
- (void)_retryTimerFired;
- (void)_scheduleRetryAfterTimeInterval:(double)interval;
- (void)cancel;
- (void)checkAndScheduleRetries;
- (void)dealloc;
- (void)deinitializeRequest;
- (void)send;
- (void)setCompletionHandler:(id)handler;
@end

@implementation FMRequest

- (FMRequest)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = FMRequest;
  v5 = [(FMRequest *)&v9 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = objc_opt_new();
    [(FMRequest *)v5 setRequestModifierLock:v7];

    [(FMRequest *)v5 setWillRetry:1];
    [(FMRequest *)v5 setProvider:providerCopy];
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
    fm_logID = [(FMRequest *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
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
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authId = [account authId];

  if (authId)
  {
    account2 = [delegate account];
    authId2 = [account2 authId];
    [v3 setObject:authId2 forKeyedSubscript:@"X-Apple-PrsId"];
  }

  account3 = [delegate account];
  apsEnvironment = [account3 apsEnvironment];

  if (apsEnvironment)
  {
    account4 = [delegate account];
    apsEnvironment2 = [account4 apsEnvironment];
    [v3 setObject:apsEnvironment2 forKeyedSubscript:@"X-Apple-PushEnv"];
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
  productType = [v15 productType];

  v17 = +[SystemConfig sharedInstance];
  buildVersion = [v17 buildVersion];

  v19 = [NSString stringWithFormat:@"fmflocatord/%@ %@/%@", @"7.0", productType, buildVersion];
  if (v19)
  {
    [v3 setObject:v19 forKeyedSubscript:@"User-Agent"];
  }

  [v3 setObject:@"application/json" forKeyedSubscript:@"Content-Type"];
  _basicAuthValue = [(FMRequest *)self _basicAuthValue];
  if (_basicAuthValue)
  {
    [v3 setObject:_basicAuthValue forKeyedSubscript:@"Authorization"];
  }

  [v3 setObject:@"1.0" forKeyedSubscript:@"X-Apple-Realm-Support"];
  httpRequestHeaders = [v13 httpRequestHeaders];
  if (httpRequestHeaders)
  {
    [v3 addEntriesFromDictionary:httpRequestHeaders];
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
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authToken = [account authToken];

  return authToken;
}

- (id)authTokenType
{
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authTokenType = [account authTokenType];

  return authTokenType;
}

- (int64_t)responseErrorType
{
  httpResponseError = [(FMRequest *)self httpResponseError];

  if (httpResponseError)
  {
    httpResponseError2 = [(FMRequest *)self httpResponseError];
    domain = [httpResponseError2 domain];
    v6 = [NSURLErrorDomain isEqualToString:domain];

    if (v6)
    {
      httpResponseError3 = [(FMRequest *)self httpResponseError];
      code = [httpResponseError3 code];

      if (code + 1019 < 0x13)
      {
        return qword_100044CA0[code + 1019];
      }

      return 2;
    }

    httpResponseError4 = [(FMRequest *)self httpResponseError];
    domain2 = [httpResponseError4 domain];
    v12 = [NSPOSIXErrorDomain isEqualToString:domain2];

    if (v12)
    {
      httpResponseError5 = [(FMRequest *)self httpResponseError];
      code2 = [httpResponseError5 code];

      if (code2 == 22)
      {
        return 513;
      }
    }
  }

  httpResponseStatus = [(FMRequest *)self httpResponseStatus];
  if (httpResponseStatus == 401)
  {
    return 257;
  }

  if (httpResponseStatus == 330)
  {
    return 769;
  }

  if ([(FMRequest *)self httpResponseStatus]< 200)
  {
    return 2;
  }

  return 2 * ([(FMRequest *)self httpResponseStatus]> 299);
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestModifierLock = [(FMRequest *)self requestModifierLock];
  [requestModifierLock lock];

  v6 = objc_retainBlock(handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  requestModifierLock2 = [(FMRequest *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)send
{
  requestModifierLock = [(FMRequest *)self requestModifierLock];
  [requestModifierLock lock];

  if (![(FMRequest *)self inProgress]&& ![(FMRequest *)self cancelled]&& ![(FMRequest *)self isComplete]&& [(FMRequest *)self willRetry])
  {
    delegate = [(FMRequest *)self delegate];
    *v52 = 0;
    v53 = v52;
    v54 = 0x3032000000;
    v55 = sub_1000211A4;
    v56 = sub_1000211B4;
    v57 = 0;
    [(FMRequest *)self setInProgress:1];
    [(FMRequest *)self setAlertFromServerResponse:0];
    willSendHandler = [(FMRequest *)self willSendHandler];

    if (willSendHandler)
    {
      willSendHandler2 = [(FMRequest *)self willSendHandler];
      (willSendHandler2)[2](willSendHandler2, self);
    }

    completionHandler = [(FMRequest *)self completionHandler];
    account = [delegate account];
    authId = [account authId];
    if (!authId || ([(FMRequest *)self authToken], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, authId, v11))
    {
      requestUrl = sub_100002830();
      if (os_log_type_enabled(requestUrl, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [(FMRequest *)self fm_logID];
        *buf = 138412290;
        v59 = fm_logID;
        _os_log_impl(&_mh_execute_header, requestUrl, OS_LOG_TYPE_DEFAULT, "%@ No credentials found. Not sending the request", buf, 0xCu);
      }

      goto LABEL_49;
    }

    requestUrl = [(FMRequest *)self requestUrl];
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      authId2 = [account authId];
      authToken = [(FMRequest *)self authToken];
      sub_10003863C(authId2, authToken, v67, v13);
    }

    v16 = sub_100002830();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      authTokenType = [(FMRequest *)self authTokenType];
      *buf = 138412290;
      v59 = authTokenType;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Using auth token of type - %@", buf, 0xCu);
    }

    if (!requestUrl)
    {
      requestUrl = sub_100002830();
      if (os_log_type_enabled(requestUrl, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID2 = [(FMRequest *)self fm_logID];
        *buf = 138412290;
        v59 = fm_logID2;
        _os_log_impl(&_mh_execute_header, requestUrl, OS_LOG_TYPE_DEFAULT, "%@ No url found. Not sending the request", buf, 0xCu);
      }

      goto LABEL_49;
    }

    host = [requestUrl host];
    authId3 = [account authId];
    v19 = [RealmSupport redirectedHostForHost:host withContext:authId3];
    v20 = *(v53 + 5);
    *(v53 + 5) = v19;

    if (*(v53 + 5) && ([host isEqualToString:?] & 1) == 0)
    {
      v21 = [requestUrl URLByReplacingHost:*(v53 + 5)];

      requestUrl = v21;
    }

    requestHeaders = [(FMRequest *)self requestHeaders];
    requestBody = [(FMRequest *)self requestBody];
    if (requestBody)
    {
      v51 = 0;
      v23 = [NSJSONSerialization dataWithJSONObject:requestBody options:0 error:&v51];
      v24 = v51;
      v43 = v23;
      if (!v23)
      {
        v25 = sub_100002830();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          fm_logID3 = [(FMRequest *)self fm_logID];
          sub_1000386C4(fm_logID3, v66, v25);
        }
      }

      if (v24)
      {
        v27 = sub_100002830();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          fm_logID4 = [(FMRequest *)self fm_logID];
          sub_10003871C(fm_logID4, v24, buf, v27);
        }

        v29 = sub_10001BAE0();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *v64 = 138412290;
          v65 = requestBody;
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

    v34 = [requestHeaders mutableCopy];
    v35 = [v34 objectForKeyedSubscript:@"Authorization"];

    if (v35)
    {
      [v34 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
    }

    v36 = sub_10001BAE0();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID5 = [(FMRequest *)self fm_logID];
      *buf = 138412802;
      v59 = fm_logID5;
      v60 = 2112;
      v61 = requestUrl;
      v62 = 2112;
      v63 = v34;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Sending %@ to url %@ with headers: \n%@", buf, 0x20u);
    }

    v38 = sub_10001BAE0();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID6 = [(FMRequest *)self fm_logID];
      *buf = 138412546;
      v59 = fm_logID6;
      v60 = 2112;
      v61 = requestBody;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Sending %@ body dictionary : \n%@ ", buf, 0x16u);
    }

    v24 = [NSMutableURLRequest requestWithURL:requestUrl cachePolicy:1 timeoutInterval:120.0];
    [v24 setHTTPMethod:@"POST"];
    [v24 setAllHTTPHeaderFields:requestHeaders];
    if (v43)
    {
      [v24 setHTTPBody:v43];
    }

    [(FMRequest *)self _enablePowerAssertion];
    if (![(FMRequest *)self totalRetryCount])
    {
      [(FMRequest *)self _beginXPCTransaction];
    }

    urlSession = [(FMRequest *)self urlSession];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000211BC;
    v46[3] = &unk_10005E2D8;
    v46[4] = self;
    v47 = 0;
    v50 = v52;
    v48 = delegate;
    v49 = completionHandler;
    v41 = [urlSession dataTaskWithRequest:v24 completionHandler:v46];
    [(FMRequest *)self setCurrentDataTask:v41];

    currentDataTask = [(FMRequest *)self currentDataTask];
    [currentDataTask resume];

    goto LABEL_48;
  }

  v30 = sub_100002830();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not sending", v52, 2u);
  }

LABEL_31:
  requestModifierLock2 = [(FMRequest *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)cancel
{
  delegate = [(FMRequest *)self delegate];
  requestModifierLock = [(FMRequest *)self requestModifierLock];
  [requestModifierLock lock];

  [(FMRequest *)self setCancelled:1];
  [(FMRequest *)self setCurrentDataTask:0];
  [(FMRequest *)self setInProgress:0];
  retryTimer = [(FMRequest *)self retryTimer];
  [retryTimer invalidate];

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
  [delegate didCancelRequest:self];
  requestModifierLock2 = [(FMRequest *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (id)_basicAuthValue
{
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authId = [account authId];
  authToken = [(FMRequest *)self authToken];
  v7 = [NSString stringWithFormat:@"%@:%@", authId, authToken];

  account2 = [delegate account];
  authId2 = [account2 authId];
  authToken2 = [(FMRequest *)self authToken];
  v11 = @"(not-nil)";
  if (!authToken2)
  {
    v11 = @"(nil)";
  }

  v12 = [NSString stringWithFormat:@"%@:%@", authId2, v11];

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
      base64EncodedString = [v16 base64EncodedString];
      if (base64EncodedString)
      {
        v14 = [NSString stringWithFormat:@"Basic %@", base64EncodedString];
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
  delegate = [(FMRequest *)self delegate];
  [(FMRequest *)self setNextRetryType:0];
  nextRetryType = [(FMRequest *)self nextRetryType];
  if (nextRetryType)
  {
  }

  else if ([(FMRequest *)self isComplete])
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      fm_logID = [(FMRequest *)self fm_logID];
      v46 = 138412290;
      v47 = fm_logID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Request is complete", &v46, 0xCu);
    }

    [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType2 = [(FMRequest *)self nextRetryType];
  if (nextRetryType2)
  {
  }

  else if (![(FMRequest *)self canRequestBeRetriedNow])
  {
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      fm_logID2 = [(FMRequest *)self fm_logID];
      v46 = 138412290;
      v47 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Request cannot be retried anymore. Not scheduling any more retries", &v46, 0xCu);
    }

    [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType3 = [(FMRequest *)self nextRetryType];

  v11 = -1.0;
  if (!nextRetryType3)
  {
    httpResponseHeaders = [(FMRequest *)self httpResponseHeaders];
    v13 = [httpResponseHeaders objectForKeyedSubscript:@"X-Apple-Retry-After"];

    if (v13)
    {
      [v13 doubleValue];
      if (v14 < 0.0)
      {
        v15 = sub_100002830();
        v16 = -1.0;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          fm_logID3 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = fm_logID3;
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
          fm_logID4 = [(FMRequest *)self fm_logID];
          v46 = 138412546;
          v47 = fm_logID4;
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

  nextRetryType4 = [(FMRequest *)self nextRetryType];
  if (nextRetryType4)
  {
  }

  else if ([(FMRequest *)self responseErrorType]== 257)
  {
    [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType5 = [(FMRequest *)self nextRetryType];
  if (nextRetryType5)
  {
    account = nextRetryType5;
LABEL_31:

    goto LABEL_34;
  }

  if ([(FMRequest *)self responseErrorType]== 514 && ![(FMRequest *)self _retryCountForType:@"TryOriginalHost"])
  {
    [(FMRequest *)self setNextRetryType:@"TryOriginalHost"];
    account = [delegate account];
    authId = [account authId];
    [RealmSupport clearCachedHostsWithContext:authId];

    v11 = 0.0;
    goto LABEL_31;
  }

LABEL_34:
  nextRetryType6 = [(FMRequest *)self nextRetryType];
  if (nextRetryType6)
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
          fm_logID5 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = fm_logID5;
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
          fm_logID6 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = fm_logID6;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of consecutive network-up notification based retries", &v46, 0xCu);
        }
      }
    }
  }

  nextRetryType7 = [(FMRequest *)self nextRetryType];
  if (nextRetryType7)
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
          fm_logID7 = [(FMRequest *)self fm_logID];
          v46 = 138412290;
          v47 = fm_logID7;
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

  nextRetryType8 = [(FMRequest *)self nextRetryType];

  if (!nextRetryType8)
  {
    v39 = [NSNumber numberWithInteger:[(FMRequest *)self httpResponseStatus]];
    stringValue = [v39 stringValue];

    v41 = [(FMRequest *)self _retryCountForType:stringValue];
    if ([(FMRequest *)self maxNonNetworkRelatedRetries]== -1 || [(FMRequest *)self maxNonNetworkRelatedRetries]> v41)
    {
      [(FMRequest *)self setNextRetryType:stringValue];
      [(FMRequest *)self _decayedWaitIntervalForRetryCount:v41];
      v11 = v42;
    }

    else
    {
      [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
      v43 = sub_100002830();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        fm_logID8 = [(FMRequest *)self fm_logID];
        v46 = 138412546;
        v47 = fm_logID8;
        v48 = 2112;
        v49 = *&stringValue;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of retries for status code %@", &v46, 0x16u);
      }
    }
  }

  nextRetryType9 = [(FMRequest *)self nextRetryType];
  -[FMRequest setWillRetry:](self, "setWillRetry:", [nextRetryType9 isEqualToString:@"NoMoreRetries"] ^ 1);

  [(FMRequest *)self _scheduleRetryAfterTimeInterval:v11];
}

- (double)_decayedWaitIntervalForRetryCount:(int64_t)count
{
  [(FMRequest *)self firstRetryInterval];
  v6 = v5;
  [(FMRequest *)self retryIntervalDecayFactor];
  v8 = v6 * pow(v7, count);
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
  retryTimer = [(FMRequest *)self retryTimer];
  [retryTimer invalidate];

  [(FMRequest *)self setRetryTimer:0];
  [(FMRequest *)self setNextRetryTime:0];
  if ([(FMRequest *)self inProgress])
  {
    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      fm_logID = [(FMRequest *)self fm_logID];
      v6 = 138412290;
      v7 = fm_logID;
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

  nextRetryType = [(FMRequest *)self nextRetryType];
  [(FMRequest *)self _incrementRetryCountForType:nextRetryType];

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
    nextRetryType = [(FMRequest *)self nextRetryType];
    if ([nextRetryType isEqualToString:@"TimerBasedNetworkRetry"])
    {
    }

    else
    {
      nextRetryType2 = [(FMRequest *)self nextRetryType];
      v6 = [nextRetryType2 isEqualToString:@"NotificationBasedNetworkRetry"];

      if (!v6)
      {
        return;
      }
    }

    v7 = +[NSDate date];
    nextRetryType3 = [(FMRequest *)self nextRetryType];
    if ([nextRetryType3 isEqualToString:@"NotificationBasedNetworkRetry"])
    {
      nextRetryTime = [(FMRequest *)self nextRetryTime];

      if (nextRetryTime)
      {
        v10 = sub_100002830();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          fm_logID = [(FMRequest *)self fm_logID];
          nextRetryTime2 = [(FMRequest *)self nextRetryTime];
          v24 = 138412546;
          v25 = fm_logID;
          v26 = 2112;
          v27 = nextRetryTime2;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ Network up retry already pending for %@", &v24, 0x16u);
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    lastRetryType = [(FMRequest *)self lastRetryType];
    if ([lastRetryType isEqualToString:@"NotificationBasedNetworkRetry"])
    {
      lastRetryTime = [(FMRequest *)self lastRetryTime];

      if (lastRetryTime)
      {
        lastRetryTime2 = [(FMRequest *)self lastRetryTime];
        [v7 timeIntervalSinceDate:lastRetryTime2];
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
    nextRetryTime3 = [(FMRequest *)self nextRetryTime];

    if (!nextRetryTime3 || (-[FMRequest nextRetryTime](self, "nextRetryTime"), v21 = objc_claimAutoreleasedReturnValue(), [v21 timeIntervalSinceDate:v7], v23 = v22, v21, v23 < 0.0) || v23 >= v19)
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

- (void)_scheduleRetryAfterTimeInterval:(double)interval
{
  if (interval <= 0.0)
  {
    v15 = sub_100002830();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (interval >= 0.0)
    {
      if (v16)
      {
        fm_logID = [(FMRequest *)self fm_logID];
        nextRetryType = [(FMRequest *)self nextRetryType];
        *buf = 138412546;
        v23 = fm_logID;
        v24 = 2112;
        v25 = nextRetryType;
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
        fm_logID2 = [(FMRequest *)self fm_logID];
        *buf = 138412290;
        v23 = fm_logID2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@ Not scheduling any retry", buf, 0xCu);
      }

      [(FMRequest *)self setNextRetryTime:0];
    }
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:interval];
    [(FMRequest *)self setNextRetryTime:v5];

    v6 = sub_100002830();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      fm_logID3 = [(FMRequest *)self fm_logID];
      nextRetryType2 = [(FMRequest *)self nextRetryType];
      nextRetryTime = [(FMRequest *)self nextRetryTime];
      *buf = 138412802;
      v23 = fm_logID3;
      v24 = 2112;
      v25 = nextRetryType2;
      v26 = 2112;
      v27 = nextRetryTime;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ Scheduling retry of type '%@' to occur at %@", buf, 0x20u);
    }

    v10 = [NSString stringWithFormat:@"com.apple.icloud.fmflocatord.retry.%@-%X", objc_opt_class(), self];
    v11 = [[PCPersistentTimer alloc] initWithTimeInterval:v10 serviceIdentifier:self target:"_retryTimerFired" selector:0 userInfo:interval];
    [(FMRequest *)self setRetryTimer:v11];

    retryTimer = [(FMRequest *)self retryTimer];
    [retryTimer setMinimumEarlyFireProportion:0.75];

    retryTimer2 = [(FMRequest *)self retryTimer];
    v14 = +[NSRunLoop currentRunLoop];
    [retryTimer2 scheduleInRunLoop:v14];
  }
}

- (int)_retryCountForType:(id)type
{
  typeCopy = type;
  totalRetriesByType = [(FMRequest *)self totalRetriesByType];
  v6 = [totalRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)_consecutiveRetryCountForType:(id)type
{
  typeCopy = type;
  consecutiveRetriesByType = [(FMRequest *)self consecutiveRetriesByType];
  v6 = [consecutiveRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_incrementRetryCountForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v18 = typeCopy;
    totalRetriesByType = [(FMRequest *)self totalRetriesByType];

    if (!totalRetriesByType)
    {
      v6 = +[NSMutableDictionary dictionary];
      [(FMRequest *)self setTotalRetriesByType:v6];

      v7 = +[NSMutableDictionary dictionary];
      [(FMRequest *)self setConsecutiveRetriesByType:v7];
    }

    totalRetriesByType2 = [(FMRequest *)self totalRetriesByType];
    v9 = [totalRetriesByType2 objectForKeyedSubscript:v18];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    totalRetriesByType3 = [(FMRequest *)self totalRetriesByType];
    [totalRetriesByType3 setObject:v10 forKeyedSubscript:v18];

    consecutiveRetriesByType = [(FMRequest *)self consecutiveRetriesByType];
    v13 = [consecutiveRetriesByType objectForKeyedSubscript:v18];

    lastRetryType = [(FMRequest *)self lastRetryType];
    v15 = [v18 isEqualToString:lastRetryType];

    if (v15)
    {
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
    }

    else
    {
      v16 = &off_100062F70;
    }

    consecutiveRetriesByType2 = [(FMRequest *)self consecutiveRetriesByType];
    [consecutiveRetriesByType2 setObject:v16 forKeyedSubscript:v18];

    typeCopy = v18;
  }

  ++self->_totalRetryCount;
}

- (void)_networkStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"IsNetworkAvailable"];

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