@interface TransparencyNetworkRequest
+ (BOOL)addAccountAuthentication:(id)authentication error:(id *)error;
+ (void)addDeviceAuthentication:(id)authentication signature:(id)signature timestamp:(id)timestamp certs:(id)certs;
- (TransparencyNetworkRequest)initWithRequest:(id)request;
- (TransparencyNetworkRequest)initWithURL:(id)l data:(id)data timeout:(double)timeout httpMethod:(unint64_t)method uuid:(id)uuid;
- (id)createGETRequestForURL:(id)l timeout:(double)timeout additionalHeaders:(id)headers error:(id *)error;
- (id)initGETWithURL:(id)l;
- (id)initPOSTWithURL:(id)l data:(id)data uuid:(id)uuid;
- (id)initPUSHWithURL:(id)l data:(id)data uuid:(id)uuid;
- (void)createRequestForAuthentication:(id)authentication completionHandler:(id)handler;
- (void)createRequestForURL:(id)l timeout:(double)timeout contents:(id)contents additionalHeaders:(id)headers completionHandler:(id)handler;
- (void)createRequestForURL:(id)l timeout:(double)timeout contents:(id)contents authentication:(id)authentication fetchAuthNow:(BOOL)now timeShift:(double)shift additionalHeaders:(id)headers completionHandler:(id)self0;
@end

@implementation TransparencyNetworkRequest

+ (BOOL)addAccountAuthentication:(id)authentication error:(id *)error
{
  authenticationCopy = authentication;
  v6 = [TransparencyAccount authToken:error];
  if (v6)
  {
    [authenticationCopy setValue:v6 forHTTPHeaderField:@"Authorization"];
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

+ (void)addDeviceAuthentication:(id)authentication signature:(id)signature timestamp:(id)timestamp certs:(id)certs
{
  authenticationCopy = authentication;
  signatureCopy = signature;
  timestampCopy = timestamp;
  certsCopy = certs;
  v13 = +[NSMutableData data];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = certsCopy;
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
  [authenticationCopy setValue:v20 forHTTPHeaderField:@"X-Apple-Baa-Certs"];
  v21 = [signatureCopy base64EncodedStringWithOptions:0];
  v22 = [NSString stringWithFormat:@"%@:%@", v21, timestampCopy, v23];

  [authenticationCopy setValue:v22 forHTTPHeaderField:@"X-Apple-Baa-Signature"];
}

- (void)createRequestForURL:(id)l timeout:(double)timeout contents:(id)contents authentication:(id)authentication fetchAuthNow:(BOOL)now timeShift:(double)shift additionalHeaders:(id)headers completionHandler:(id)self0
{
  nowCopy = now;
  contentsCopy = contents;
  authenticationCopy = authentication;
  headersCopy = headers;
  handlerCopy = handler;
  v20 = [NSMutableURLRequest requestWithURL:l];
  uuid = [(TransparencyNetworkRequest *)self uuid];
  uUIDString = [uuid UUIDString];
  [v20 setValue:uUIDString forHTTPHeaderField:off_10038B9D8];

  v23 = ProtocolVersion_EnumDescriptor();
  v24 = [v23 textFormatNameForValue:kTransparencyProtocolVersion];

  [v20 setValue:v24 forHTTPHeaderField:off_10038B9E8];
  v25 = +[TransparencySettings transparencyVersionStr];
  [v20 setValue:v25 forHTTPHeaderField:off_10038B9F8];

  v42 = contentsCopy;
  [v20 setHTTPBody:contentsCopy];
  httpMethod = [(TransparencyNetworkRequest *)self httpMethod];
  if (httpMethod == 1)
  {
    v27 = @"POST";
  }

  else
  {
    if (httpMethod != 2)
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
  v28 = headersCopy;
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

  if (timeout != 0.0)
  {
    [v20 setTimeoutInterval:timeout];
  }

  if (![(TransparencyNetworkRequest *)self authenticated])
  {
    handlerCopy[2](handlerCopy, v20, 0);
    v36 = v42;
    goto LABEL_21;
  }

  if ([authenticationCopy isSupported])
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001B1510;
    v44[3] = &unk_100326350;
    v46 = handlerCopy;
    v20 = v20;
    v45 = v20;
    v36 = v42;
    [authenticationCopy signDataWithTimestamp:v42 fetchNow:nowCopy timeShift:v44 completionHandler:shift];

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
  (handlerCopy)[2](handlerCopy, v20, v39);

  v36 = v42;
LABEL_25:
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
    [v9 setValue:v17 forHTTPHeaderField:off_10038B9F0];
  }

  if (timeout != 0.0)
  {
    [v9 setTimeoutInterval:timeout];
  }

  return v9;
}

- (void)createRequestForAuthentication:(id)authentication completionHandler:(id)handler
{
  handlerCopy = handler;
  authenticationCopy = authentication;
  additionalHeaders = [(TransparencyNetworkRequest *)self additionalHeaders];
  [(TransparencyNetworkRequest *)self createRequestForAuthentication:authenticationCopy fetchAuthNow:0 timeShift:additionalHeaders additionalHeaders:handlerCopy completionHandler:0.0];
}

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
    v11 = [requestCopy valueForHTTPHeaderField:off_10038B9D8];
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
    v11 = [requestCopy valueForHTTPHeaderField:off_10038B9D8];
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
  [v15 setValue:uUIDString forHTTPHeaderField:off_10038B9D8];

  v18 = ProtocolVersion_EnumDescriptor();
  v19 = [v18 textFormatNameForValue:kTransparencyProtocolVersion];

  [v15 setValue:v19 forHTTPHeaderField:off_10038B9E8];
  v20 = +[TransparencySettings transparencyVersionStr];
  [v15 setValue:v20 forHTTPHeaderField:off_10038B9F8];

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
    [v15 setValue:v30 forHTTPHeaderField:off_10038B9F0];
  }

  if (timeout != 0.0)
  {
    [v15 setTimeoutInterval:timeout];
  }

  handlerCopy[2](handlerCopy, v15, 0);
}

@end