@interface TransparencyNetworkRequest
- (TransparencyNetworkRequest)initWithRequest:(id)a3;
- (TransparencyNetworkRequest)initWithURL:(id)a3 data:(id)a4 timeout:(double)a5 httpMethod:(unint64_t)a6 uuid:(id)a7;
- (id)createGETRequestForURL:(id)a3 timeout:(double)a4 additionalHeaders:(id)a5 error:(id *)a6;
- (id)initGETWithURL:(id)a3;
- (id)initPOSTWithURL:(id)a3 data:(id)a4 uuid:(id)a5;
- (id)initPUSHWithURL:(id)a3 data:(id)a4 uuid:(id)a5;
- (void)createRequestForURL:(id)a3 timeout:(double)a4 contents:(id)a5 additionalHeaders:(id)a6 completionHandler:(id)a7;
@end

@implementation TransparencyNetworkRequest

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
    v11 = [v4 valueForHTTPHeaderField:off_100152398];
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
    v11 = [v4 valueForHTTPHeaderField:off_100152398];
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
  [v15 setValue:v17 forHTTPHeaderField:off_100152398];

  v18 = ProtocolVersion_EnumDescriptor();
  v19 = [v18 textFormatNameForValue:kTransparencyProtocolVersion];

  [v15 setValue:v19 forHTTPHeaderField:off_1001523A8];
  v20 = +[TransparencySettings transparencyVersionStr];
  [v15 setValue:v20 forHTTPHeaderField:off_1001523B8];

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
    [v15 setValue:v30 forHTTPHeaderField:off_1001523B0];
  }

  if (a4 != 0.0)
  {
    [v15 setTimeoutInterval:a4];
  }

  v14[2](v14, v15, 0);
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
    [v9 setValue:v17 forHTTPHeaderField:off_1001523B0];
  }

  if (a4 != 0.0)
  {
    [v9 setTimeoutInterval:a4];
  }

  return v9;
}

@end