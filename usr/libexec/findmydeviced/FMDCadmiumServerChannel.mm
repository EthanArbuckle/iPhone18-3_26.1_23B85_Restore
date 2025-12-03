@interface FMDCadmiumServerChannel
- (FMDCadmiumServerChannel)init;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_logRequestError:(id)error;
- (void)cancelAllRequests;
- (void)cancelRequestWithId:(id)id;
- (void)sendRequestWithId:(id)id toURL:(id)l withHeaders:(id)headers body:(id)body completion:(id)completion;
@end

@implementation FMDCadmiumServerChannel

- (FMDCadmiumServerChannel)init
{
  v15.receiver = self;
  v15.super_class = FMDCadmiumServerChannel;
  v2 = [(FMDCadmiumServerChannel *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfig = v2->_sessionConfig;
    v2->_sessionConfig = v5;

    [(NSURLSessionConfiguration *)v2->_sessionConfig setURLCache:0];
    [(NSURLSessionConfiguration *)v2->_sessionConfig setRequestCachePolicy:1];
    cookieStorage = [(FMDCadmiumServerChannel *)v2 cookieStorage];
    [(NSURLSessionConfiguration *)v2->_sessionConfig setHTTPCookieStorage:cookieStorage];

    v8 = [FMDURLSessionFactory sessionWithConfiguration:v2->_sessionConfig delegate:v2 delegateQueue:v2->_queue];
    session = v2->_session;
    v2->_session = v8;

    v10 = +[NSMutableDictionary dictionary];
    requests = v2->_requests;
    v2->_requests = v10;

    v12 = objc_opt_new();
    requestModifierLock = v2->_requestModifierLock;
    v2->_requestModifierLock = v12;
  }

  return v2;
}

- (void)sendRequestWithId:(id)id toURL:(id)l withHeaders:(id)headers body:(id)body completion:(id)completion
{
  idCopy = id;
  bodyCopy = body;
  completionCopy = completion;
  headersCopy = headers;
  v16 = [NSMutableURLRequest requestWithURL:l cachePolicy:1 timeoutInterval:120.0];
  [v16 setHTTPMethod:@"POST"];
  [v16 setAllHTTPHeaderFields:headersCopy];

  if (bodyCopy)
  {
    [v16 setHTTPBody:bodyCopy];
  }

  session = [(FMDCadmiumServerChannel *)self session];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10016CCA0;
  v24[3] = &unk_1002CF480;
  v25 = idCopy;
  v26 = completionCopy;
  v24[4] = self;
  v18 = idCopy;
  v19 = completionCopy;
  v20 = [session dataTaskWithRequest:v16 completionHandler:v24];

  requestModifierLock = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDCadmiumServerChannel *)self requests];
  [requests setObject:v20 forKeyedSubscript:v18];

  requestModifierLock2 = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];

  [v20 resume];
}

- (void)cancelRequestWithId:(id)id
{
  idCopy = id;
  requestModifierLock = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDCadmiumServerChannel *)self requests];
  v6 = [requests objectForKeyedSubscript:idCopy];

  if (v6)
  {
    requests2 = [(FMDCadmiumServerChannel *)self requests];
    [requests2 removeObjectForKey:idCopy];

    [v6 cancel];
  }

  requestModifierLock2 = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)cancelAllRequests
{
  requestModifierLock = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDCadmiumServerChannel *)self requests];
  v5 = +[NSMutableDictionary dictionary];
  [(FMDCadmiumServerChannel *)self setRequests:v5];

  requestModifierLock2 = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = requests;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v7 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v11), v14}];
        v13 = v12;
        if (v12)
        {
          [v12 cancel];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  v9 = +[FMSystemInfo sharedInstance];
  if ([v9 isInternalBuild])
  {
    v10 = [FMPreferencesUtil BOOLForKey:@"DisableCertPinning" inDomain:kFMDNotBackedUpPrefDomain];
  }

  else
  {
    v10 = 0;
  }

  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];

  if (([host isEqualToString:@"gateway.icloud.com"] & 1) != 0 || v10)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDCadmiumServerChannel Detecting authentication method", buf, 2u);
    }

    protectionSpace2 = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace2 authenticationMethod];
    v16 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

    if (v16)
    {
      v17 = sub_100002880();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDCadmiumServerChannel Setting server trust policy", buf, 2u);
      }

      host2 = [protectionSpace2 host];
      AppleFMiPService = SecPolicyCreateAppleFMiPService();

      if (AppleFMiPService)
      {
        serverTrust = [protectionSpace2 serverTrust];
        v21 = SecTrustSetPolicies(serverTrust, AppleFMiPService);
        CFRelease(AppleFMiPService);
        if (v21)
        {
          v22 = sub_100002880();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error setting the trust policies : %ld", buf, 0xCu);
          }

          v36 = @"FMDUnerlyingErrorKey";
          v23 = [NSError errorWithDomain:@"SecTrustSetPolicies" code:v21 userInfo:0];
          v37 = v23;
          v24 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v25 = [NSError errorWithDomain:@"FMDCadmiumServerChannelPinningErrorDomain" code:0 userInfo:v24];

          v26 = 0;
          v27 = 2;
        }

        else
        {
          *buf = 0;
          if (SecTrustEvaluateWithError(serverTrust, buf))
          {
            v26 = [NSURLCredential credentialForTrust:serverTrust];
            v30 = sub_100002880();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v33 = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "FMDCadmiumServerChannel Pinning success - presenting fmip trust as credential.", v33, 2u);
            }

            v25 = 0;
            v27 = 0;
          }

          else
          {
            v31 = sub_100002880();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_10022A134(v31);
            }

            v39 = @"FMDUnerlyingErrorKey";
            v30 = [NSError errorWithDomain:@"SecTrustEvaluate" code:1 userInfo:0];
            v40 = v30;
            v32 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            v25 = [NSError errorWithDomain:@"FMDCadmiumServerChannelPinningErrorDomain" code:1 userInfo:v32];

            v26 = 0;
            v27 = 2;
          }
        }
      }

      else
      {
        v34 = @"FMDUnerlyingErrorKey";
        v28 = [NSError errorWithDomain:@"SecPolicyCreateAppleFMiPService" code:0 userInfo:0];
        v35 = v28;
        v29 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v27 = 2;
        v25 = [NSError errorWithDomain:@"FMDCadmiumServerChannelPinningErrorDomain" code:2 userInfo:v29];

        v26 = 0;
      }

      [(FMDCadmiumServerChannel *)self _logRequestError:v25];
    }

    else
    {
      v26 = 0;
      v27 = 1;
    }

    (handlerCopy)[2](handlerCopy, v27, v26);
  }
}

- (void)_logRequestError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Network error occured %@", &v10, 0xCu);
    }

    v5 = [(FMDEventLoggerEventError *)[FMDEventLoggerEventDataPeekError alloc] initWithEventName:@"FMDCadmiumServerChannelRequestFailedEventName"];
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"FMDUnerlyingErrorKey"];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = errorCopy;
    }

    [(FMDEventLoggerEventDataPeekError *)v5 setError:v8];
    v9 = +[FMDEventLogger sharedLogger];
    [v9 logEvent:v5];
  }
}

@end