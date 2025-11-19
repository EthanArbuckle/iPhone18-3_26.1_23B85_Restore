@interface MSDHubSessionTaskInfo
- (BOOL)addAuthHeader;
- (BOOL)isValid;
- (id)getRequestForTimeout:(double)a3;
@end

@implementation MSDHubSessionTaskInfo

- (BOOL)isValid
{
  v7.receiver = self;
  v7.super_class = MSDHubSessionTaskInfo;
  if (![(MSDSessionTaskInfo *)&v7 isValid])
  {
    return 0;
  }

  v3 = [(MSDHubSessionTaskInfo *)self hmacKey];
  if (v3)
  {
    v4 = [(MSDHubSessionTaskInfo *)self deviceUDID];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)addAuthHeader
{
  v3 = [(MSDHubSessionTaskInfo *)self hmacKey];

  if (!v3)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1160();
    }

    goto LABEL_10;
  }

  v4 = [AluminiumAuthenticator alloc];
  v5 = [(MSDHubSessionTaskInfo *)self hmacKey];
  v6 = [(AluminiumAuthenticator *)v4 initWithASCIIEncodedKey:v5];

  if (!v6)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1124();
    }

LABEL_10:
    v6 = 0;
    v11 = 0;
    v7 = 0;
LABEL_13:

    v12 = 0;
    goto LABEL_5;
  }

  v7 = [NSSet setWithObjects:@"X-Apple-OTA-UDID", @"X-Apple-HMAC-Sent-Timestamp", @"Host", 0];
  v8 = [(MSDSessionTaskInfo *)self request];
  v9 = [(MSDSessionTaskInfo *)self postData];
  v15 = 0;
  v10 = [(AluminiumAuthenticator *)v6 addAuthenticationHeadersToRequest:v8 includedHeaders:v7 body:v9 algorithm:0 error:&v15];
  v11 = v15;

  if ((v10 & 1) == 0)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1094(v11);
    }

    goto LABEL_13;
  }

  v12 = 1;
LABEL_5:

  return v12;
}

- (id)getRequestForTimeout:(double)a3
{
  v5 = [(MSDHubSessionTaskInfo *)self deviceUDID];

  if (v5)
  {
    v6 = [(MSDHubSessionTaskInfo *)self server];
    v7 = [(MSDHubSessionTaskInfo *)self port];
    v8 = [(MSDHubSessionTaskInfo *)self endpoint];
    v9 = [NSString stringWithFormat:@"https://%@:%@%@", v6, v7, v8];
    v10 = [NSURL URLWithString:v9];

    v11 = [[NSMutableURLRequest alloc] initWithURL:v10 cachePolicy:1 timeoutInterval:a3];
    [(MSDSessionTaskInfo *)self setRequest:v11];

    v12 = [(MSDSessionTaskInfo *)self postData];

    v13 = [(MSDSessionTaskInfo *)self request];
    v14 = v13;
    if (v12)
    {
      [v13 setHTTPMethod:@"POST"];

      v14 = [(MSDSessionTaskInfo *)self request];
      [v14 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    }

    else
    {
      [v13 setHTTPMethod:@"GET"];
    }

    v15 = [(MSDSessionTaskInfo *)self request];
    [v15 setValue:@"15" forHTTPHeaderField:@"X-Protocol-Version"];

    v16 = [(MSDHubSessionTaskInfo *)self deviceUDID];

    if (v16)
    {
      v17 = [(MSDSessionTaskInfo *)self request];
      v18 = [(MSDHubSessionTaskInfo *)self deviceUDID];
      [v17 setValue:v18 forHTTPHeaderField:@"X-Apple-OTA-UDID"];

      if ([(MSDHubSessionTaskInfo *)self addAuthHeader])
      {
        v19 = [(MSDSessionTaskInfo *)self request];
        goto LABEL_8;
      }
    }

    else
    {
      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Must specify device udid in request info", v23, 2u);
      }
    }
  }

  else
  {
    v21 = sub_100063A54();
    if (sub_1000083A0(v21))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, 0, OS_LOG_TYPE_ERROR, "Must specify device udid in request info", buf, 2u);
    }

    v10 = 0;
  }

  v19 = 0;
LABEL_8:

  return v19;
}

@end