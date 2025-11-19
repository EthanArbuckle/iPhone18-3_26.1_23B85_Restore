@interface CNWISPrLoginHandler
+ (id)sessionConfiguration;
- (CNWISPrLoginHandler)initWithURLString:(id)a3 queue:(id)a4 responseHandler:(id)a5;
- (id)authReplyDictionary:(id)a3;
- (unsigned)resultCodeFromError:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)handleAuthReply;
- (void)handleAuthenticationPollReply:(id)a3;
- (void)handleAuthenticationReply:(id)a3;
- (void)loginWithURL:(id)a3 data:(id)a4;
- (void)parseReceivedData:(id)a3;
- (void)poll;
- (void)pollAfter:(int)a3;
- (void)sendResponseCode:(unsigned int)a3 dictionary:(id)a4;
- (void)start:(id)a3;
@end

@implementation CNWISPrLoginHandler

- (CNWISPrLoginHandler)initWithURLString:(id)a3 queue:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CNWISPrLoginHandler;
  v11 = [(CNWISPrLoginHandler *)&v17 init];
  if (v11)
  {
    v12 = [NSURL URLWithString:v8];
    [(CNWISPrLoginHandler *)v11 setUrl:v12];

    v13 = objc_alloc_init(NSOperationQueue);
    [(CNWISPrLoginHandler *)v11 setOpQueue:v13];

    v14 = [(CNWISPrLoginHandler *)v11 opQueue];
    [v14 setUnderlyingQueue:v9];

    [(CNWISPrLoginHandler *)v11 setResponseHandler:v10];
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
    _os_log_impl(&_mh_execute_header, v3, v4, "CNWISPrLoginHandler dealloced", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = CNWISPrLoginHandler;
  [(CNWISPrLoginHandler *)&v5 dealloc];
}

- (void)start:(id)a3
{
  v9 = a3;
  if (!self->_session)
  {
    v4 = +[CNWISPrLoginHandler sessionConfiguration];
    v5 = [(CNWISPrLoginHandler *)self opQueue];
    v6 = [NSURLSession sessionWithConfiguration:v4 delegate:0 delegateQueue:v5];
    session = self->_session;
    self->_session = v6;
  }

  self->_pollAttempts = 0;
  pollURL = self->_pollURL;
  self->_pollURL = 0;

  [(CNWISPrLoginHandler *)self loginWithURL:self->_url data:v9];
}

- (void)handleAuthReply
{
  objc_initWeak(&location, self);
  v3 = [(CNWISPrLoginHandler *)self opQueue];
  v4 = [v3 underlyingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000114C;
  block[3] = &unk_10001C740;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)poll
{
  v3 = [(CNWISPrLoginHandler *)self url];
  v4 = [NSMutableURLRequest requestWithURL:v3 cachePolicy:4 timeoutInterval:10.0];

  v5 = [(CNWISPrLoginHandler *)self userAgent];
  [v4 setValue:v5 forHTTPHeaderField:off_1000224E0];

  v6 = [(CNWISPrLoginHandler *)self interfaceName];
  [v4 setBoundInterfaceIdentifier:v6];

  objc_initWeak(&location, self);
  session = self->_session;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001324;
  v11[3] = &unk_10001C768;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  v8 = [(NSURLSession *)session dataTaskWithRequest:v4 completionHandler:v11];
  loginDataTask = self->_loginDataTask;
  self->_loginDataTask = v8;

  v10 = [(CNWISPrLoginHandler *)self loginDataTask];
  [v10 resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)pollAfter:(int)a3
{
  v4 = dispatch_time(0, 1000000000 * a3);
  objc_initWeak(&location, self);
  v5 = [(CNWISPrLoginHandler *)self opQueue];
  v6 = [v5 underlyingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000168C;
  block[3] = &unk_10001C740;
  objc_copyWeak(&v8, &location);
  block[4] = self;
  dispatch_after(v4, v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)loginWithURL:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNWISPrLoginHandler *)self url];
  v9 = [NSMutableURLRequest requestWithURL:v8 cachePolicy:4 timeoutInterval:60.0];

  [v9 setHTTPMethod:@"POST"];
  [v9 setHTTPBody:v7];
  [v9 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v7 length]);
  [v9 setValue:v10 forHTTPHeaderField:@"Content-Length"];

  v11 = [(CNWISPrLoginHandler *)self userAgent];
  [v9 setValue:v11 forHTTPHeaderField:off_1000224E0];

  v12 = [(CNWISPrLoginHandler *)self interfaceName];
  [v9 setBoundInterfaceIdentifier:v12];

  interfaceName = self->_interfaceName;
  v14 = CFDictionaryCreate(kCFAllocatorDefault, &kSCProxiesNoGlobal, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v14)
  {
    v15 = v14;
    v16 = SCDynamicStoreCopyProxiesWithOptions();
    if (!v16)
    {
      ValueAtIndex = v15;
LABEL_13:
      CFRelease(ValueAtIndex);
      goto LABEL_14;
    }

    v17 = v16;
    v18 = SCNetworkProxiesCopyMatching();
    if (v18)
    {
      v19 = v18;
      if (CFArrayGetCount(v18) < 1)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
        CFRetain(ValueAtIndex);
      }

      CFRelease(v19);
    }

    else
    {
      ValueAtIndex = 0;
    }

    CFRelease(v17);
    CFRelease(v15);
    if (ValueAtIndex)
    {
      if (CFDictionaryGetCount(ValueAtIndex) >= 1)
      {
        v21 = [(NSURLSession *)self->_session configuration];
        [v21 setConnectionProxyDictionary:ValueAtIndex];
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  objc_initWeak(&location, self);
  session = self->_session;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100001AA0;
  v26[3] = &unk_10001C768;
  objc_copyWeak(&v27, &location);
  v26[4] = self;
  v23 = [(NSURLSession *)session dataTaskWithRequest:v9 completionHandler:v26];
  loginDataTask = self->_loginDataTask;
  self->_loginDataTask = v23;

  v25 = [(CNWISPrLoginHandler *)self loginDataTask];
  [v25 resume];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
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

    loginDataTask = self->_loginDataTask;
    self->_loginDataTask = 0;
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

- (id)authReplyDictionary:(id)a3
{
  if (a3)
  {
    v4 = [NSMutableDictionary dictionaryWithDictionary:?];
    [v4 setObject:self->_userAgent forKeyedSubscript:off_1000224E0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sendResponseCode:(unsigned int)a3 dictionary:(id)a4
{
  v7 = a4;
  v5 = [(CNWISPrLoginHandler *)self responseHandler];

  if (v5)
  {
    v6 = [(CNWISPrLoginHandler *)self responseHandler];
    (v6)[2](v6, v7);
  }
}

- (void)handleAuthenticationReply:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:off_100022460];
  v6 = [v4 objectForKey:off_100022468];
  if (v5 && ([v5 intValue] == 120 ? (v7 = v6 == 0) : (v7 = 1), !v7 && objc_msgSend(v6, "intValue") == 201))
  {
    v8 = [v4 objectForKeyedSubscript:off_1000224B0];
    if (v8)
    {
      v9 = [[NSURL alloc] initWithString:v8];
      pollURL = self->_pollURL;
      self->_pollURL = v9;

      v11 = [v4 objectForKeyedSubscript:off_1000224A0];
      if (v11)
      {
        v12 = sub_100002A8C();
        v13 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v12, v13))
        {
          v17 = 138412546;
          v18 = self;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v12, v13, "%@ received authentication reply with Authentication Pending with delay: %@", &v17, 0x16u);
        }

        v14 = [(__CFString *)v11 intValue];
      }

      else
      {
        v14 = 0;
      }

      [(CNWISPrLoginHandler *)self pollAfter:v14];
    }

    else
    {
      v15 = sub_100002A8C();
      v16 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = off_1000224B0;
        _os_log_impl(&_mh_execute_header, v15, v16, "%@ received authentication reply with Authentication Pending without %@", &v17, 0x16u);
      }

      v11 = [(CNWISPrLoginHandler *)self authReplyDictionary:v4];
      [(CNWISPrLoginHandler *)self sendResponseCode:1 dictionary:v11];
    }
  }

  else
  {
    v8 = [(CNWISPrLoginHandler *)self authReplyDictionary:v4];
    [(CNWISPrLoginHandler *)self sendResponseCode:0 dictionary:v8];
  }
}

- (void)handleAuthenticationPollReply:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:off_100022460];
  v6 = [v4 objectForKey:off_100022468];
  if (!v5 || ([v5 intValue] == 140 ? (v7 = v6 == 0) : (v7 = 1), v7 || objc_msgSend(v6, "intValue") != 201))
  {
    v11 = [(CNWISPrLoginHandler *)self authReplyDictionary:v4];
    v12 = self;
    v13 = 0;
LABEL_12:
    [(CNWISPrLoginHandler *)v12 sendResponseCode:v13 dictionary:v11];
    goto LABEL_13;
  }

  if (self->_pollAttempts == 5)
  {
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      pollURL = self->_pollURL;
      v17 = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = pollURL;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ reached max limit of authentication poll with [%@]", &v17, 0x16u);
    }

    v11 = [(CNWISPrLoginHandler *)self authReplyDictionary:v4];
    v12 = self;
    v13 = 6;
    goto LABEL_12;
  }

  v11 = [v4 objectForKeyedSubscript:off_1000224A0];
  if (v11)
  {
    v14 = sub_100002A8C();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      v17 = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v14, v15, "%@ received authentication poll reply with Authentication Pending with delay: %@", &v17, 0x16u);
    }

    v16 = [(NSURL *)v11 intValue];
  }

  else
  {
    v16 = 0;
  }

  [(CNWISPrLoginHandler *)self pollAfter:v16];
LABEL_13:
}

- (void)parseReceivedData:(id)a3
{
  v4 = [CNHTMLParser parserReadyData:a3];
  if (v4)
  {
    if (self->_pollAttempts <= 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = [[CNHTMLParser alloc] initWithData:v4 purpose:v5];
    v7 = v6;
    if (v6)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100002654;
      v12[3] = &unk_10001C790;
      v12[4] = self;
      [(CNHTMLParser *)v6 parseWithCompletionHandler:v12];
    }

    else
    {
      v10 = sub_100002A8C();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138412290;
        v14 = self;
        _os_log_impl(&_mh_execute_header, v10, v11, "%@ failed to create HTML parser", buf, 0xCu);
      }

      [(CNWISPrLoginHandler *)self sendResponseCode:11 dictionary:0];
    }
  }

  else
  {
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ failed to extract parseable data from the received data", buf, 0xCu);
    }

    [(CNWISPrLoginHandler *)self sendResponseCode:11 dictionary:0];
  }
}

@end