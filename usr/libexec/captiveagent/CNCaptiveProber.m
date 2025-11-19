@interface CNCaptiveProber
+ (id)sessionConfiguration;
- (BOOL)isAcceptableStatusCode:(id)a3;
- (CNCaptiveProber)initWithURLString:(id)a3 queue:(id)a4 responseHandler:(id)a5;
- (id)locationFromResponse:(id)a3;
- (id)parseResultStr:(int64_t)a3;
- (id)redirectDictionary:(id)a3;
- (unsigned)resultCodeFromError:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_handleAuthenticationChallenge:(id)a3 task:(id)a4 completionHandler:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)handleRedirectResponse:(id)a3;
- (void)handleTaskCompletion:(id)a3;
- (void)handleTaskFailure:(unsigned int)a3;
- (void)parseReceivedData;
- (void)start;
- (void)startProbeTaskWithURL:(id)a3;
@end

@implementation CNCaptiveProber

- (CNCaptiveProber)initWithURLString:(id)a3 queue:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CNCaptiveProber;
  v11 = [(CNCaptiveProber *)&v17 init];
  if (v11)
  {
    v12 = [NSURL URLWithString:v8];
    [(CNCaptiveProber *)v11 setUrl:v12];

    v13 = objc_alloc_init(NSOperationQueue);
    [(CNCaptiveProber *)v11 setOpQueue:v13];

    v14 = [(CNCaptiveProber *)v11 opQueue];
    [v14 setUnderlyingQueue:v9];

    [(CNCaptiveProber *)v11 setResponseHandler:v10];
    v15 = v11;
  }

  return v11;
}

- (void)dealloc
{
  v3 = sub_100002A8C();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CNCaptiveProber dealloced", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = CNCaptiveProber;
  [(CNCaptiveProber *)&v5 dealloc];
}

- (void)start
{
  if (!self->_session)
  {
    v3 = +[CNCaptiveProber sessionConfiguration];
    v4 = [(CNCaptiveProber *)self opQueue];
    v5 = [NSURLSession sessionWithConfiguration:v3 delegate:self delegateQueue:v4];
    session = self->_session;
    self->_session = v5;
  }

  url = self->_url;

  [(CNCaptiveProber *)self startProbeTaskWithURL:url];
}

- (void)startProbeTaskWithURL:(id)a3
{
  v4 = [(CNCaptiveProber *)self url];
  if ([(CNCaptiveProber *)self timeoutSeconds])
  {
    v5 = [(CNCaptiveProber *)self timeoutSeconds];
  }

  else
  {
    v5 = 40.0;
  }

  v11 = [NSMutableURLRequest requestWithURL:v4 cachePolicy:4 timeoutInterval:v5];

  v6 = [(CNCaptiveProber *)self userAgent];
  [v11 setValue:v6 forHTTPHeaderField:off_1000224E0];

  v7 = [(CNCaptiveProber *)self interfaceName];
  [v11 setBoundInterfaceIdentifier:v7];

  v8 = [(NSURLSession *)self->_session dataTaskWithRequest:v11];
  probeDataTask = self->_probeDataTask;
  self->_probeDataTask = v8;

  v10 = [(CNCaptiveProber *)self probeDataTask];
  [v10 resume];
}

- (void)cancel
{
  session = self->_session;
  if (session)
  {
    self->_session = 0;
    v6 = session;

    [(NSURLSession *)v6 invalidateAndCancel];
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;

    probeDataTask = self->_probeDataTask;
    self->_probeDataTask = 0;
  }
}

+ (id)sessionConfiguration
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v2 setHTTPCookieStorage:0];
  [v2 setURLCache:0];
  [v2 setURLCredentialStorage:0];
  [v2 set_alternativeServicesStorage:0];

  return v2;
}

- (void)handleRedirectResponse:(id)a3
{
  v4 = [(CNCaptiveProber *)self locationFromResponse:a3];
  v5 = sub_100002A8C();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = "with";
    if (!v4)
    {
      v7 = "without";
    }

    v10 = 138412546;
    v11 = self;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "%@ probe data task received HTTP redirect response %s location header", &v10, 0x16u);
  }

  if (v4)
  {
    v8 = [NSURL URLWithString:v4];
    redirectURL = self->_redirectURL;
    self->_redirectURL = v8;
  }
}

- (id)locationFromResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 allHeaderFields];
  if (v4)
  {
    v5 = [v3 allHeaderFields];
    v6 = [v5 allKeys];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v3 allHeaderFields];
      v4 = [v8 objectForKey:off_1000224E8];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (unsigned)resultCodeFromError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v5 = [v3 domain];
  v6 = [v5 isEqualToString:NSURLErrorDomain];

  if (v6)
  {
    v7 = [v4 code];
    if (v7 > -1006)
    {
      if (v7 != -1005)
      {
        if (v7 == -1001)
        {
          v8 = 6;
          goto LABEL_9;
        }

        if (v7 != -1003)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v7 == -1202)
      {
        v8 = 15;
        goto LABEL_9;
      }

      if (v7 != -1009)
      {
        if (v7 != -1006)
        {
          goto LABEL_7;
        }

LABEL_13:
        v8 = 7;
        goto LABEL_9;
      }
    }

    v8 = 8;
    goto LABEL_9;
  }

LABEL_7:
  v8 = 13;
LABEL_9:

  return v8;
}

- (void)_handleAuthenticationChallenge:(id)a3 task:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 protectionSpace];
  v12 = [v11 authenticationMethod];
  v13 = sub_100002A8C();
  v14 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412546;
    v34 = self;
    v35 = 2114;
    v36 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%@ received authentication challenege with %{public}@", buf, 0x16u);
  }

  v15 = [v9 currentRequest];
  v16 = [v15 URL];
  v17 = [v16 scheme];
  v18 = [v17 isEqualToString:@"https"];

  if (![v12 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v25 = 0;
    goto LABEL_14;
  }

  v19 = sub_100002A8C();
  v20 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138412290;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v19, v20, "%@ received authentication challenege to trust server certificate", buf, 0xCu);
  }

  v21 = SecTrustEvaluateWithError([v11 serverTrust], 0);
  v22 = sub_100002A8C();
  v23 = _SC_syslog_os_log_mapping();
  v24 = os_log_type_enabled(v22, v23);
  if (v21)
  {
    if (v24)
    {
      *buf = 138412290;
      v34 = self;
      _os_log_impl(&_mh_execute_header, v22, v23, "%@ server certificate is trusted", buf, 0xCu);
    }

    v25 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v11 serverTrust]);
    if (((v25 != 0) & v18) == 1)
    {
      v26 = sub_100002A8C();
      v27 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v26, v27))
      {
        *buf = 138477827;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "responding to challenge using credential %{private}@ for challenge", buf, 0xCu);
      }

      v10[2](v10, 0, v25);
      goto LABEL_18;
    }

LABEL_14:
    v10[2](v10, 1, 0);

    goto LABEL_18;
  }

  if (v24)
  {
    *buf = 138412290;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v22, v23, "%@ failed to trust server certificate", buf, 0xCu);
  }

  v10[2](v10, 2, 0);
  objc_initWeak(buf, self);
  v28 = [(CNCaptiveProber *)self opQueue];
  v29 = [v28 underlyingQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100007FA8;
  v30[3] = &unk_10001C838;
  objc_copyWeak(&v31, buf);
  v32 = 15;
  dispatch_async(v29, v30);

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
LABEL_18:
}

- (id)parseResultStr:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_10001C910 + a3 - 1);
  }
}

- (void)parseReceivedData
{
  objc_initWeak(&location, self);
  v3 = [(CNCaptiveProber *)self opQueue];
  v4 = [v3 underlyingQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008108;
  v5[3] = &unk_10001C8F0;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)redirectDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NSMutableDictionary dictionaryWithDictionary:v4];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  v6 = v5;
  redirectURL = self->_redirectURL;
  if (redirectURL)
  {
    v8 = [(NSURL *)redirectURL host];

    if (v8)
    {
      v9 = [(NSURL *)self->_redirectURL host];
      [v6 setObject:v9 forKeyedSubscript:off_1000224F8];
    }
  }

  url = self->_url;
  if (url)
  {
    v11 = [(NSURL *)url absoluteString];

    if (v11)
    {
      v12 = [(NSURL *)self->_url absoluteString];
      [v6 setObject:v12 forKeyedSubscript:off_1000224D8];
    }
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v6 setObject:userAgent forKeyedSubscript:off_1000224E0];
  }

  return v6;
}

- (BOOL)isAcceptableStatusCode:(id)a3
{
  v4 = a3;
  v5 = [v4 response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 response];
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v15 = 134217984;
      v16 = [v7 statusCode];
      _os_log_impl(&_mh_execute_header, v10, v9, "data task received response with status code %lu", &v15, 0xCu);
    }

    v11 = [v7 statusCode];
    v12 = 1;
    if ((v11 - 300) > 7 || ((1 << (v11 - 44)) & 0x8F) == 0)
    {
      v12 = v11 == 200 || v11 == 511;
    }
  }

  else
  {
    v7 = sub_100002A8C();
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v13))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v7, v13, "%@ data task received invalid response", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)handleTaskCompletion:(id)a3
{
  v4 = a3;
  if ([(NSMutableData *)self->_receivedData length]&& [(CNCaptiveProber *)self isAcceptableStatusCode:v4])
  {
    v5 = sub_100002A8C();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v5, v6, "%@ handleTaskCompletion: parsing received data", &v13, 0xCu);
    }

    [(CNCaptiveProber *)self parseReceivedData];
  }

  else
  {
    redirectURL = self->_redirectURL;
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    if (redirectURL)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, v9))
      {
        v11 = [(NSURL *)self->_redirectURL absoluteString];
        v13 = 138412546;
        v14 = self;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, v9, "%@ handleTaskCompletion: received redirect URL: [%@]", &v13, 0x16u);
      }

      v12 = [(CNCaptiveProber *)self redirectDictionary:0];
      [(CNCaptiveProber *)self sendResponseCode:3 dictionary:v12];
    }

    else
    {
      if (os_log_type_enabled(v8, v9))
      {
        v13 = 138412290;
        v14 = self;
        _os_log_impl(&_mh_execute_header, v8, v9, "%@ handleTaskCompletion: reporting unknown state", &v13, 0xCu);
      }

      [(CNCaptiveProber *)self sendResponseCode:11 dictionary:0];
    }
  }
}

- (void)handleTaskFailure:(unsigned int)a3
{
  objc_initWeak(&location, self);
  v5 = [(CNCaptiveProber *)self opQueue];
  v6 = [v5 underlyingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008A64;
  block[3] = &unk_10001C838;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100002A8C();
  v15 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ didReceiveChallenge [%@]", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v16 = [(CNCaptiveProber *)self opQueue];
  v17 = [v16 underlyingQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100008CBC;
  v21[3] = &unk_10001C888;
  objc_copyWeak(&v25, buf);
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v18 = v13;
  v19 = v11;
  v20 = v12;
  dispatch_async(v17, v21);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = sub_100002A8C();
  v13 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v12, v13))
  {
    v27 = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ didReceiveResponse [%@]", &v27, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v10;
    v15 = sub_100002A8C();
    v16 = _SC_syslog_os_log_mapping();
    v17 = v15;
    if (os_log_type_enabled(v17, v16))
    {
      v18 = [v14 statusCode];
      v27 = 134217984;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v17, v16, "data task received response with status code %lu", &v27, 0xCu);
    }

    receivedData = self->_receivedData;
    self->_receivedData = 0;

    if ([v14 statusCode] == 200)
    {
      v20 = [(CNCaptiveProber *)self locationFromResponse:v14];
      if (v20)
      {
        v21 = sub_100002A8C();
        v22 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v21, v22))
        {
          v27 = 138412290;
          v28 = self;
          _os_log_impl(&_mh_execute_header, v21, v22, "%@ probe data task received response with a location header", &v27, 0xCu);
        }

        v23 = [NSURL URLWithString:v20];
        redirectURL = self->_redirectURL;
        self->_redirectURL = v23;
      }
    }

    v11[2](v11, 1);
  }

  else
  {
    v25 = sub_100002A8C();
    v26 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = 138412290;
      v28 = self;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@ data task received invalid response", &v27, 0xCu);
    }

    [(CNCaptiveProber *)self handleTaskFailure:13];
    v11[2](v11, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = sub_100002A8C();
  v16 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v15, v16))
  {
    v23 = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v15, v16, "%@ willPerformHTTPRedirection [%@]", &v23, 0x16u);
  }

  [(CNCaptiveProber *)self handleRedirectResponse:v12];
  v17 = sub_100002A8C();
  v18 = _SC_syslog_os_log_mapping();
  v19 = v17;
  if (os_log_type_enabled(v19, v18))
  {
    v20 = [(CNCaptiveProber *)self hasHTTPBody:v12];
    v21 = "without";
    v23 = 138412802;
    v24 = self;
    if (v20)
    {
      v21 = "with";
    }

    v25 = 2112;
    v26 = v11;
    v27 = 2080;
    v28 = v21;
    _os_log_impl(&_mh_execute_header, v19, v18, "%@ willPerformHTTPRedirection [%@]: received redirect %s HTTP body", &v23, 0x20u);
  }

  if ([(CNCaptiveProber *)self hasHTTPBody:v12])
  {
    v22 = 0;
  }

  else
  {
    v22 = v14;
  }

  (v13)[2](v13, v22);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002A8C();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ didReceiveData [%@]", &v17, 0x16u);
  }

  if ([v8 length])
  {
    receivedData = self->_receivedData;
    if (!receivedData)
    {
      v12 = objc_alloc_init(NSMutableData);
      v13 = self->_receivedData;
      self->_receivedData = v12;

      receivedData = self->_receivedData;
    }

    [(NSMutableData *)receivedData appendData:v8];
    if ([(NSMutableData *)self->_receivedData length]> 0x20000)
    {
      v14 = sub_100002A8C();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v14, v15))
      {
        v17 = 138412290;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v14, v15, "%@ data task received data larger than 128KB", &v17, 0xCu);
      }

      v16 = self->_receivedData;
      self->_receivedData = 0;

      [(CNCaptiveProber *)self sendResponseCode:4 dictionary:0];
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002A8C();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ didCompleteWithError [%@]", &v17, 0x16u);
  }

  if (!self->_session)
  {
    v13 = sub_100002A8C();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      v17 = 138412290;
      v18 = self;
      v15 = "%@ the session is invalidated";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_17;
  }

  if (v8)
  {
    v11 = [v8 domain];
    if ([v11 isEqualToString:NSURLErrorDomain])
    {
      v12 = [v8 code];

      if (v12 == -999)
      {
        v13 = sub_100002A8C();
        v14 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v13, v14))
        {
          v17 = 138412290;
          v18 = self;
          v15 = "%@ the task was cancelled";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v13, v14, v15, &v17, 0xCu);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v16 = [(CNCaptiveProber *)self resultCodeFromError:v8];
  if (v16)
  {
    [(CNCaptiveProber *)self handleTaskFailure:v16];
  }

  else
  {
    [(CNCaptiveProber *)self handleTaskCompletion:v7];
  }

LABEL_17:
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v5 = a4;
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ didBecomeInvalidWithError", &v10, 0xCu);
  }

  if (v5)
  {
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ session invalidated with error %@", &v10, 0x16u);
    }
  }
}

@end