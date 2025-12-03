@interface CNTokenAuthenticator
+ (id)sessionConfiguration;
- (BOOL)parseChallenge:(id)challenge outRealm:(id *)realm outErrorCode:(id *)code outErrorDescription:(id *)description;
- (CNTokenAuthenticator)initWithURLString:(id)string token:(id)token queue:(id)queue responseHandler:(id)handler;
- (id)authResult:(id)result;
- (id)credentialForBearerChallenge:(id)challenge;
- (id)locationFromResponse:(id)response;
- (unsigned)resultCodeFromError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)handleAuthenticationChallenge:(id)challenge task:(id)task completionHandler:(id)handler;
- (void)handleChallengeResponse:(id)response;
- (void)handleRedirectResponse:(id)response;
- (void)handleResponse:(unsigned int)response result:(id)result;
- (void)handleTaskCompletion;
- (void)login;
- (void)start;
@end

@implementation CNTokenAuthenticator

- (CNTokenAuthenticator)initWithURLString:(id)string token:(id)token queue:(id)queue responseHandler:(id)handler
{
  stringCopy = string;
  tokenCopy = token;
  queueCopy = queue;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = CNTokenAuthenticator;
  v14 = [(CNTokenAuthenticator *)&v23 init];
  if (!v14)
  {
    goto LABEL_4;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

  v15 = [NSURL URLWithString:stringCopy];
  [(CNTokenAuthenticator *)v14 setUrl:v15];

  v16 = [(CNTokenAuthenticator *)v14 url];
  scheme = [v16 scheme];
  v18 = [scheme compare:@"https" options:1];

  if (v18)
  {
LABEL_4:
    v19 = 0;
  }

  else
  {
LABEL_5:
    [(CNTokenAuthenticator *)v14 setToken:tokenCopy];
    v20 = objc_alloc_init(NSOperationQueue);
    [(CNTokenAuthenticator *)v14 setOpQueue:v20];

    opQueue = [(CNTokenAuthenticator *)v14 opQueue];
    [opQueue setUnderlyingQueue:queueCopy];

    [(CNTokenAuthenticator *)v14 setResponseHandler:handlerCopy];
    *&v14->_isAuthorized = 0;
    v19 = v14;
  }

  return v19;
}

- (void)dealloc
{
  v3 = sub_100002A8C();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "dealloced", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = CNTokenAuthenticator;
  [(CNTokenAuthenticator *)&v5 dealloc];
}

- (void)login
{
  if (!self->_session)
  {
    v3 = +[CNTokenAuthenticator sessionConfiguration];
    opQueue = [(CNTokenAuthenticator *)self opQueue];
    v5 = [NSURLSession sessionWithConfiguration:v3 delegate:self delegateQueue:opQueue];
    session = self->_session;
    self->_session = v5;
  }

  v7 = [(CNTokenAuthenticator *)self url];
  if ([(CNTokenAuthenticator *)self timeoutSeconds])
  {
    timeoutSeconds = [(CNTokenAuthenticator *)self timeoutSeconds];
  }

  else
  {
    timeoutSeconds = 60.0;
  }

  v9 = [NSMutableURLRequest requestWithURL:v7 cachePolicy:4 timeoutInterval:timeoutSeconds];

  userAgent = [(CNTokenAuthenticator *)self userAgent];
  [v9 setValue:userAgent forHTTPHeaderField:@"User-Agent"];

  interfaceName = [(CNTokenAuthenticator *)self interfaceName];
  [v9 setBoundInterfaceIdentifier:interfaceName];

  v12 = [(NSURLSession *)self->_session dataTaskWithRequest:v9];
  loginDataTask = self->_loginDataTask;
  self->_loginDataTask = v12;

  v14 = sub_100002A8C();
  v15 = _SC_syslog_os_log_mapping();
  v16 = v14;
  if (os_log_type_enabled(v16, v15))
  {
    v17 = [(CNTokenAuthenticator *)self url];
    absoluteString = [v17 absoluteString];
    v19 = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = absoluteString;
    _os_log_impl(&_mh_execute_header, v16, v15, "%@ starting token based captive portal authentication with url: [%@]", &v19, 0x16u);
  }

  [(NSURLSessionDataTask *)self->_loginDataTask resume];
}

- (void)start
{
  v3 = [(CNTokenAuthenticator *)self url];
  if (v3)
  {
    [(CNTokenAuthenticator *)self url];
  }

  else
  {
    +[CNTokenAuthenticator tokenAuthServerDiscoveryURL];
  }
  v4 = ;
  [(CNTokenAuthenticator *)self setUrl:v4];

  [(CNTokenAuthenticator *)self login];
}

- (void)cancel
{
  session = self->_session;
  if (session)
  {
    [(NSURLSession *)session invalidateAndCancel];
    v4 = self->_session;
    self->_session = 0;
  }

  loginDataTask = self->_loginDataTask;
  self->_loginDataTask = 0;
}

+ (id)sessionConfiguration
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v2 setHTTPCookieStorage:0];
  [v2 setURLCache:0];
  [v2 setURLCredentialStorage:0];
  [v2 set_alternativeServicesStorage:0];
  [v2 set_enableOAuthBearerTokenChallenges:1];
  [v2 set_shouldSkipPreferredClientCertificateLookup:1];

  return v2;
}

- (id)locationFromResponse:(id)response
{
  allHeaderFields = [response allHeaderFields];
  v4 = [allHeaderFields objectForKey:@"Location"];

  return v4;
}

- (void)handleRedirectResponse:(id)response
{
  v4 = [(CNTokenAuthenticator *)self locationFromResponse:response];
  v5 = sub_100002A8C();
  if (v4)
  {
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      v12 = 138412546;
      selfCopy3 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "%@ task received HTTP Redirect with location header: [%@]", &v12, 0x16u);
    }

    v5 = [NSURL URLWithString:v4];
    scheme = [v5 scheme];
    v8 = [scheme compare:@"https" options:1];

    if (v8)
    {
      v9 = sub_100002A8C();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v9, v10))
      {
        v12 = 138412290;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v9, v10, "%@ task found location without https scheme", &v12, 0xCu);
      }
    }
  }

  else
  {
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v5, v11, "%@ task received HTTP Redirect without location header", &v12, 0xCu);
    }
  }
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

- (void)handleAuthenticationChallenge:(id)challenge task:(id)task completionHandler:(id)handler
{
  challengeCopy = challenge;
  taskCopy = task;
  handlerCopy = handler;
  v41 = challengeCopy;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v11 = sub_100002A8C();
  v12 = _SC_syslog_os_log_mapping();
  v13 = v11;
  if (os_log_type_enabled(v13, v12))
  {
    *buf = 138412546;
    selfCopy4 = objc_opt_class();
    v49 = 2114;
    v50 = authenticationMethod;
    v14 = selfCopy4;
    _os_log_impl(&_mh_execute_header, v13, v12, "%@ received authentication challenege with %{public}@", buf, 0x16u);
  }

  currentRequest = [taskCopy currentRequest];
  v16 = [currentRequest URL];
  scheme = [v16 scheme];
  v18 = [scheme isEqualToString:@"https"];

  v19 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodOAuthBearerToken];
  v20 = v19 ^ 1;
  if (!self->_tokenAuthAttempted && (v20 & 1) == 0 && ((v18 ^ 1) & 1) == 0)
  {
    v21 = [(CNTokenAuthenticator *)self credentialForBearerChallenge:v41];
    goto LABEL_7;
  }

  v28 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];
  if (!v28)
  {
    if (![authenticationMethod isEqualToString:NSURLAuthenticationMethodClientCertificate])
    {
      v22 = 0;
      v35 = 17;
      v28 = 1;
      goto LABEL_29;
    }

    v32 = sub_100002A8C();
    v36 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v32, v36))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v32, v36, "%@ received authentication challenge for certificate request", buf, 0xCu);
    }

    v35 = 0;
LABEL_28:

    v22 = 0;
LABEL_29:
    if ((v18 | v20))
    {
      if (!v28)
      {
        handlerCopy[2](handlerCopy, 1, 0);
        goto LABEL_36;
      }
    }

    else
    {
      v37 = sub_100002A8C();
      v38 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v37, v38))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "insecure token based authentication is not supported", buf, 2u);
      }

      v35 = 18;
    }

    handlerCopy[2](handlerCopy, 2, 0);
    objc_initWeak(buf, self);
    opQueue = [(CNTokenAuthenticator *)self opQueue];
    underlyingQueue = [opQueue underlyingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000560C;
    block[3] = &unk_10001C838;
    objc_copyWeak(&v45, buf);
    v46 = v35;
    dispatch_async(underlyingQueue, block);

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
    goto LABEL_36;
  }

  v29 = sub_100002A8C();
  v30 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v29, v30))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v29, v30, "%@ received authentication challenege to trust server certificate", buf, 0xCu);
  }

  v31 = SecTrustEvaluateWithError([protectionSpace serverTrust], 0);
  v32 = sub_100002A8C();
  v33 = _SC_syslog_os_log_mapping();
  v34 = os_log_type_enabled(v32, v33);
  if (!v31)
  {
    if (v34)
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v32, v33, "%@ failed to trust server certificate", buf, 0xCu);
    }

    v35 = 15;
    goto LABEL_28;
  }

  if (v34)
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v32, v33, "%@ server certificate is trusted", buf, 0xCu);
  }

  v21 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace serverTrust]);
LABEL_7:
  v22 = v21;
  if (((v21 != 0) & v18) != 1)
  {
    v28 = 0;
    v35 = 0;
    goto LABEL_29;
  }

  v23 = sub_100002A8C();
  v24 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v23, v24))
  {
    *buf = 138477827;
    selfCopy4 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "responding to challenge using credential %{private}@ for challenge", buf, 0xCu);
  }

  (handlerCopy)[2](handlerCopy, 0, v22);
  if (v19)
  {
    self->_tokenAuthAttempted = 1;
    currentRequest2 = [taskCopy currentRequest];
    v26 = [currentRequest2 URL];
    url = self->_url;
    self->_url = v26;
  }

LABEL_36:
}

- (id)credentialForBearerChallenge:(id)challenge
{
  challengeCopy = challenge;
  if (![(NSData *)self->_token length])
  {
    goto LABEL_4;
  }

  v5 = [NSString alloc];
  token = [(CNTokenAuthenticator *)self token];
  v7 = [v5 initWithData:token encoding:4];

  protectionSpace = [challengeCopy protectionSpace];
  [protectionSpace realm];
  OAuth2 = _CFURLCredentialCreateOAuth2();

  if (OAuth2)
  {
    v10 = [[NSURLCredential alloc] _initWithCFURLCredential:OAuth2];
    CFRelease(OAuth2);
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

- (void)handleResponse:(unsigned int)response result:(id)result
{
  resultCopy = result;
  objc_initWeak(&location, self);
  opQueue = [(CNTokenAuthenticator *)self opQueue];
  underlyingQueue = [opQueue underlyingQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000585C;
  v10[3] = &unk_10001C860;
  objc_copyWeak(&v12, &location);
  responseCopy = response;
  v11 = resultCopy;
  v9 = resultCopy;
  dispatch_async(underlyingQueue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (BOOL)parseChallenge:(id)challenge outRealm:(id *)realm outErrorCode:(id *)code outErrorDescription:(id *)description
{
  challengeCopy = challenge;
  v10 = challengeCopy;
  if (!challengeCopy || [challengeCopy length] < 0xE || objc_msgSend(v10, "rangeOfString:", @"Bearer") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v10, "rangeOfString:", @"realm=") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    *description = 0;
    *code = 0;
    *realm = 0;
    v13 = [v10 rangeOfString:@"realm="];
    v15 = [v10 substringWithRange:{&v13[v14], objc_msgSend(v10, "length") - &v13[v14]}];
    if ([v15 length] >= 3)
    {
      v16 = [NSRegularExpression regularExpressionWithPattern:@"^().*()" options:1 error:0];
      if (v16)
      {
        v18 = [v16 rangeOfFirstMatchInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}];
        if (v18 != 0x7FFFFFFFFFFFFFFFLL || (v19 = 0, v17))
        {
          v19 = [v15 substringWithRange:{v18, v17}];
        }

        if ([v19 length] >= 3)
        {
          v20 = v19;
          *realm = v19;
          v21 = [v15 rangeOfString:@"error="];
          if (v21 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = 1;
          }

          else
          {
            v23 = [v15 substringWithRange:{&v21[v22], objc_msgSend(v15, "length") - &v21[v22]}];
            if ([v23 length] < 3)
            {
              goto LABEL_23;
            }

            v24 = [v16 rangeOfFirstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}];
            v26 = v25;

            if (v24 != 0x7FFFFFFFFFFFFFFFLL || (v19 = 0, v26))
            {
              v19 = [v23 substringWithRange:{v24, v26}];
              NSLog(@"substringForFirstMatch: [%@]", v19);
            }

            if ([v19 length] >= 3)
            {
              v27 = v19;
              *code = v19;
              v28 = [v23 rangeOfString:@"error_description="];
              v30 = [v23 substringWithRange:{&v28[v29], objc_msgSend(v23, "length") - &v28[v29]}];
              if ([v30 length] < 3)
              {
                goto LABEL_29;
              }

              v31 = [v16 rangeOfFirstMatchInString:v30 options:0 range:{0, objc_msgSend(v30, "length")}];
              v33 = v32;

              if (v31 != 0x7FFFFFFFFFFFFFFFLL || (v19 = 0, v33))
              {
                v19 = [v30 substringWithRange:{v31, v33}];
                NSLog(@"substringForFirstMatch: [%@]", v19);
              }

              if ([v19 length] >= 3)
              {
                v34 = v19;
                *description = v19;
                v11 = 1;
              }

              else
              {
LABEL_29:
                v11 = 0;
              }
            }

            else
            {
LABEL_23:
              v11 = 0;
            }
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)handleChallengeResponse:(id)response
{
  allHeaderFields = [response allHeaderFields];
  if (![allHeaderFields count] || (objc_msgSend(allHeaderFields, "objectForKey:", @"WWW-Authenticate"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = sub_100002A8C();
    v19 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v19))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v26 = 2112;
      v27 = @"WWW-Authenticate";
      _os_log_impl(&_mh_execute_header, v11, v19, "%@ login data task did not receive response with [%@] header", buf, 0x16u);
    }

    v6 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v7 = [(CNTokenAuthenticator *)self parseChallenge:v5 outRealm:&v23 outErrorCode:&v22 outErrorDescription:&v21];
  v8 = v23;
  v9 = v22;
  v10 = v21;
  if ((v7 & 1) == 0)
  {
    v11 = sub_100002A8C();
    v20 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v20))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v26 = 2112;
      v27 = @"WWW-Authenticate";
      v15 = "%@ login data task received response with invalid [%@] header";
      v16 = v11;
      v17 = v20;
      v18 = 22;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (self->_tokenAuthAttempted)
  {
    v11 = sub_100002A8C();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = @"none";
      if (v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = @"none";
      }

      *buf = 138412802;
      selfCopy3 = self;
      v26 = 2112;
      if (v10)
      {
        v13 = v10;
      }

      v27 = v14;
      v28 = 2112;
      v29 = v13;
      v15 = "%@ token authentication failed error code: [%@], error description:[%@]";
      v16 = v11;
      v17 = v12;
      v18 = 32;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)authResult:(id)result
{
  resultCopy = result;
  if (resultCopy && self->_isAuthorized)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [NSNumber numberWithBool:self->_tokenAuthAttempted];
    [v5 setObject:v6 forKeyedSubscript:off_100022540];

    v7 = [resultCopy objectForKeyedSubscript:off_100022558];
    v8 = v7;
    if (self->_tokenAuthAttempted && [v7 length])
    {
      v9 = [v8 dataUsingEncoding:4];
    }

    else
    {
      v9 = 0;
    }

    if ([v9 length])
    {
      [v5 setObject:v9 forKeyedSubscript:off_100022548];
    }

    v11 = [resultCopy objectForKeyedSubscript:off_100022560];
    [v5 setObject:v11 forKeyedSubscript:off_100022550];

    url = self->_url;
    if (url)
    {
      absoluteString = [(NSURL *)url absoluteString];
      [v5 setObject:absoluteString forKeyedSubscript:off_100022538];
    }

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)handleTaskCompletion
{
  v3 = [(NSMutableData *)self->_receivedData length];
  v4 = sub_100002A8C();
  v5 = _SC_syslog_os_log_mapping();
  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v4, v5, "%@ handleTaskCompletion: received non-zero data", buf, 0xCu);
    }

    receivedData = self->_receivedData;
    v16 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:receivedData options:0 error:&v16];
    v4 = v16;
    if (v4)
    {
      v9 = sub_100002A8C();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v9, v10))
      {
        *buf = 138412290;
        selfCopy2 = v4;
        _os_log_impl(&_mh_execute_header, v9, v10, "JSON parsing failed, error: %@", buf, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v13 = sub_100002A8C();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138543362;
        selfCopy2 = v8;
        _os_log_impl(&_mh_execute_header, v13, v14, "Token Authentication server sent : %{public}@", buf, 0xCu);
      }

      v11 = [(CNTokenAuthenticator *)self authResult:v8];
      v9 = sub_100002A8C();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v9, v15))
      {
        *buf = 138543362;
        selfCopy2 = v11;
        _os_log_impl(&_mh_execute_header, v9, v15, "Token Authentication Result : %{public}@", buf, 0xCu);
      }
    }

LABEL_9:
    goto LABEL_13;
  }

  if (v6)
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ handleTaskCompletion: did not receive data", buf, 0xCu);
  }

  v11 = 0;
LABEL_13:

  if (self->_isAuthorized)
  {
    v12 = 0;
  }

  else
  {
    v12 = 19;
  }

  [(CNTokenAuthenticator *)self handleResponse:v12 result:v11];
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
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ didReceiveChallenge", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  opQueue = [(CNTokenAuthenticator *)self opQueue];
  underlyingQueue = [opQueue underlyingQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100006518;
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
  responseCopy = response;
  handlerCopy = handler;
  v10 = sub_100002A8C();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v10, v11))
  {
    v25 = 138412290;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@ didReceiveResponse", &v25, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = responseCopy;
    v13 = sub_100002A8C();
    v14 = _SC_syslog_os_log_mapping();
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      statusCode = [v12 statusCode];
      v25 = 134217984;
      selfCopy6 = statusCode;
      _os_log_impl(&_mh_execute_header, v15, v14, "login data task received response with status code %lu", &v25, 0xCu);
    }

    if ([v12 statusCode] == 200)
    {
      self->_isAuthorized = 1;
LABEL_17:
      handlerCopy[2](handlerCopy, 1);
LABEL_22:

      goto LABEL_23;
    }

    if (self->_tokenAuthAttempted && [v12 statusCode] == 401)
    {
      v19 = sub_100002A8C();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        v25 = 138412290;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v19, v20, "%@ token authentication failed", &v25, 0xCu);
      }

      self->_isAuthorized = 0;
      [(CNTokenAuthenticator *)self handleChallengeResponse:v12];
      handlerCopy[2](handlerCopy, 0);
      selfCopy5 = self;
      v22 = 19;
    }

    else
    {
      if ([v12 statusCode] == 401)
      {
        goto LABEL_17;
      }

      v23 = sub_100002A8C();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = 138412290;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v23, v24, "%@ login data task received response with unexpected status code", &v25, 0xCu);
      }

      handlerCopy[2](handlerCopy, 0);
      selfCopy5 = self;
      v22 = 1;
    }

    [(CNTokenAuthenticator *)selfCopy5 handleResponse:v22 result:0];
    goto LABEL_22;
  }

  v17 = sub_100002A8C();
  v18 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v17, v18))
  {
    v25 = 138412290;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, v17, v18, "%@ login data task received invalid response", &v25, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
  [(CNTokenAuthenticator *)self handleResponse:1 result:0];
LABEL_23:
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  redirectionCopy = redirection;
  v13 = sub_100002A8C();
  v14 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v13, v14))
  {
    v40 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v13, v14, "%@ willPerformHTTPRedirection", &v40, 0xCu);
  }

  [(CNTokenAuthenticator *)self handleRedirectResponse:redirectionCopy];
  v15 = requestCopy;
  v16 = v15;
  if (!self->_tokenAuthAttempted)
  {
    v17 = [NSURLComponents alloc];
    v18 = [v15 URL];
    absoluteString = [v18 absoluteString];
    v20 = [v17 initWithString:absoluteString];

    v16 = v15;
    if (!v20)
    {
LABEL_18:

      goto LABEL_19;
    }

    v21 = sub_100002A8C();
    v22 = _SC_syslog_os_log_mapping();
    v23 = v21;
    if (os_log_type_enabled(v23, v22))
    {
      string = [v20 string];
      v40 = 138412546;
      selfCopy3 = self;
      v42 = 2112;
      v43 = string;
      _os_log_impl(&_mh_execute_header, v23, v22, "%@ Current URL String: [%@]", &v40, 0x16u);
    }

    queryItems = [v20 queryItems];
    v26 = [queryItems count];

    if (v26)
    {
      queryItems2 = [v20 queryItems];
      v28 = [queryItems2 mutableCopy];

      v16 = v15;
      if ([v28 indexOfObjectPassingTest:&stru_10001C8C8] != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v28 = objc_alloc_init(NSMutableArray);
    }

    v29 = [[NSURLQueryItem alloc] initWithName:@"authorized" value:@"true"];
    [v28 addObject:v29];
    [v20 setQueryItems:v28];
    v30 = [NSURL alloc];
    string2 = [v20 string];
    v32 = [v30 initWithString:string2];

    v33 = sub_100002A8C();
    v34 = _SC_syslog_os_log_mapping();
    v35 = v33;
    if (os_log_type_enabled(v35, v34))
    {
      string3 = [v20 string];
      v40 = 138412546;
      selfCopy3 = self;
      v42 = 2112;
      v43 = string3;
      _os_log_impl(&_mh_execute_header, v35, v34, "%@ New URL String: [%@]", &v40, 0x16u);
    }

    if ([(CNTokenAuthenticator *)self timeoutSeconds])
    {
      timeoutSeconds = [(CNTokenAuthenticator *)self timeoutSeconds];
    }

    else
    {
      timeoutSeconds = 60.0;
    }

    v16 = [NSMutableURLRequest requestWithURL:v32 cachePolicy:4 timeoutInterval:timeoutSeconds];
    userAgent = [(CNTokenAuthenticator *)self userAgent];
    [v16 setValue:userAgent forHTTPHeaderField:@"User-Agent"];

    interfaceName = [(CNTokenAuthenticator *)self interfaceName];
    [v16 setBoundInterfaceIdentifier:interfaceName];

    goto LABEL_17;
  }

LABEL_19:
  handlerCopy[2](handlerCopy, v16);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v7 = sub_100002A8C();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v7, v8))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ didReceiveData", &v12, 0xCu);
  }

  if (self->_isAuthorized && [dataCopy length])
  {
    receivedData = self->_receivedData;
    if (!receivedData)
    {
      v10 = objc_alloc_init(NSMutableData);
      v11 = self->_receivedData;
      self->_receivedData = v10;

      receivedData = self->_receivedData;
    }

    [(NSMutableData *)receivedData appendData:dataCopy];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  v7 = sub_100002A8C();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v7, v8))
  {
    v16 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ didCompleteWithError", &v16, 0xCu);
  }

  if (errorCopy && ([errorCopy domain], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", NSURLErrorDomain), v9, v10))
  {
    v11 = sub_100002A8C();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v16 = 138412546;
      selfCopy2 = self;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, v12, "%@ session task completed with error %@", &v16, 0x16u);
    }

    code = [errorCopy code];
    if (code <= -1004)
    {
      if (code == -1009)
      {
LABEL_11:
        selfCopy6 = self;
        v15 = 8;
LABEL_19:
        [(CNTokenAuthenticator *)selfCopy6 handleResponse:v15 result:0];
        goto LABEL_20;
      }

      if (code != -1006)
      {
        if (code == -1005)
        {
          goto LABEL_11;
        }

LABEL_17:
        selfCopy6 = self;
        v15 = 13;
        goto LABEL_19;
      }

LABEL_16:
      selfCopy6 = self;
      v15 = 7;
      goto LABEL_19;
    }

    if (code != -999)
    {
      if (code == -1001)
      {
        selfCopy6 = self;
        v15 = 6;
        goto LABEL_19;
      }

      if (code != -1003)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    [(CNTokenAuthenticator *)self handleTaskCompletion];
  }

LABEL_20:
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