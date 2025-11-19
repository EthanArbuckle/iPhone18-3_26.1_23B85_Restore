@interface FMDDirectServerChannel
- (FMDDirectServerChannel)init;
- (NSHTTPCookieStorage)cookieStorage;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)_logRequestError:(id)a3;
- (void)cancelAllRequests;
- (void)cancelRequestWithId:(id)a3;
- (void)sendRequestWithId:(id)a3 toURL:(id)a4 withHeaders:(id)a5 body:(id)a6 completion:(id)a7;
@end

@implementation FMDDirectServerChannel

- (FMDDirectServerChannel)init
{
  v18.receiver = self;
  v18.super_class = FMDDirectServerChannel;
  v2 = [(FMDDirectServerChannel *)&v18 init];
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
    v7 = [(FMDDirectServerChannel *)v2 cookieStorage];
    [(NSURLSessionConfiguration *)v2->_sessionConfig setHTTPCookieStorage:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 bundleIdentifier];

    v10 = [[AKAppleIDSession alloc] initWithIdentifier:v9];
    [(NSURLSessionConfiguration *)v2->_sessionConfig set_appleIDContext:v10];
    v11 = [FMDURLSessionFactory sessionWithConfiguration:v2->_sessionConfig delegate:v2 delegateQueue:v2->_queue];
    session = v2->_session;
    v2->_session = v11;

    v13 = +[NSMutableDictionary dictionary];
    requests = v2->_requests;
    v2->_requests = v13;

    v15 = objc_opt_new();
    requestModifierLock = v2->_requestModifierLock;
    v2->_requestModifierLock = v15;
  }

  return v2;
}

- (void)sendRequestWithId:(id)a3 toURL:(id)a4 withHeaders:(id)a5 body:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = [NSMutableURLRequest requestWithURL:a4 cachePolicy:1 timeoutInterval:120.0];
  [v16 setHTTPMethod:@"POST"];
  [v16 setAllHTTPHeaderFields:v15];

  if (v13)
  {
    [v16 setHTTPBody:v13];
  }

  v17 = [(FMDDirectServerChannel *)self session];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10018372C;
  v24[3] = &unk_1002CF480;
  v25 = v12;
  v26 = v14;
  v24[4] = self;
  v18 = v12;
  v19 = v14;
  v20 = [v17 dataTaskWithRequest:v16 completionHandler:v24];

  v21 = [(FMDDirectServerChannel *)self requestModifierLock];
  [v21 lock];

  v22 = [(FMDDirectServerChannel *)self requests];
  [v22 setObject:v20 forKeyedSubscript:v18];

  v23 = [(FMDDirectServerChannel *)self requestModifierLock];
  [v23 unlock];

  [v20 resume];
}

- (void)cancelRequestWithId:(id)a3
{
  v9 = a3;
  v4 = [(FMDDirectServerChannel *)self requestModifierLock];
  [v4 lock];

  v5 = [(FMDDirectServerChannel *)self requests];
  v6 = [v5 objectForKeyedSubscript:v9];

  if (v6)
  {
    v7 = [(FMDDirectServerChannel *)self requests];
    [v7 removeObjectForKey:v9];

    [v6 cancel];
  }

  v8 = [(FMDDirectServerChannel *)self requestModifierLock];
  [v8 unlock];
}

- (void)cancelAllRequests
{
  v3 = [(FMDDirectServerChannel *)self requestModifierLock];
  [v3 lock];

  v4 = [(FMDDirectServerChannel *)self requests];
  v5 = +[NSMutableDictionary dictionary];
  [(FMDDirectServerChannel *)self setRequests:v5];

  v6 = [(FMDDirectServerChannel *)self requestModifierLock];
  [v6 unlock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
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

- (NSHTTPCookieStorage)cookieStorage
{
  cookieStorage = self->_cookieStorage;
  if (!cookieStorage)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced"];
    v7 = [v6 stringByAppendingPathComponent:@"cookies"];

    v8 = [v7 UTF8String];
    v9 = strlen(v8);
    v10 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v8, v9, 1u);
    v11 = CFHTTPCookieStorageCreateFromFile();
    CFRunLoopGetMain();
    CFHTTPCookieStorageScheduleWithRunLoop();
    v12 = [[NSHTTPCookieStorage alloc] _initWithCFHTTPCookieStorage:v11];
    [(FMDDirectServerChannel *)self setCookieStorage:v12];

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    cookieStorage = self->_cookieStorage;
  }

  return cookieStorage;
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[FMSystemInfo sharedInstance];
  if ([v9 isInternalBuild])
  {
    v10 = [FMPreferencesUtil BOOLForKey:@"DisableCertPinning" inDomain:kFMDNotBackedUpPrefDomain];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 protectionSpace];
  v12 = [v11 host];

  if ([v12 isEqualToString:@"gateway.icloud.com"])
  {
    v13 = [FMPreferencesUtil BOOLForKey:@"EnableCertPinningForFindkit" inDomain:kFMDNotBackedUpPrefDomain];
    v14 = sub_10000BE38();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "cert pinning for Findkit enabled = %d", buf, 8u);
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v10)
  {
LABEL_8:
    v8[2](v8, 1, 0);
    goto LABEL_32;
  }

  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FMDDirectServerChannel Detecting authentication method", buf, 2u);
  }

  v16 = [v7 protectionSpace];
  v17 = [v16 authenticationMethod];
  v18 = [v17 isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v18)
  {
    v19 = sub_100002880();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FMDDirectServerChannel Setting server trust policy", buf, 2u);
    }

    v20 = [v16 host];
    AppleFMiPService = SecPolicyCreateAppleFMiPService();

    if (AppleFMiPService)
    {
      v22 = [v16 serverTrust];
      v23 = SecTrustSetPolicies(v22, AppleFMiPService);
      CFRelease(AppleFMiPService);
      if (v23)
      {
        v24 = sub_100002880();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v23;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error setting the trust policies : %ld", buf, 0xCu);
        }

        v38 = @"FMDUnerlyingErrorKey";
        v25 = [NSError errorWithDomain:@"SecTrustSetPolicies" code:v23 userInfo:0];
        v39 = v25;
        v26 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v27 = [NSError errorWithDomain:@"FMDDirectServerChannelPinningErrorDomain" code:0 userInfo:v26];

        v28 = 0;
        v29 = 2;
      }

      else
      {
        *buf = 0;
        if (SecTrustEvaluateWithError(v22, buf))
        {
          v28 = [NSURLCredential credentialForTrust:v22];
          v32 = sub_100002880();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "FMDDirectServerChannel Pinning success - presenting fmip trust as credential.", v35, 2u);
          }

          v27 = 0;
          v29 = 0;
        }

        else
        {
          v33 = sub_100002880();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10022B508(v33);
          }

          v41 = @"FMDUnerlyingErrorKey";
          v32 = [NSError errorWithDomain:@"SecTrustEvaluate" code:1 userInfo:0];
          v42 = v32;
          v34 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v27 = [NSError errorWithDomain:@"FMDDirectServerChannelPinningErrorDomain" code:1 userInfo:v34];

          v28 = 0;
          v29 = 2;
        }
      }
    }

    else
    {
      v36 = @"FMDUnerlyingErrorKey";
      v30 = [NSError errorWithDomain:@"SecPolicyCreateAppleFMiPService" code:0 userInfo:0];
      v37 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v29 = 2;
      v27 = [NSError errorWithDomain:@"FMDDirectServerChannelPinningErrorDomain" code:2 userInfo:v31];

      v28 = 0;
    }

    [(FMDDirectServerChannel *)self _logRequestError:v27];
  }

  else
  {
    v28 = 0;
    v29 = 1;
  }

  (v8)[2](v8, v29, v28);

LABEL_32:
}

- (void)_logRequestError:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Network error occured %@", &v10, 0xCu);
    }

    v5 = [(FMDEventLoggerEventError *)[FMDEventLoggerEventDataPeekError alloc] initWithEventName:@"FMDDirectServerChannelRequestError"];
    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"FMDUnerlyingErrorKey"];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    [(FMDEventLoggerEventDataPeekError *)v5 setError:v8];
    v9 = +[FMDEventLogger sharedLogger];
    [v9 logEvent:v5];
  }
}

@end