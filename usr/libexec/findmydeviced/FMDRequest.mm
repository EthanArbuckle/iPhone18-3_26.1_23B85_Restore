@interface FMDRequest
- (BOOL)canRequestBeRetriedNow;
- (FMDRequest)initWithAccount:(id)a3;
- (NSMutableDictionary)requestBody;
- (NSMutableDictionary)requestHeaders;
- (NSString)authHeaderValue;
- (int64_t)responseErrorType;
- (void)dealloc;
- (void)deinitializeRequest;
@end

@implementation FMDRequest

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100227F84(self, v3);
  }

  [(FMDRequest *)self deinitializeRequest];
  v4.receiver = self;
  v4.super_class = FMDRequest;
  [(FMDRequest *)&v4 dealloc];
}

- (void)deinitializeRequest
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) deinitializing...", &v6, 0x16u);
  }

  [(FMDRequest *)self setCompletionHandler:0];
  v5 = [(FMDRequest *)self retryHelper];
  [v5 deinitializeHelper];

  [(FMDRequest *)self setRetryHelper:0];
}

- (NSMutableDictionary)requestBody
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(FMDRequest *)self decorator];

  if (v4)
  {
    v5 = [(FMDRequest *)self decorator];
    v6 = [v5 serverContextGenerator];
    v7 = v6[2]();

    [v3 fm_safelyMapKey:@"serverContext" toObject:v7];
    v8 = [(FMDRequest *)self decorator];
    v9 = [v8 deviceContextGenerator];
    v10 = v9[2]();

    [v3 fm_safelyMapKey:@"deviceContext" toObject:v10];
    v11 = [(FMDRequest *)self decorator];
    v12 = [v11 deviceInfoGenerator];
    v13 = v12[2]();

    [v3 fm_safelyMapKey:@"deviceInfo" toObject:v13];
  }

  return v3;
}

- (NSMutableDictionary)requestHeaders
{
  v3 = objc_opt_new();
  v4 = [(FMDRequest *)self authId];

  if (v4)
  {
    v5 = [(FMDRequest *)self authId];
    [v3 setObject:v5 forKeyedSubscript:@"X-Apple-PrsId"];
  }

  v6 = [(FMDRequest *)self apsEnv];

  if (v6)
  {
    v7 = [(FMDRequest *)self apsEnv];
    [v3 setObject:v7 forKeyedSubscript:@"X-Apple-PushEnv"];
  }

  v8 = +[FMDProtectedContextManager sharedManager];
  v18 = 0;
  v19 = 0;
  v9 = [v8 contextForKey:@"serverContextHeaderContext" contextUUID:&v19 error:&v18];
  v10 = v19;
  v11 = v18;

  if (v11)
  {
    v12 = sub_100002880();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022802C(v11, v12);
    }
  }

  [v3 fm_safelyMapKey:@"X-Apple-Ctx" toObject:v9];
  [v3 setObject:@"6.0" forKeyedSubscript:@"X-Apple-Find-API-Ver"];
  v13 = +[FMDServerConfig sharedInstance];
  v14 = [v13 userAgent];

  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"User-Agent"];
  }

  [v3 setObject:@"application/json" forKeyedSubscript:@"Content-Type"];
  v15 = [(FMDRequest *)self authHeaderValue];
  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:@"Authorization"];
  }

  if (+[FMDPreferencesMgr userTestApplication])
  {
    [v3 setObject:@"true" forKeyedSubscript:@"X-Apple-Test-Application"];
  }

  [v3 setObject:@"1.0" forKeyedSubscript:@"X-Apple-Realm-Support"];
  v16 = +[FMDPreferencesMgr httpRequestHeaders];
  if (v16)
  {
    [v3 addEntriesFromDictionary:v16];
  }

  return v3;
}

- (NSString)authHeaderValue
{
  v3 = [(FMDRequest *)self authId];
  v4 = [(FMDRequest *)self authToken];
  v5 = [NSString stringWithFormat:@"%@:%@", v3, v4];

  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1002280A4(v5, v6);
  }

  v7 = [v5 dataUsingEncoding:4];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [v8 base64EncodedString];
    if (v9)
    {
      v10 = [NSString stringWithFormat:@"Basic %@", v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)responseErrorType
{
  v3 = [(FMDRequest *)self httpResponseError];

  if (v3)
  {
    v4 = [(FMDRequest *)self httpResponseError];
    v5 = [v4 domain];
    v6 = [NSURLErrorDomain isEqualToString:v5];

    if (v6)
    {
      v7 = [(FMDRequest *)self httpResponseError];
      v8 = [v7 code];

      if (v8 + 1019 >= 0x13)
      {
        v9 = &qword_100258670;
      }

      else
      {
        v9 = off_1002CE678[v8 + 1019];
      }

      return *v9;
    }

    v10 = [(FMDRequest *)self httpResponseError];
    v11 = [v10 domain];
    v12 = [NSPOSIXErrorDomain isEqualToString:v11];

    if (v12)
    {
      v13 = [(FMDRequest *)self httpResponseError];
      v14 = [v13 code];

      if (v14 == 22)
      {
        v9 = &qword_100258680;
        return *v9;
      }
    }
  }

  v15 = [(FMDRequest *)self httpResponseStatus];
  if (v15 == 401)
  {
    v9 = &qword_100258678;
  }

  else if (v15 == 330)
  {
    v9 = &qword_100258690;
  }

  else
  {
    v9 = &qword_100258670;
    if ([(FMDRequest *)self httpResponseStatus]>= 200 && [(FMDRequest *)self httpResponseStatus]<= 299)
    {
      v9 = &qword_100258660;
    }
  }

  return *v9;
}

- (FMDRequest)initWithAccount:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FMDRequest;
  v5 = [(FMDRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 authId];
    authId = v5->_authId;
    v5->_authId = v6;

    v8 = [v4 authToken];
    authToken = v5->_authToken;
    v5->_authToken = v8;

    v10 = [v4 apsEnvironment];
    apsEnv = v5->_apsEnv;
    v5->_apsEnv = v10;

    v12 = +[NSUUID UUID];
    requestId = v5->_requestId;
    v5->_requestId = v12;

    [(FMDRequest *)v5 setWillRetry:1];
  }

  return v5;
}

- (BOOL)canRequestBeRetriedNow
{
  if ([(FMDRequest *)self completed])
  {
    return 0;
  }

  else
  {
    return ![(FMDRequest *)self cancelled];
  }
}

@end