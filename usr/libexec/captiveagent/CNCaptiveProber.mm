@interface CNCaptiveProber
+ (id)sessionConfiguration;
- (BOOL)isAcceptableStatusCode:(id)code;
- (CNCaptiveProber)initWithURLString:(id)string queue:(id)queue responseHandler:(id)handler;
- (id)locationFromResponse:(id)response;
- (id)parseResultStr:(int64_t)str;
- (id)redirectDictionary:(id)dictionary;
- (unsigned)resultCodeFromError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_handleAuthenticationChallenge:(id)challenge task:(id)task completionHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)handleRedirectResponse:(id)response;
- (void)handleTaskCompletion:(id)completion;
- (void)handleTaskFailure:(unsigned int)failure;
- (void)parseReceivedData;
- (void)start;
- (void)startProbeTaskWithURL:(id)l;
@end

@implementation CNCaptiveProber

- (CNCaptiveProber)initWithURLString:(id)string queue:(id)queue responseHandler:(id)handler
{
  stringCopy = string;
  queueCopy = queue;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = CNCaptiveProber;
  v11 = [(CNCaptiveProber *)&v17 init];
  if (v11)
  {
    v12 = [NSURL URLWithString:stringCopy];
    [(CNCaptiveProber *)v11 setUrl:v12];

    v13 = objc_alloc_init(NSOperationQueue);
    [(CNCaptiveProber *)v11 setOpQueue:v13];

    opQueue = [(CNCaptiveProber *)v11 opQueue];
    [opQueue setUnderlyingQueue:queueCopy];

    [(CNCaptiveProber *)v11 setResponseHandler:handlerCopy];
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
    opQueue = [(CNCaptiveProber *)self opQueue];
    v5 = [NSURLSession sessionWithConfiguration:v3 delegate:self delegateQueue:opQueue];
    session = self->_session;
    self->_session = v5;
  }

  url = self->_url;

  [(CNCaptiveProber *)self startProbeTaskWithURL:url];
}

- (void)startProbeTaskWithURL:(id)l
{
  v4 = [(CNCaptiveProber *)self url];
  if ([(CNCaptiveProber *)self timeoutSeconds])
  {
    timeoutSeconds = [(CNCaptiveProber *)self timeoutSeconds];
  }

  else
  {
    timeoutSeconds = 40.0;
  }

  v11 = [NSMutableURLRequest requestWithURL:v4 cachePolicy:4 timeoutInterval:timeoutSeconds];

  userAgent = [(CNCaptiveProber *)self userAgent];
  [v11 setValue:userAgent forHTTPHeaderField:off_1000224E0];

  interfaceName = [(CNCaptiveProber *)self interfaceName];
  [v11 setBoundInterfaceIdentifier:interfaceName];

  v8 = [(NSURLSession *)self->_session dataTaskWithRequest:v11];
  probeDataTask = self->_probeDataTask;
  self->_probeDataTask = v8;

  probeDataTask = [(CNCaptiveProber *)self probeDataTask];
  [probeDataTask resume];
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

- (void)handleRedirectResponse:(id)response
{
  v4 = [(CNCaptiveProber *)self locationFromResponse:response];
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
    selfCopy = self;
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

- (id)locationFromResponse:(id)response
{
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  if (allHeaderFields)
  {
    allHeaderFields2 = [responseCopy allHeaderFields];
    allKeys = [allHeaderFields2 allKeys];
    v7 = [allKeys count];

    if (v7)
    {
      allHeaderFields3 = [responseCopy allHeaderFields];
      allHeaderFields = [allHeaderFields3 objectForKey:off_1000224E8];
    }

    else
    {
      allHeaderFields = 0;
    }
  }

  return allHeaderFields;
}

- (unsigned)resultCodeFromError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_9;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:NSURLErrorDomain];

  if (v6)
  {
    code = [v4 code];
    if (code > -1006)
    {
      if (code != -1005)
      {
        if (code == -1001)
        {
          v8 = 6;
          goto LABEL_9;
        }

        if (code != -1003)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (code == -1202)
      {
        v8 = 15;
        goto LABEL_9;
      }

      if (code != -1009)
      {
        if (code != -1006)
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

- (void)_handleAuthenticationChallenge:(id)challenge task:(id)task completionHandler:(id)handler
{
  challengeCopy = challenge;
  taskCopy = task;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v13 = sub_100002A8C();
  v14 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v35 = 2114;
    v36 = authenticationMethod;
    _os_log_impl(&_mh_execute_header, v13, v14, "%@ received authentication challenege with %{public}@", buf, 0x16u);
  }

  currentRequest = [taskCopy currentRequest];
  v16 = [currentRequest URL];
  scheme = [v16 scheme];
  v18 = [scheme isEqualToString:@"https"];

  if (![authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v25 = 0;
    goto LABEL_14;
  }

  v19 = sub_100002A8C();
  v20 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v19, v20, "%@ received authentication challenege to trust server certificate", buf, 0xCu);
  }

  v21 = SecTrustEvaluateWithError([protectionSpace serverTrust], 0);
  v22 = sub_100002A8C();
  v23 = _SC_syslog_os_log_mapping();
  v24 = os_log_type_enabled(v22, v23);
  if (v21)
  {
    if (v24)
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v22, v23, "%@ server certificate is trusted", buf, 0xCu);
    }

    v25 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace serverTrust]);
    if (((v25 != 0) & v18) == 1)
    {
      v26 = sub_100002A8C();
      v27 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v26, v27))
      {
        *buf = 138477827;
        selfCopy4 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "responding to challenge using credential %{private}@ for challenge", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, 0, v25);
      goto LABEL_18;
    }

LABEL_14:
    handlerCopy[2](handlerCopy, 1, 0);

    goto LABEL_18;
  }

  if (v24)
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v22, v23, "%@ failed to trust server certificate", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy, 2, 0);
  objc_initWeak(buf, self);
  opQueue = [(CNCaptiveProber *)self opQueue];
  underlyingQueue = [opQueue underlyingQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100007FA8;
  v30[3] = &unk_10001C838;
  objc_copyWeak(&v31, buf);
  v32 = 15;
  dispatch_async(underlyingQueue, v30);

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
LABEL_18:
}

- (id)parseResultStr:(int64_t)str
{
  if ((str - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_10001C910 + str - 1);
  }
}

- (void)parseReceivedData
{
  objc_initWeak(&location, self);
  opQueue = [(CNCaptiveProber *)self opQueue];
  underlyingQueue = [opQueue underlyingQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008108;
  v5[3] = &unk_10001C8F0;
  objc_copyWeak(&v6, &location);
  dispatch_async(underlyingQueue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)redirectDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = [NSMutableDictionary dictionaryWithDictionary:dictionaryCopy];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  v6 = v5;
  redirectURL = self->_redirectURL;
  if (redirectURL)
  {
    host = [(NSURL *)redirectURL host];

    if (host)
    {
      host2 = [(NSURL *)self->_redirectURL host];
      [v6 setObject:host2 forKeyedSubscript:off_1000224F8];
    }
  }

  url = self->_url;
  if (url)
  {
    absoluteString = [(NSURL *)url absoluteString];

    if (absoluteString)
    {
      absoluteString2 = [(NSURL *)self->_url absoluteString];
      [v6 setObject:absoluteString2 forKeyedSubscript:off_1000224D8];
    }
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v6 setObject:userAgent forKeyedSubscript:off_1000224E0];
  }

  return v6;
}

- (BOOL)isAcceptableStatusCode:(id)code
{
  codeCopy = code;
  response = [codeCopy response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    response2 = [codeCopy response];
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v15 = 134217984;
      selfCopy = [response2 statusCode];
      _os_log_impl(&_mh_execute_header, v10, v9, "data task received response with status code %lu", &v15, 0xCu);
    }

    statusCode = [response2 statusCode];
    v12 = 1;
    if ((statusCode - 300) > 7 || ((1 << (statusCode - 44)) & 0x8F) == 0)
    {
      v12 = statusCode == 200 || statusCode == 511;
    }
  }

  else
  {
    response2 = sub_100002A8C();
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(response2, v13))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, response2, v13, "%@ data task received invalid response", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)handleTaskCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NSMutableData *)self->_receivedData length]&& [(CNCaptiveProber *)self isAcceptableStatusCode:completionCopy])
  {
    v5 = sub_100002A8C();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      v13 = 138412290;
      selfCopy3 = self;
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
        absoluteString = [(NSURL *)self->_redirectURL absoluteString];
        v13 = 138412546;
        selfCopy3 = self;
        v15 = 2112;
        v16 = absoluteString;
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
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v8, v9, "%@ handleTaskCompletion: reporting unknown state", &v13, 0xCu);
      }

      [(CNCaptiveProber *)self sendResponseCode:11 dictionary:0];
    }
  }
}

- (void)handleTaskFailure:(unsigned int)failure
{
  objc_initWeak(&location, self);
  opQueue = [(CNCaptiveProber *)self opQueue];
  underlyingQueue = [opQueue underlyingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008A64;
  block[3] = &unk_10001C838;
  objc_copyWeak(&v8, &location);
  failureCopy = failure;
  dispatch_async(underlyingQueue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v14 = sub_100002A8C();
  v15 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412546;
    selfCopy = self;
    v28 = 2112;
    v29 = taskCopy;
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ didReceiveChallenge [%@]", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  opQueue = [(CNCaptiveProber *)self opQueue];
  underlyingQueue = [opQueue underlyingQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100008CBC;
  v21[3] = &unk_10001C888;
  objc_copyWeak(&v25, buf);
  v22 = challengeCopy;
  v23 = taskCopy;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = taskCopy;
  v20 = challengeCopy;
  dispatch_async(underlyingQueue, v21);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v12 = sub_100002A8C();
  v13 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v12, v13))
  {
    v27 = 138412546;
    selfCopy3 = self;
    v29 = 2112;
    v30 = taskCopy;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ didReceiveResponse [%@]", &v27, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = responseCopy;
    v15 = sub_100002A8C();
    v16 = _SC_syslog_os_log_mapping();
    v17 = v15;
    if (os_log_type_enabled(v17, v16))
    {
      statusCode = [v14 statusCode];
      v27 = 134217984;
      selfCopy3 = statusCode;
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
          selfCopy3 = self;
          _os_log_impl(&_mh_execute_header, v21, v22, "%@ probe data task received response with a location header", &v27, 0xCu);
        }

        v23 = [NSURL URLWithString:v20];
        redirectURL = self->_redirectURL;
        self->_redirectURL = v23;
      }
    }

    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v25 = sub_100002A8C();
    v26 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@ data task received invalid response", &v27, 0xCu);
    }

    [(CNCaptiveProber *)self handleTaskFailure:13];
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  redirectionCopy = redirection;
  handlerCopy = handler;
  requestCopy = request;
  v15 = sub_100002A8C();
  v16 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v15, v16))
  {
    v23 = 138412546;
    selfCopy2 = self;
    v25 = 2112;
    v26 = taskCopy;
    _os_log_impl(&_mh_execute_header, v15, v16, "%@ willPerformHTTPRedirection [%@]", &v23, 0x16u);
  }

  [(CNCaptiveProber *)self handleRedirectResponse:redirectionCopy];
  v17 = sub_100002A8C();
  v18 = _SC_syslog_os_log_mapping();
  v19 = v17;
  if (os_log_type_enabled(v19, v18))
  {
    v20 = [(CNCaptiveProber *)self hasHTTPBody:redirectionCopy];
    v21 = "without";
    v23 = 138412802;
    selfCopy2 = self;
    if (v20)
    {
      v21 = "with";
    }

    v25 = 2112;
    v26 = taskCopy;
    v27 = 2080;
    v28 = v21;
    _os_log_impl(&_mh_execute_header, v19, v18, "%@ willPerformHTTPRedirection [%@]: received redirect %s HTTP body", &v23, 0x20u);
  }

  if ([(CNCaptiveProber *)self hasHTTPBody:redirectionCopy])
  {
    v22 = 0;
  }

  else
  {
    v22 = requestCopy;
  }

  (handlerCopy)[2](handlerCopy, v22);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  v9 = sub_100002A8C();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    v17 = 138412546;
    selfCopy2 = self;
    v19 = 2112;
    v20 = taskCopy;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ didReceiveData [%@]", &v17, 0x16u);
  }

  if ([dataCopy length])
  {
    receivedData = self->_receivedData;
    if (!receivedData)
    {
      v12 = objc_alloc_init(NSMutableData);
      v13 = self->_receivedData;
      self->_receivedData = v12;

      receivedData = self->_receivedData;
    }

    [(NSMutableData *)receivedData appendData:dataCopy];
    if ([(NSMutableData *)self->_receivedData length]> 0x20000)
    {
      v14 = sub_100002A8C();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v14, v15))
      {
        v17 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v14, v15, "%@ data task received data larger than 128KB", &v17, 0xCu);
      }

      v16 = self->_receivedData;
      self->_receivedData = 0;

      [(CNCaptiveProber *)self sendResponseCode:4 dictionary:0];
    }
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v9 = sub_100002A8C();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    v17 = 138412546;
    selfCopy3 = self;
    v19 = 2112;
    v20 = taskCopy;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ didCompleteWithError [%@]", &v17, 0x16u);
  }

  if (!self->_session)
  {
    v13 = sub_100002A8C();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      v17 = 138412290;
      selfCopy3 = self;
      v15 = "%@ the session is invalidated";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_17;
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:NSURLErrorDomain])
    {
      code = [errorCopy code];

      if (code == -999)
      {
        v13 = sub_100002A8C();
        v14 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v13, v14))
        {
          v17 = 138412290;
          selfCopy3 = self;
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

  v16 = [(CNCaptiveProber *)self resultCodeFromError:errorCopy];
  if (v16)
  {
    [(CNCaptiveProber *)self handleTaskFailure:v16];
  }

  else
  {
    [(CNCaptiveProber *)self handleTaskCompletion:taskCopy];
  }

LABEL_17:
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ didBecomeInvalidWithError", &v10, 0xCu);
  }

  if (errorCopy)
  {
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ session invalidated with error %@", &v10, 0x16u);
    }
  }
}

@end