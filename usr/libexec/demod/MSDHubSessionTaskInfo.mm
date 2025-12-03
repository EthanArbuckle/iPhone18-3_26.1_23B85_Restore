@interface MSDHubSessionTaskInfo
- (BOOL)addAuthHeader;
- (BOOL)isValid;
- (id)getRequestForTimeout:(double)timeout;
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

  hmacKey = [(MSDHubSessionTaskInfo *)self hmacKey];
  if (hmacKey)
  {
    deviceUDID = [(MSDHubSessionTaskInfo *)self deviceUDID];
    v5 = deviceUDID != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)addAuthHeader
{
  hmacKey = [(MSDHubSessionTaskInfo *)self hmacKey];

  if (!hmacKey)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1160();
    }

    goto LABEL_10;
  }

  v4 = [AluminiumAuthenticator alloc];
  hmacKey2 = [(MSDHubSessionTaskInfo *)self hmacKey];
  v6 = [(AluminiumAuthenticator *)v4 initWithASCIIEncodedKey:hmacKey2];

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
  request = [(MSDSessionTaskInfo *)self request];
  postData = [(MSDSessionTaskInfo *)self postData];
  v15 = 0;
  v10 = [(AluminiumAuthenticator *)v6 addAuthenticationHeadersToRequest:request includedHeaders:v7 body:postData algorithm:0 error:&v15];
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

- (id)getRequestForTimeout:(double)timeout
{
  deviceUDID = [(MSDHubSessionTaskInfo *)self deviceUDID];

  if (deviceUDID)
  {
    server = [(MSDHubSessionTaskInfo *)self server];
    port = [(MSDHubSessionTaskInfo *)self port];
    endpoint = [(MSDHubSessionTaskInfo *)self endpoint];
    v9 = [NSString stringWithFormat:@"https://%@:%@%@", server, port, endpoint];
    v10 = [NSURL URLWithString:v9];

    v11 = [[NSMutableURLRequest alloc] initWithURL:v10 cachePolicy:1 timeoutInterval:timeout];
    [(MSDSessionTaskInfo *)self setRequest:v11];

    postData = [(MSDSessionTaskInfo *)self postData];

    request = [(MSDSessionTaskInfo *)self request];
    request2 = request;
    if (postData)
    {
      [request setHTTPMethod:@"POST"];

      request2 = [(MSDSessionTaskInfo *)self request];
      [request2 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    }

    else
    {
      [request setHTTPMethod:@"GET"];
    }

    request3 = [(MSDSessionTaskInfo *)self request];
    [request3 setValue:@"15" forHTTPHeaderField:@"X-Protocol-Version"];

    deviceUDID2 = [(MSDHubSessionTaskInfo *)self deviceUDID];

    if (deviceUDID2)
    {
      request4 = [(MSDSessionTaskInfo *)self request];
      deviceUDID3 = [(MSDHubSessionTaskInfo *)self deviceUDID];
      [request4 setValue:deviceUDID3 forHTTPHeaderField:@"X-Apple-OTA-UDID"];

      if ([(MSDHubSessionTaskInfo *)self addAuthHeader])
      {
        request5 = [(MSDSessionTaskInfo *)self request];
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

  request5 = 0;
LABEL_8:

  return request5;
}

@end