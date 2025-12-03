@interface TransparencyNetworkRequest
- (TransparencyNetworkRequest)initWithRequest:(id)request;
- (TransparencyNetworkRequest)initWithURL:(id)l data:(id)data timeout:(double)timeout httpMethod:(unint64_t)method uuid:(id)uuid;
- (id)createGETRequestForURL:(id)l timeout:(double)timeout additionalHeaders:(id)headers error:(id *)error;
- (id)initGETWithURL:(id)l;
- (id)initPOSTWithURL:(id)l data:(id)data uuid:(id)uuid;
- (id)initPUSHWithURL:(id)l data:(id)data uuid:(id)uuid;
- (void)createRequestForURL:(id)l timeout:(double)timeout contents:(id)contents additionalHeaders:(id)headers completionHandler:(id)handler;
@end

@implementation TransparencyNetworkRequest

- (id)initGETWithURL:(id)l
{
  lCopy = l;
  +[TransparencySettings defaultNetworkTimeout];
  v5 = [(TransparencyNetworkRequest *)self initWithURL:lCopy data:0 timeout:0 httpMethod:0 uuid:?];

  return v5;
}

- (id)initPOSTWithURL:(id)l data:(id)data uuid:(id)uuid
{
  uuidCopy = uuid;
  dataCopy = data;
  lCopy = l;
  +[TransparencySettings defaultNetworkTimeout];
  v11 = [(TransparencyNetworkRequest *)self initWithURL:lCopy data:dataCopy timeout:1 httpMethod:uuidCopy uuid:?];

  return v11;
}

- (id)initPUSHWithURL:(id)l data:(id)data uuid:(id)uuid
{
  uuidCopy = uuid;
  dataCopy = data;
  lCopy = l;
  +[TransparencySettings defaultNetworkTimeout];
  v11 = [(TransparencyNetworkRequest *)self initWithURL:lCopy data:dataCopy timeout:2 httpMethod:uuidCopy uuid:?];

  return v11;
}

- (TransparencyNetworkRequest)initWithURL:(id)l data:(id)data timeout:(double)timeout httpMethod:(unint64_t)method uuid:(id)uuid
{
  lCopy = l;
  dataCopy = data;
  uuidCopy = uuid;
  if (lCopy && (dataCopy || !method))
  {
    v19.receiver = self;
    v19.super_class = TransparencyNetworkRequest;
    v16 = [(TransparencyNetworkRequest *)&v19 init];
    v17 = v16;
    if (v16)
    {
      [(TransparencyNetworkRequest *)v16 setUrl:lCopy];
      [(TransparencyNetworkRequest *)v17 setData:dataCopy];
      [(TransparencyNetworkRequest *)v17 setTimeout:timeout];
      [(TransparencyNetworkRequest *)v17 setAuthenticated:0];
      [(TransparencyNetworkRequest *)v17 setHttpMethod:method];
      [(TransparencyNetworkRequest *)v17 setUuid:uuidCopy];
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TransparencyNetworkRequest)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy URL];
  hTTPBody = [requestCopy HTTPBody];
  hTTPMethod = [requestCopy HTTPMethod];
  v8 = [hTTPMethod isEqualToString:@"GET"];

  if (v8)
  {
    self = [(TransparencyNetworkRequest *)self initGETWithURL:v5];
LABEL_15:
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    [(TransparencyNetworkRequest *)self setAdditionalHeaders:allHTTPHeaderFields];

    selfCopy = self;
    goto LABEL_16;
  }

  hTTPMethod2 = [requestCopy HTTPMethod];
  v10 = [hTTPMethod2 isEqualToString:@"POST"];

  if (v10)
  {
    v11 = [requestCopy valueForHTTPHeaderField:off_100152398];
    if (v11)
    {
      v12 = [[NSUUID alloc] initWithUUIDString:v11];
    }

    else
    {
      v12 = 0;
    }

    v16 = [(TransparencyNetworkRequest *)self initPOSTWithURL:v5 data:hTTPBody uuid:v12];
LABEL_14:
    self = v16;

    goto LABEL_15;
  }

  hTTPMethod3 = [requestCopy HTTPMethod];
  v14 = [hTTPMethod3 isEqualToString:@"PUSH"];

  if (v14)
  {
    v11 = [requestCopy valueForHTTPHeaderField:off_100152398];
    if (v11)
    {
      v12 = [[NSUUID alloc] initWithUUIDString:v11];
    }

    else
    {
      v12 = 0;
    }

    v16 = [(TransparencyNetworkRequest *)self initPUSHWithURL:v5 data:hTTPBody uuid:v12];
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (void)createRequestForURL:(id)l timeout:(double)timeout contents:(id)contents additionalHeaders:(id)headers completionHandler:(id)handler
{
  contentsCopy = contents;
  headersCopy = headers;
  handlerCopy = handler;
  v15 = [NSMutableURLRequest requestWithURL:l];
  uuid = [(TransparencyNetworkRequest *)self uuid];
  uUIDString = [uuid UUIDString];
  [v15 setValue:uUIDString forHTTPHeaderField:off_100152398];

  v18 = ProtocolVersion_EnumDescriptor();
  v19 = [v18 textFormatNameForValue:kTransparencyProtocolVersion];

  [v15 setValue:v19 forHTTPHeaderField:off_1001523A8];
  v20 = +[TransparencySettings transparencyVersionStr];
  [v15 setValue:v20 forHTTPHeaderField:off_1001523B8];

  [v15 setHTTPBody:contentsCopy];
  httpMethod = [(TransparencyNetworkRequest *)self httpMethod];
  if (httpMethod == 1)
  {
    v22 = @"POST";
  }

  else
  {
    if (httpMethod != 2)
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
  v23 = headersCopy;
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

  if (timeout != 0.0)
  {
    [v15 setTimeoutInterval:timeout];
  }

  handlerCopy[2](handlerCopy, v15, 0);
}

- (id)createGETRequestForURL:(id)l timeout:(double)timeout additionalHeaders:(id)headers error:(id *)error
{
  headersCopy = headers;
  v9 = [NSMutableURLRequest requestWithURL:l];
  [v9 setHTTPMethod:@"GET"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = headersCopy;
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

  if (timeout != 0.0)
  {
    [v9 setTimeoutInterval:timeout];
  }

  return v9;
}

@end