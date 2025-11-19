@interface TransparencyNetworkRequest
+ (BOOL)addAccountAuthentication:(id)a3 error:(id *)a4;
+ (void)addDeviceAuthentication:(id)a3 signature:(id)a4 timestamp:(id)a5 certs:(id)a6;
- (TransparencyNetworkRequest)initWithRequest:(id)a3;
- (TransparencyNetworkRequest)initWithURL:(id)a3 data:(id)a4 timeout:(double)a5 httpMethod:(unint64_t)a6 uuid:(id)a7;
- (id)createGETRequestForURL:(id)a3 timeout:(double)a4 additionalHeaders:(id)a5 error:(id *)a6;
- (id)initGETWithURL:(id)a3;
- (id)initPOSTWithURL:(id)a3 data:(id)a4 uuid:(id)a5;
- (id)initPUSHWithURL:(id)a3 data:(id)a4 uuid:(id)a5;
- (void)createRequestForAuthentication:(id)a3 completionHandler:(id)a4;
- (void)createRequestForURL:(id)a3 timeout:(double)a4 contents:(id)a5 additionalHeaders:(id)a6 completionHandler:(id)a7;
- (void)createRequestForURL:(id)a3 timeout:(double)a4 contents:(id)a5 authentication:(id)a6 fetchAuthNow:(BOOL)a7 timeShift:(double)a8 additionalHeaders:(id)a9 completionHandler:(id)a10;
@end

@implementation TransparencyNetworkRequest

+ (BOOL)addAccountAuthentication:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [TransparencyAccount authToken:a4];
  if (v6)
  {
    [v5 setValue:v6 forHTTPHeaderField:@"Authorization"];
  }

  else
  {
    if (qword_10039C8C8 != -1)
    {
      sub_10025B320();
    }

    v7 = qword_10039C8D0;
    if (os_log_type_enabled(qword_10039C8D0, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "account authentication failed as well", v9, 2u);
    }
  }

  return v6 != 0;
}

+ (void)addDeviceAuthentication:(id)a3 signature:(id)a4 timestamp:(id)a5 certs:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[NSMutableData data];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = SecCertificateCopyData(*(*(&v23 + 1) + 8 * v18));
        [v13 appendData:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [v13 base64EncodedStringWithOptions:0];
  [v9 setValue:v20 forHTTPHeaderField:@"X-Apple-Baa-Certs"];
  v21 = [v10 base64EncodedStringWithOptions:0];
  v22 = [NSString stringWithFormat:@"%@:%@", v21, v11, v23];

  [v9 setValue:v22 forHTTPHeaderField:@"X-Apple-Baa-Signature"];
}

- (void)createRequestForURL:(id)a3 timeout:(double)a4 contents:(id)a5 authentication:(id)a6 fetchAuthNow:(BOOL)a7 timeShift:(double)a8 additionalHeaders:(id)a9 completionHandler:(id)a10
{
  v40 = a7;
  v17 = a5;
  v41 = a6;
  v18 = a9;
  v19 = a10;
  v20 = [NSMutableURLRequest requestWithURL:a3];
  v21 = [(TransparencyNetworkRequest *)self uuid];
  v22 = [v21 UUIDString];
  [v20 setValue:v22 forHTTPHeaderField:off_10038B9D8];

  v23 = ProtocolVersion_EnumDescriptor();
  v24 = [v23 textFormatNameForValue:kTransparencyProtocolVersion];

  [v20 setValue:v24 forHTTPHeaderField:off_10038B9E8];
  v25 = +[TransparencySettings transparencyVersionStr];
  [v20 setValue:v25 forHTTPHeaderField:off_10038B9F8];

  v42 = v17;
  [v20 setHTTPBody:v17];
  v26 = [(TransparencyNetworkRequest *)self httpMethod];
  if (v26 == 1)
  {
    v27 = @"POST";
  }

  else
  {
    if (v26 != 2)
    {
      goto LABEL_6;
    }

    v27 = @"PUSH";
  }

  [v20 setHTTPMethod:v27];
LABEL_6:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v28 = v18;
  v29 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v48;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v48 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v47 + 1) + 8 * i);
        v34 = [v28 objectForKeyedSubscript:v33];
        [v20 setValue:v34 forHTTPHeaderField:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v30);
  }

  v35 = +[TransparencySettings automatedDeviceGroup];
  if (v35)
  {
    [v20 setValue:v35 forHTTPHeaderField:off_10038B9F0];
  }

  if (a4 != 0.0)
  {
    [v20 setTimeoutInterval:a4];
  }

  if (![(TransparencyNetworkRequest *)self authenticated])
  {
    v19[2](v19, v20, 0);
    v36 = v42;
    goto LABEL_21;
  }

  if ([v41 isSupported])
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001B1510;
    v44[3] = &unk_100326350;
    v46 = v19;
    v20 = v20;
    v45 = v20;
    v36 = v42;
    [v41 signDataWithTimestamp:v42 fetchNow:v40 timeShift:v44 completionHandler:a8];

LABEL_21:
    v37 = v24;
    goto LABEL_25;
  }

  v43 = 0;
  v38 = [TransparencyNetworkRequest addAccountAuthentication:v20 error:&v43];
  v39 = v43;
  if ((v38 & 1) == 0)
  {

    v20 = 0;
  }

  v37 = v24;
  (v19)[2](v19, v20, v39);

  v36 = v42;
LABEL_25:
}

- (id)createGETRequestForURL:(id)a3 timeout:(double)a4 additionalHeaders:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = [NSMutableURLRequest requestWithURL:a3];
  [v9 setHTTPMethod:@"GET"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v19}];
        [v9 setValue:v16 forHTTPHeaderField:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = +[TransparencySettings automatedDeviceGroup];
  if (v17)
  {
    [v9 setValue:v17 forHTTPHeaderField:off_10038B9F0];
  }

  if (a4 != 0.0)
  {
    [v9 setTimeoutInterval:a4];
  }

  return v9;
}

- (void)createRequestForAuthentication:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TransparencyNetworkRequest *)self additionalHeaders];
  [(TransparencyNetworkRequest *)self createRequestForAuthentication:v7 fetchAuthNow:0 timeShift:v8 additionalHeaders:v6 completionHandler:0.0];
}

- (id)initGETWithURL:(id)a3
{
  v4 = a3;
  +[TransparencySettings defaultNetworkTimeout];
  v5 = [(TransparencyNetworkRequest *)self initWithURL:v4 data:0 timeout:0 httpMethod:0 uuid:?];

  return v5;
}

- (id)initPOSTWithURL:(id)a3 data:(id)a4 uuid:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[TransparencySettings defaultNetworkTimeout];
  v11 = [(TransparencyNetworkRequest *)self initWithURL:v10 data:v9 timeout:1 httpMethod:v8 uuid:?];

  return v11;
}

- (id)initPUSHWithURL:(id)a3 data:(id)a4 uuid:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[TransparencySettings defaultNetworkTimeout];
  v11 = [(TransparencyNetworkRequest *)self initWithURL:v10 data:v9 timeout:2 httpMethod:v8 uuid:?];

  return v11;
}

- (TransparencyNetworkRequest)initWithURL:(id)a3 data:(id)a4 timeout:(double)a5 httpMethod:(unint64_t)a6 uuid:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v12 && (v13 || !a6))
  {
    v19.receiver = self;
    v19.super_class = TransparencyNetworkRequest;
    v16 = [(TransparencyNetworkRequest *)&v19 init];
    v17 = v16;
    if (v16)
    {
      [(TransparencyNetworkRequest *)v16 setUrl:v12];
      [(TransparencyNetworkRequest *)v17 setData:v13];
      [(TransparencyNetworkRequest *)v17 setTimeout:a5];
      [(TransparencyNetworkRequest *)v17 setAuthenticated:0];
      [(TransparencyNetworkRequest *)v17 setHttpMethod:a6];
      [(TransparencyNetworkRequest *)v17 setUuid:v14];
    }

    self = v17;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (TransparencyNetworkRequest)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  v6 = [v4 HTTPBody];
  v7 = [v4 HTTPMethod];
  v8 = [v7 isEqualToString:@"GET"];

  if (v8)
  {
    self = [(TransparencyNetworkRequest *)self initGETWithURL:v5];
LABEL_15:
    v17 = [v4 allHTTPHeaderFields];
    [(TransparencyNetworkRequest *)self setAdditionalHeaders:v17];

    v15 = self;
    goto LABEL_16;
  }

  v9 = [v4 HTTPMethod];
  v10 = [v9 isEqualToString:@"POST"];

  if (v10)
  {
    v11 = [v4 valueForHTTPHeaderField:off_10038B9D8];
    if (v11)
    {
      v12 = [[NSUUID alloc] initWithUUIDString:v11];
    }

    else
    {
      v12 = 0;
    }

    v16 = [(TransparencyNetworkRequest *)self initPOSTWithURL:v5 data:v6 uuid:v12];
LABEL_14:
    self = v16;

    goto LABEL_15;
  }

  v13 = [v4 HTTPMethod];
  v14 = [v13 isEqualToString:@"PUSH"];

  if (v14)
  {
    v11 = [v4 valueForHTTPHeaderField:off_10038B9D8];
    if (v11)
    {
      v12 = [[NSUUID alloc] initWithUUIDString:v11];
    }

    else
    {
      v12 = 0;
    }

    v16 = [(TransparencyNetworkRequest *)self initPUSHWithURL:v5 data:v6 uuid:v12];
    goto LABEL_14;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (void)createRequestForURL:(id)a3 timeout:(double)a4 contents:(id)a5 additionalHeaders:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [NSMutableURLRequest requestWithURL:a3];
  v16 = [(TransparencyNetworkRequest *)self uuid];
  v17 = [v16 UUIDString];
  [v15 setValue:v17 forHTTPHeaderField:off_10038B9D8];

  v18 = ProtocolVersion_EnumDescriptor();
  v19 = [v18 textFormatNameForValue:kTransparencyProtocolVersion];

  [v15 setValue:v19 forHTTPHeaderField:off_10038B9E8];
  v20 = +[TransparencySettings transparencyVersionStr];
  [v15 setValue:v20 forHTTPHeaderField:off_10038B9F8];

  [v15 setHTTPBody:v12];
  v21 = [(TransparencyNetworkRequest *)self httpMethod];
  if (v21 == 1)
  {
    v22 = @"POST";
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_6;
    }

    v22 = @"PUSH";
  }

  [v15 setHTTPMethod:v22];
LABEL_6:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v13;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v31 + 1) + 8 * i);
        v29 = [v23 objectForKeyedSubscript:{v28, v31}];
        [v15 setValue:v29 forHTTPHeaderField:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v25);
  }

  v30 = +[TransparencySettings automatedDeviceGroup];
  if (v30)
  {
    [v15 setValue:v30 forHTTPHeaderField:off_10038B9F0];
  }

  if (a4 != 0.0)
  {
    [v15 setTimeoutInterval:a4];
  }

  v14[2](v14, v15, 0);
}

@end