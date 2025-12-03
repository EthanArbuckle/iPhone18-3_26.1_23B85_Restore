@interface APServerRequester
- (APServerRequester)initWithBundleID:(id)d requestIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier contentIdentifier:(id)contentIdentifier idAccount:(id)account;
- (Class)responseClass;
- (NSDictionary)headers;
- (id)_accountIDsDict;
- (id)_deserializeResponse:(id)response error:(id *)error;
- (id)_serverConfiguration;
- (id)_serverEnvironmentTranslation:(id)translation;
- (id)buildURLForRequestProtobuf:(id)protobuf;
- (id)idsAsString;
- (id)makeNetworkRequest:(id)request;
- (id)protoBuffer;
- (void)_logRequestURL:(id)l headers:(id)headers body:(id)body;
- (void)_logResponse:(id)response responseProtobuf:(id)protobuf requestProtobufClass:(Class)class error:(id)error;
- (void)cancelDelayedRequest;
- (void)makeDelayedRequest:(double)request requestSentHandler:(id)handler responseCallback:(id)callback;
@end

@implementation APServerRequester

- (Class)responseClass
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (APServerRequester)initWithBundleID:(id)d requestIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier contentIdentifier:(id)contentIdentifier idAccount:(id)account
{
  dCopy = d;
  identifierCopy = identifier;
  contextIdentifierCopy = contextIdentifier;
  contentIdentifierCopy = contentIdentifier;
  accountCopy = account;
  v16 = accountCopy;
  selfCopy = 0;
  if (dCopy && identifierCopy && accountCopy)
  {
    v26.receiver = self;
    v26.super_class = APServerRequester;
    v18 = [(APServerRequester *)&v26 init:contentIdentifierCopy];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_bundleID, d);
      objc_storeStrong(&v19->_requestIdentifier, identifier);
      objc_storeStrong(&v19->_contextIdentifier, contextIdentifier);
      objc_storeStrong(&v19->_contentIdentifier, contentIdentifier);
      objc_storeStrong(&v19->_idAccount, account);
      v20 = +[NSDate date];
      [v20 timeIntervalSince1970];
      v19->_timestamp = v21;

      [APTimestampUtilities roundedTimestampFromInterval:v19->_timestamp];
      v19->_roundedTimestamp = v22;
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSDictionary)headers
{
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [NSMutableDictionary dictionaryWithCapacity:7];
  v7 = [NSString stringWithFormat:@"%.6f", v5];
  [v6 setValue:v7 forKey:@"timestamp"];

  bundleID = [(APServerRequester *)self bundleID];
  [v6 setValue:bundleID forKey:@"bundleID"];

  v9 = +[APDeviceInfo current];
  deviceModel = [v9 deviceModel];
  [v6 setValue:deviceModel forKey:@"device"];

  v11 = +[APDeviceInfo current];
  osVersionAndBuild = [v11 osVersionAndBuild];
  [v6 setValue:osVersionAndBuild forKey:@"os_Version"];

  idAccount = [(APServerRequester *)self idAccount];
  storefront = [idAccount storefront];
  [v6 setValue:storefront forKey:@"storefront"];

  v15 = +[APDeviceInfo current];
  bundleID2 = [(APServerRequester *)self bundleID];
  idAccount2 = [(APServerRequester *)self idAccount];
  storefront2 = [idAccount2 storefront];
  v19 = [v15 userAgentStringForBundleID:bundleID2 storefront:storefront2];
  [v6 setValue:v19 forKey:@"User-Agent"];

  [v6 setValue:@"com.apple.ap.promotedcontentd" forKey:@"Request-Source"];
  v20 = [v6 copy];

  return v20;
}

- (id)protoBuffer
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)idsAsString
{
  idAccount = [(APServerRequester *)self idAccount];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v4 = [NSUserDefaults alloc];
    iTunesDSID = [v4 initWithSuiteName:APDefaultsBundleID];
    if ([iTunesDSID BOOLForKey:kAPAutomationLoggingEnabled])
    {
      _accountIDsDict = [(APServerRequester *)self _accountIDsDict];
      jsonString = [_accountIDsDict jsonString];
      goto LABEL_6;
    }
  }

  iTunesDSID = [idAccount iTunesDSID];
  _accountIDsDict = [idAccount iAdID];
  dPID = [idAccount DPID];
  contentID = [idAccount contentID];
  anonymousDemandID = [idAccount anonymousDemandID];
  toroID = [idAccount toroID];
  deviceNewsPlusSubscriberID = [idAccount deviceNewsPlusSubscriberID];
  jsonString = [NSString stringWithFormat:@"DSID: %@\niAdID: %@\nDPID: %@\nContentID: %@\nAnonymousDemandID: %@\nToroID: %@\nDeviceNewsPlusSubscriberID: %@", iTunesDSID, _accountIDsDict, dPID, contentID, anonymousDemandID, toroID, deviceNewsPlusSubscriberID];

LABEL_6:

  return jsonString;
}

- (id)buildURLForRequestProtobuf:(id)protobuf
{
  options = [objc_opt_class() options];
  v5 = options;
  if (options)
  {
    v6 = [options objectForKeyedSubscript:@"messageIndex"];
    if (v6)
    {
      _serverConfiguration = [(APServerRequester *)self _serverConfiguration];
      bundleID = [(APServerRequester *)self bundleID];
      v9 = [_serverConfiguration serverURLForMessageID:v6 andBundleID:bundleID];

      v10 = APPBAdsOptions();
      v11 = [v10 objectForKeyedSubscript:@"protocolVersion"];

      if (v11)
      {
        v12 = [v9 URLByAppendingPathComponent:v11];
        v13 = [v5 objectForKeyedSubscript:@"URLSuffix"];
        if (v13)
        {
          v14 = [v12 URLByAppendingPathComponent:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)makeNetworkRequest:(id)request
{
  requestCopy = request;
  headers = [(APServerRequester *)self headers];
  protoBuffer = [(APServerRequester *)self protoBuffer];
  if (!protoBuffer)
  {
    v21 = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1001 userInfo:0];
    requestCopy[2](requestCopy, 0, v21);

LABEL_21:
    v24 = 0;
    goto LABEL_30;
  }

  bundleID = [(APServerRequester *)self bundleID];

  if (!bundleID)
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "BundleID cannot be nil, aborting the request.", buf, 2u);
    }

    v23 = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1003 userInfo:0];
    requestCopy[2](requestCopy, 0, v23);

    goto LABEL_21;
  }

  v7 = [(APServerRequester *)self buildURLForRequestProtobuf:protoBuffer];
  if (v7)
  {
    if (+[APSystemInternal isAppleInternalInstall])
    {
      v8 = [(APServerRequester *)self _serverEnvironmentTranslation:v7];
      v9 = v8;
      if (v8)
      {
        v41 = v8;
        v10 = [NSArray arrayWithObjects:&v41 count:1];
        [(APServerRequester *)self setAdServerEnvironment:v10];
      }

      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        adServerEnvironment = [(APServerRequester *)self adServerEnvironment];
        *buf = 138543362;
        v40 = adServerEnvironment;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Making request to ad server environment %{public}@", buf, 0xCu);
      }
    }

    v13 = [APProtobufSerialization serializeProtobuffer:protoBuffer];
    if (v13)
    {
      [(APServerRequester *)self requestWillSend:v7 headers:headers request:protoBuffer];
      options = [objc_opt_class() options];
      v33 = [options objectForKeyedSubscript:@"messageIndex"];
      if (-[APServerRequester shouldSignRequestWithMessageId:](self, "shouldSignRequestWithMessageId:", [v33 integerValue]))
      {
        v15 = APLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "New signing service is not enabled, sign data using old service.", buf, 2u);
        }

        v16 = +[APMescalSigningService service];
        v38 = 0;
        v17 = [v16 signatureForData:v13 error:&v38];
        v18 = v38;

        if (![v17 length] || v18)
        {
          v20 = APLogForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v40 = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get a signature for LI server request: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v19 = [headers mutableCopy];
          [v19 setObject:v17 forKeyedSubscript:@"X-Apple-ActionSignature"];
          v20 = headers;
          headers = v19;
        }
      }

      [(APServerRequester *)self _logRequestURL:v7 headers:headers body:protoBuffer];
      v26 = +[NSDate date];
      [v26 timeIntervalSince1970];
      v28 = v27;

      v29 = objc_opt_class();
      objc_initWeak(buf, self);
      v30 = +[APNetworkClient sharedAPNetworkClient];
      bundleID2 = [(APServerRequester *)self bundleID];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1002A8810;
      v35[3] = &unk_10047CF08;
      objc_copyWeak(v37, buf);
      v37[1] = v28;
      v37[2] = v29;
      v36 = requestCopy;
      v24 = [v30 POST:v7 client:bundleID2 headers:headers body:v13 completionHandler:v35];

      objc_destroyWeak(v37);
      objc_destroyWeak(buf);
    }

    else
    {
      options = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1002 userInfo:0];
      requestCopy[2](requestCopy, 0, options);
      v24 = 0;
    }
  }

  else
  {
    v25 = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1004 userInfo:0];
    requestCopy[2](requestCopy, 0, v25);

    v24 = 0;
  }

LABEL_30:

  return v24;
}

- (void)makeDelayedRequest:(double)request requestSentHandler:(id)handler responseCallback:(id)callback
{
  handlerCopy = handler;
  callbackCopy = callback;
  if (qword_1004E6A18 != -1)
  {
    sub_100393F00();
  }

  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    requestIdentifier = [(APServerRequester *)self requestIdentifier];
    *buf = 138412546;
    v20 = requestIdentifier;
    v21 = 2048;
    requestCopy = request;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Delaying request with ID %@ for %.2f seconds.", buf, 0x16u);
  }

  v12 = dispatch_time(0, (request * 1000000000.0));
  v13 = qword_1004E6A10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A8C30;
  block[3] = &unk_10047CF50;
  block[4] = self;
  v17 = handlerCopy;
  v18 = callbackCopy;
  v14 = callbackCopy;
  v15 = handlerCopy;
  dispatch_after(v12, v13, block);
}

- (id)_accountIDsDict
{
  idAccount = [(APServerRequester *)self idAccount];
  v26[0] = @"DSID";
  iTunesDSID = [idAccount iTunesDSID];
  v4 = iTunesDSID;
  if (iTunesDSID)
  {
    v5 = iTunesDSID;
  }

  else
  {
    v5 = &stru_1004810B8;
  }

  v27[0] = v5;
  v26[1] = @"iAdID";
  iAdID = [idAccount iAdID];
  v7 = iAdID;
  if (iAdID)
  {
    v8 = iAdID;
  }

  else
  {
    v8 = &stru_1004810B8;
  }

  v27[1] = v8;
  v26[2] = @"DPID";
  dPID = [idAccount DPID];
  v10 = dPID;
  if (dPID)
  {
    v11 = dPID;
  }

  else
  {
    v11 = &stru_1004810B8;
  }

  v27[2] = v11;
  v26[3] = @"ContentID";
  contentID = [idAccount contentID];
  v13 = contentID;
  if (contentID)
  {
    v14 = contentID;
  }

  else
  {
    v14 = &stru_1004810B8;
  }

  v27[3] = v14;
  v26[4] = @"AnonymousDemandID";
  anonymousDemandID = [idAccount anonymousDemandID];
  v16 = anonymousDemandID;
  if (anonymousDemandID)
  {
    v17 = anonymousDemandID;
  }

  else
  {
    v17 = &stru_1004810B8;
  }

  v27[4] = v17;
  v26[5] = @"ToroID";
  toroID = [idAccount toroID];
  v19 = toroID;
  if (toroID)
  {
    v20 = toroID;
  }

  else
  {
    v20 = &stru_1004810B8;
  }

  v27[5] = v20;
  v26[6] = @"DeviceNewsPlusSubscriberID";
  deviceNewsPlusSubscriberID = [idAccount deviceNewsPlusSubscriberID];
  v22 = deviceNewsPlusSubscriberID;
  if (deviceNewsPlusSubscriberID)
  {
    v23 = deviceNewsPlusSubscriberID;
  }

  else
  {
    v23 = &stru_1004810B8;
  }

  v27[6] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:7];

  return v24;
}

- (void)_logRequestURL:(id)l headers:(id)headers body:(id)body
{
  lCopy = l;
  headersCopy = headers;
  bodyCopy = body;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    idsAsString = [(APServerRequester *)self idsAsString];
    *buf = 138477827;
    v84 = idsAsString;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "IDs for request:\n%{private}@", buf, 0xCu);
  }

  v12 = [NSMutableDictionary dictionaryWithCapacity:2];
  v13 = v12;
  if (headersCopy)
  {
    [v12 setValue:headersCopy forKey:@"headers"];
  }

  else
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Request headers were nil", buf, 2u);
    }
  }

  dictionaryRepresentation = [bodyCopy dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    dictionaryRepresentation2 = [bodyCopy dictionaryRepresentation];
    [v13 setValue:dictionaryRepresentation2 forKey:@"body"];
  }

  else
  {
    dictionaryRepresentation2 = APLogForCategory();
    if (os_log_type_enabled(dictionaryRepresentation2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, dictionaryRepresentation2, OS_LOG_TYPE_ERROR, "Request body was nil", buf, 2u);
    }
  }

  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    requestIdentifier = [(APServerRequester *)self requestIdentifier];
    contextIdentifier = [(APServerRequester *)self contextIdentifier];
    contentIdentifier = [(APServerRequester *)self contentIdentifier];
    [(APServerRequester *)self additionalRequestDescription];
    selfCopy = self;
    v24 = v23 = bodyCopy;
    [v13 jsonString];
    v26 = v25 = v13;
    *buf = 138544899;
    v84 = v19;
    v85 = 2113;
    v86 = lCopy;
    v87 = 2114;
    v88 = requestIdentifier;
    v89 = 2114;
    v90 = contextIdentifier;
    v91 = 2114;
    v92 = contentIdentifier;
    v93 = 2113;
    v94 = v24;
    v95 = 2113;
    v96 = v26;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Making %{public}@ to %{private}@ with identifiers {r:%{public}@, ctx:[%{public}@], cnt:[%{public}@]} %{private}@:\n%{private}@", buf, 0x48u);

    v13 = v25;
    bodyCopy = v23;
    self = selfCopy;
  }

  v27 = objc_autoreleasePoolPush();
  if (+[APSystemInternal isAppleInternalInstall]&& objc_opt_class())
  {
    v73 = objc_alloc_init(APTestHookSender);
    _accountIDsDict = [(APServerRequester *)self _accountIDsDict];
    v71 = v27;
    v28 = [APTestHookID alloc];
    requestIdentifier2 = [(APServerRequester *)self requestIdentifier];
    uUIDString = [requestIdentifier2 UUIDString];
    v31 = [v28 initWithID:uUIDString ofType:2];
    v82[0] = v31;
    v75 = bodyCopy;
    v32 = [APTestHookID alloc];
    contentIdentifier2 = [(APServerRequester *)self contentIdentifier];
    v72 = v13;
    v34 = [v32 initWithID:contentIdentifier2 ofType:1];
    v82[1] = v34;
    v35 = [APTestHookID alloc];
    contextIdentifier2 = [(APServerRequester *)self contextIdentifier];
    v37 = [v35 initWithID:contextIdentifier2 ofType:0];
    v82[2] = v37;
    [NSArray arrayWithObjects:v82 count:3];
    v38 = v76 = headersCopy;
    [v73 send:_accountIDsDict ofType:1 withMetadata:0 forIDs:v38];

    v80[0] = &off_1004923A0;
    requestIdentifier3 = [(APServerRequester *)self requestIdentifier];
    v81[0] = requestIdentifier3;
    v80[1] = &off_1004923B8;
    contentIdentifier3 = [(APServerRequester *)self contentIdentifier];
    v68 = contentIdentifier3;
    if (contentIdentifier3)
    {
      v40 = contentIdentifier3;
    }

    else
    {
      v40 = &stru_1004810B8;
    }

    v81[1] = v40;
    v80[2] = &off_1004923D0;
    contextIdentifier3 = [(APServerRequester *)self contextIdentifier];
    v42 = contextIdentifier3;
    if (contextIdentifier3)
    {
      v43 = contextIdentifier3;
    }

    else
    {
      v43 = &stru_1004810B8;
    }

    v81[2] = v43;
    v44 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:3];
    v45 = [APTestHookID alloc];
    requestIdentifier4 = [(APServerRequester *)self requestIdentifier];
    uUIDString2 = [requestIdentifier4 UUIDString];
    v47 = [v45 initWithID:uUIDString2 ofType:2];
    v79[0] = v47;
    v48 = [APTestHookID alloc];
    contentIdentifier4 = [(APServerRequester *)self contentIdentifier];
    v50 = [v48 initWithID:contentIdentifier4 ofType:1];
    v79[1] = v50;
    v51 = [APTestHookID alloc];
    contextIdentifier4 = [(APServerRequester *)self contextIdentifier];
    v53 = [v51 initWithID:contextIdentifier4 ofType:0];
    v79[2] = v53;
    v54 = [NSArray arrayWithObjects:v79 count:3];
    [v73 send:v44 ofType:0 withMetadata:0 forIDs:v54];

    v55 = [[APTestHookMetadata alloc] initWithHttpHeaders:v76];
    v56 = [APTestHookID alloc];
    requestIdentifier5 = [(APServerRequester *)self requestIdentifier];
    uUIDString3 = [requestIdentifier5 UUIDString];
    v59 = [v56 initWithID:uUIDString3 ofType:2];
    v78[0] = v59;
    v60 = [APTestHookID alloc];
    contentIdentifier5 = [(APServerRequester *)self contentIdentifier];
    v62 = [v60 initWithID:contentIdentifier5 ofType:1];
    v78[1] = v62;
    v63 = [APTestHookID alloc];
    contextIdentifier5 = [(APServerRequester *)self contextIdentifier];
    v65 = [v63 initWithID:contextIdentifier5 ofType:0];
    v78[2] = v65;
    v66 = [NSArray arrayWithObjects:v78 count:3];
    [v73 send:v75 withMetadata:v55 forIDs:v66];

    v13 = v72;
    bodyCopy = v75;

    headersCopy = v76;
    v27 = v71;
  }

  objc_autoreleasePoolPop(v27);
}

- (void)_logResponse:(id)response responseProtobuf:(id)protobuf requestProtobufClass:(Class)class error:(id)error
{
  responseCopy = response;
  protobufCopy = protobuf;
  errorCopy = error;
  if (errorCopy)
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      requestIdentifier = [(APServerRequester *)self requestIdentifier];
      code = [errorCopy code];
      localizedDescription = [errorCopy localizedDescription];
      *buf = 138543874;
      v62 = requestIdentifier;
      v63 = 2048;
      responseStatusCode = code;
      v65 = 2114;
      v66 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received error for request %{public}@\nCode:%ld\nReason:%{public}@", buf, 0x20u);
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      responseBody = [responseCopy responseBody];
      v19 = [responseBody base64EncodedStringWithOptions:0];
      *buf = 138543362;
      v62 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Base64-encoded response is:\n%{public}@", buf, 0xCu);
    }
  }

  else if ([responseCopy valid])
  {
    v17 = [NSMutableDictionary dictionaryWithCapacity:2];
    responseHeaders = [responseCopy responseHeaders];

    if (responseHeaders)
    {
      responseHeaders2 = [responseCopy responseHeaders];
      [v17 setValue:responseHeaders2 forKey:@"headers"];
    }

    else
    {
      responseHeaders2 = APLogForCategory();
      if (os_log_type_enabled(responseHeaders2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, responseHeaders2, OS_LOG_TYPE_ERROR, "Response headers were nil", buf, 2u);
      }
    }

    dictionaryRepresentation = [protobufCopy dictionaryRepresentation];

    if (dictionaryRepresentation)
    {
      dictionaryRepresentation2 = [protobufCopy dictionaryRepresentation];
      [v17 setValue:dictionaryRepresentation2 forKey:@"body"];
    }

    else
    {
      dictionaryRepresentation2 = APLogForCategory();
      if (os_log_type_enabled(dictionaryRepresentation2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, dictionaryRepresentation2, OS_LOG_TYPE_ERROR, "Response body was nil", buf, 2u);
      }
    }

    v27 = APLogForCategory();
    v28 = v27;
    if (protobufCopy)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromClass(class);
        requestIdentifier2 = [(APServerRequester *)self requestIdentifier];
        contextIdentifier = [(APServerRequester *)self contextIdentifier];
        [(APServerRequester *)self contentIdentifier];
        v34 = v55 = self;
        additionalRequestDescription = [(APServerRequester *)self additionalRequestDescription];
        [v17 jsonString];
        v36 = v58 = responseCopy;
        *buf = 138544899;
        v62 = v30;
        v63 = 2114;
        responseStatusCode = v31;
        v65 = 2114;
        v66 = requestIdentifier2;
        v67 = 2114;
        v68 = contextIdentifier;
        v69 = 2114;
        v70 = v34;
        v71 = 2113;
        v72 = additionalRequestDescription;
        v73 = 2113;
        v74 = v36;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received %{public}@ from %{public}@ with identifiers {r:%{public}@, ctx:[%{public}@], cnt:[%{public}@]} %{private}@:\n%{private}@", buf, 0x48u);

        responseCopy = v58;
        self = v55;

        errorCopy = 0;
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      requestIdentifier3 = [(APServerRequester *)self requestIdentifier];
      responseBody2 = [responseCopy responseBody];
      *buf = 138543619;
      v62 = requestIdentifier3;
      v63 = 2113;
      responseStatusCode = responseBody2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Response protobuf was nil for request: %{public}@ with response: %{private}@", buf, 0x16u);
    }
  }

  else
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      requestIdentifier4 = [(APServerRequester *)self requestIdentifier];
      *buf = 138543618;
      v62 = requestIdentifier4;
      v63 = 2048;
      responseStatusCode = [responseCopy responseStatusCode];
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Response not valid %{public}@\n status %ld", buf, 0x16u);
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      responseHeaders3 = [responseCopy responseHeaders];
      *buf = 138412290;
      v62 = responseHeaders3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "response headers %@", buf, 0xCu);
    }
  }

  v39 = objc_autoreleasePoolPush();
  if (+[APSystemInternal isAppleInternalInstall]&& objc_opt_class())
  {
    v40 = objc_alloc_init(APTestHookSender);
    v41 = [APTestHookMetadata alloc];
    responseHeaders4 = [responseCopy responseHeaders];
    v53 = [v41 initWithHttpHeaders:responseHeaders4];

    v43 = [APTestHookID alloc];
    [(APServerRequester *)self requestIdentifier];
    v56 = v59 = responseCopy;
    [v56 UUIDString];
    v54 = v57 = errorCopy;
    v44 = [v43 initWithID:v54 ofType:2];
    v60[0] = v44;
    v45 = [APTestHookID alloc];
    contentIdentifier = [(APServerRequester *)self contentIdentifier];
    v47 = [v45 initWithID:contentIdentifier ofType:1];
    v60[1] = v47;
    v48 = [APTestHookID alloc];
    [(APServerRequester *)self contextIdentifier];
    v50 = v49 = protobufCopy;
    v51 = [v48 initWithID:v50 ofType:0];
    v60[2] = v51;
    v52 = [NSArray arrayWithObjects:v60 count:3];
    [v40 send:v49 withMetadata:v53 forIDs:v52];

    protobufCopy = v49;
    errorCopy = v57;

    responseCopy = v59;
  }

  objc_autoreleasePoolPop(v39);
}

- (void)cancelDelayedRequest
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    requestIdentifier = [(APServerRequester *)self requestIdentifier];
    v5 = 138543362;
    v6 = requestIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling request with ID %{public}@", &v5, 0xCu);
  }

  [(APServerRequester *)self setCancelled:1];
}

- (id)_deserializeResponse:(id)response error:(id *)error
{
  responseCopy = response;
  if ([responseCopy length] || !-[APServerRequester isAllowedEmptyResponse](self, "isAllowedEmptyResponse"))
  {
    v8 = [APProtobufSerialization deserializeProtobufferData:responseCopy ofClass:[(APServerRequester *)self responseClass] error:error];
    v7 = v8;
    if (v8)
    {
      v9 = v8;
    }

    else if (error)
    {
      requestIdentifier = [(APServerRequester *)self requestIdentifier];
      v11 = [NSString stringWithFormat:@"Deserializing protobuffer failed for request %@.", requestIdentifier];
      *error = [APLegacyInterfaceError validationErrorWithCode:4501 andReason:v11];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_serverConfiguration
{
  if (qword_1004E6A28 != -1)
  {
    sub_100393F14();
  }

  v3 = qword_1004E6A20;

  return v3;
}

- (id)_serverEnvironmentTranslation:(id)translation
{
  translationCopy = translation;
  host = [translationCopy host];
  v5 = [NSURL URLWithString:kAPServerEnvironmentProductionBaseURL];
  host2 = [v5 host];
  if ([host isEqual:host2])
  {

LABEL_4:
    v11 = 0;
    goto LABEL_14;
  }

  host3 = [translationCopy host];
  v8 = [NSURL URLWithString:@"https://news.iadsdk.apple.com/adserver/"];
  host4 = [v8 host];
  v10 = [host3 isEqual:host4];

  if (v10)
  {
    goto LABEL_4;
  }

  host5 = [translationCopy host];
  v13 = [host5 containsString:@"iad2v1"];

  if (v13)
  {
    v14 = &kAPServerEnvironmentQE1;
LABEL_13:
    v11 = *v14;
    goto LABEL_14;
  }

  host6 = [translationCopy host];
  v16 = [host6 containsString:@"iad2v2"];

  if (v16)
  {
    v14 = &kAPServerEnvironmentQE2;
    goto LABEL_13;
  }

  host7 = [translationCopy host];
  v18 = [host7 containsString:@"iad2v3"];

  if (v18)
  {
    v14 = &kAPServerEnvironmentQE3;
    goto LABEL_13;
  }

  host8 = [translationCopy host];
  v20 = [host8 containsString:@"iad2v4"];

  if (v20)
  {
    v14 = &kAPServerEnvironmentQE4;
    goto LABEL_13;
  }

  host9 = [translationCopy host];
  v23 = [host9 containsString:@"iad2v5"];

  if (v23)
  {
    v11 = @"QE5";
  }

  else
  {
    v11 = @"custom";
  }

LABEL_14:

  return v11;
}

@end