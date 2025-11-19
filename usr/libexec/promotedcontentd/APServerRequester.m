@interface APServerRequester
- (APServerRequester)initWithBundleID:(id)a3 requestIdentifier:(id)a4 contextIdentifier:(id)a5 contentIdentifier:(id)a6 idAccount:(id)a7;
- (Class)responseClass;
- (NSDictionary)headers;
- (id)_accountIDsDict;
- (id)_deserializeResponse:(id)a3 error:(id *)a4;
- (id)_serverConfiguration;
- (id)_serverEnvironmentTranslation:(id)a3;
- (id)buildURLForRequestProtobuf:(id)a3;
- (id)idsAsString;
- (id)makeNetworkRequest:(id)a3;
- (id)protoBuffer;
- (void)_logRequestURL:(id)a3 headers:(id)a4 body:(id)a5;
- (void)_logResponse:(id)a3 responseProtobuf:(id)a4 requestProtobufClass:(Class)a5 error:(id)a6;
- (void)cancelDelayedRequest;
- (void)makeDelayedRequest:(double)a3 requestSentHandler:(id)a4 responseCallback:(id)a5;
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

- (APServerRequester)initWithBundleID:(id)a3 requestIdentifier:(id)a4 contextIdentifier:(id)a5 contentIdentifier:(id)a6 idAccount:(id)a7
{
  v13 = a3;
  v14 = a4;
  v25 = a5;
  v24 = a6;
  v15 = a7;
  v16 = v15;
  v17 = 0;
  if (v13 && v14 && v15)
  {
    v26.receiver = self;
    v26.super_class = APServerRequester;
    v18 = [(APServerRequester *)&v26 init:v24];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_bundleID, a3);
      objc_storeStrong(&v19->_requestIdentifier, a4);
      objc_storeStrong(&v19->_contextIdentifier, a5);
      objc_storeStrong(&v19->_contentIdentifier, a6);
      objc_storeStrong(&v19->_idAccount, a7);
      v20 = +[NSDate date];
      [v20 timeIntervalSince1970];
      v19->_timestamp = v21;

      [APTimestampUtilities roundedTimestampFromInterval:v19->_timestamp];
      v19->_roundedTimestamp = v22;
    }

    self = v19;
    v17 = self;
  }

  return v17;
}

- (NSDictionary)headers
{
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [NSMutableDictionary dictionaryWithCapacity:7];
  v7 = [NSString stringWithFormat:@"%.6f", v5];
  [v6 setValue:v7 forKey:@"timestamp"];

  v8 = [(APServerRequester *)self bundleID];
  [v6 setValue:v8 forKey:@"bundleID"];

  v9 = +[APDeviceInfo current];
  v10 = [v9 deviceModel];
  [v6 setValue:v10 forKey:@"device"];

  v11 = +[APDeviceInfo current];
  v12 = [v11 osVersionAndBuild];
  [v6 setValue:v12 forKey:@"os_Version"];

  v13 = [(APServerRequester *)self idAccount];
  v14 = [v13 storefront];
  [v6 setValue:v14 forKey:@"storefront"];

  v15 = +[APDeviceInfo current];
  v16 = [(APServerRequester *)self bundleID];
  v17 = [(APServerRequester *)self idAccount];
  v18 = [v17 storefront];
  v19 = [v15 userAgentStringForBundleID:v16 storefront:v18];
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
  v3 = [(APServerRequester *)self idAccount];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v4 = [NSUserDefaults alloc];
    v5 = [v4 initWithSuiteName:APDefaultsBundleID];
    if ([v5 BOOLForKey:kAPAutomationLoggingEnabled])
    {
      v6 = [(APServerRequester *)self _accountIDsDict];
      v7 = [v6 jsonString];
      goto LABEL_6;
    }
  }

  v5 = [v3 iTunesDSID];
  v6 = [v3 iAdID];
  v8 = [v3 DPID];
  v9 = [v3 contentID];
  v10 = [v3 anonymousDemandID];
  v11 = [v3 toroID];
  v12 = [v3 deviceNewsPlusSubscriberID];
  v7 = [NSString stringWithFormat:@"DSID: %@\niAdID: %@\nDPID: %@\nContentID: %@\nAnonymousDemandID: %@\nToroID: %@\nDeviceNewsPlusSubscriberID: %@", v5, v6, v8, v9, v10, v11, v12];

LABEL_6:

  return v7;
}

- (id)buildURLForRequestProtobuf:(id)a3
{
  v4 = [objc_opt_class() options];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"messageIndex"];
    if (v6)
    {
      v7 = [(APServerRequester *)self _serverConfiguration];
      v8 = [(APServerRequester *)self bundleID];
      v9 = [v7 serverURLForMessageID:v6 andBundleID:v8];

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

- (id)makeNetworkRequest:(id)a3
{
  v4 = a3;
  v34 = [(APServerRequester *)self headers];
  v5 = [(APServerRequester *)self protoBuffer];
  if (!v5)
  {
    v21 = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1001 userInfo:0];
    v4[2](v4, 0, v21);

LABEL_21:
    v24 = 0;
    goto LABEL_30;
  }

  v6 = [(APServerRequester *)self bundleID];

  if (!v6)
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "BundleID cannot be nil, aborting the request.", buf, 2u);
    }

    v23 = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1003 userInfo:0];
    v4[2](v4, 0, v23);

    goto LABEL_21;
  }

  v7 = [(APServerRequester *)self buildURLForRequestProtobuf:v5];
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
        v12 = [(APServerRequester *)self adServerEnvironment];
        *buf = 138543362;
        v40 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Making request to ad server environment %{public}@", buf, 0xCu);
      }
    }

    v13 = [APProtobufSerialization serializeProtobuffer:v5];
    if (v13)
    {
      [(APServerRequester *)self requestWillSend:v7 headers:v34 request:v5];
      v14 = [objc_opt_class() options];
      v33 = [v14 objectForKeyedSubscript:@"messageIndex"];
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
          v19 = [v34 mutableCopy];
          [v19 setObject:v17 forKeyedSubscript:@"X-Apple-ActionSignature"];
          v20 = v34;
          v34 = v19;
        }
      }

      [(APServerRequester *)self _logRequestURL:v7 headers:v34 body:v5];
      v26 = +[NSDate date];
      [v26 timeIntervalSince1970];
      v28 = v27;

      v29 = objc_opt_class();
      objc_initWeak(buf, self);
      v30 = +[APNetworkClient sharedAPNetworkClient];
      v31 = [(APServerRequester *)self bundleID];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1002A8810;
      v35[3] = &unk_10047CF08;
      objc_copyWeak(v37, buf);
      v37[1] = v28;
      v37[2] = v29;
      v36 = v4;
      v24 = [v30 POST:v7 client:v31 headers:v34 body:v13 completionHandler:v35];

      objc_destroyWeak(v37);
      objc_destroyWeak(buf);
    }

    else
    {
      v14 = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1002 userInfo:0];
      v4[2](v4, 0, v14);
      v24 = 0;
    }
  }

  else
  {
    v25 = [NSError errorWithDomain:@"com.apple.ap.LegacyInterface" code:1004 userInfo:0];
    v4[2](v4, 0, v25);

    v24 = 0;
  }

LABEL_30:

  return v24;
}

- (void)makeDelayedRequest:(double)a3 requestSentHandler:(id)a4 responseCallback:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (qword_1004E6A18 != -1)
  {
    sub_100393F00();
  }

  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(APServerRequester *)self requestIdentifier];
    *buf = 138412546;
    v20 = v11;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Delaying request with ID %@ for %.2f seconds.", buf, 0x16u);
  }

  v12 = dispatch_time(0, (a3 * 1000000000.0));
  v13 = qword_1004E6A10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002A8C30;
  block[3] = &unk_10047CF50;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_after(v12, v13, block);
}

- (id)_accountIDsDict
{
  v2 = [(APServerRequester *)self idAccount];
  v26[0] = @"DSID";
  v3 = [v2 iTunesDSID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1004810B8;
  }

  v27[0] = v5;
  v26[1] = @"iAdID";
  v6 = [v2 iAdID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1004810B8;
  }

  v27[1] = v8;
  v26[2] = @"DPID";
  v9 = [v2 DPID];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1004810B8;
  }

  v27[2] = v11;
  v26[3] = @"ContentID";
  v12 = [v2 contentID];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1004810B8;
  }

  v27[3] = v14;
  v26[4] = @"AnonymousDemandID";
  v15 = [v2 anonymousDemandID];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1004810B8;
  }

  v27[4] = v17;
  v26[5] = @"ToroID";
  v18 = [v2 toroID];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_1004810B8;
  }

  v27[5] = v20;
  v26[6] = @"DeviceNewsPlusSubscriberID";
  v21 = [v2 deviceNewsPlusSubscriberID];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_1004810B8;
  }

  v27[6] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:7];

  return v24;
}

- (void)_logRequestURL:(id)a3 headers:(id)a4 body:(id)a5
{
  v77 = a3;
  v8 = a4;
  v9 = a5;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(APServerRequester *)self idsAsString];
    *buf = 138477827;
    v84 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "IDs for request:\n%{private}@", buf, 0xCu);
  }

  v12 = [NSMutableDictionary dictionaryWithCapacity:2];
  v13 = v12;
  if (v8)
  {
    [v12 setValue:v8 forKey:@"headers"];
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

  v15 = [v9 dictionaryRepresentation];

  if (v15)
  {
    v16 = [v9 dictionaryRepresentation];
    [v13 setValue:v16 forKey:@"body"];
  }

  else
  {
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Request body was nil", buf, 2u);
    }
  }

  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [(APServerRequester *)self requestIdentifier];
    v21 = [(APServerRequester *)self contextIdentifier];
    v22 = [(APServerRequester *)self contentIdentifier];
    [(APServerRequester *)self additionalRequestDescription];
    v74 = self;
    v24 = v23 = v9;
    [v13 jsonString];
    v26 = v25 = v13;
    *buf = 138544899;
    v84 = v19;
    v85 = 2113;
    v86 = v77;
    v87 = 2114;
    v88 = v20;
    v89 = 2114;
    v90 = v21;
    v91 = 2114;
    v92 = v22;
    v93 = 2113;
    v94 = v24;
    v95 = 2113;
    v96 = v26;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Making %{public}@ to %{private}@ with identifiers {r:%{public}@, ctx:[%{public}@], cnt:[%{public}@]} %{private}@:\n%{private}@", buf, 0x48u);

    v13 = v25;
    v9 = v23;
    self = v74;
  }

  v27 = objc_autoreleasePoolPush();
  if (+[APSystemInternal isAppleInternalInstall]&& objc_opt_class())
  {
    v73 = objc_alloc_init(APTestHookSender);
    v69 = [(APServerRequester *)self _accountIDsDict];
    v71 = v27;
    v28 = [APTestHookID alloc];
    v29 = [(APServerRequester *)self requestIdentifier];
    v30 = [v29 UUIDString];
    v31 = [v28 initWithID:v30 ofType:2];
    v82[0] = v31;
    v75 = v9;
    v32 = [APTestHookID alloc];
    v33 = [(APServerRequester *)self contentIdentifier];
    v72 = v13;
    v34 = [v32 initWithID:v33 ofType:1];
    v82[1] = v34;
    v35 = [APTestHookID alloc];
    v36 = [(APServerRequester *)self contextIdentifier];
    v37 = [v35 initWithID:v36 ofType:0];
    v82[2] = v37;
    [NSArray arrayWithObjects:v82 count:3];
    v38 = v76 = v8;
    [v73 send:v69 ofType:1 withMetadata:0 forIDs:v38];

    v80[0] = &off_1004923A0;
    v70 = [(APServerRequester *)self requestIdentifier];
    v81[0] = v70;
    v80[1] = &off_1004923B8;
    v39 = [(APServerRequester *)self contentIdentifier];
    v68 = v39;
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = &stru_1004810B8;
    }

    v81[1] = v40;
    v80[2] = &off_1004923D0;
    v41 = [(APServerRequester *)self contextIdentifier];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = &stru_1004810B8;
    }

    v81[2] = v43;
    v44 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:3];
    v45 = [APTestHookID alloc];
    v67 = [(APServerRequester *)self requestIdentifier];
    v46 = [v67 UUIDString];
    v47 = [v45 initWithID:v46 ofType:2];
    v79[0] = v47;
    v48 = [APTestHookID alloc];
    v49 = [(APServerRequester *)self contentIdentifier];
    v50 = [v48 initWithID:v49 ofType:1];
    v79[1] = v50;
    v51 = [APTestHookID alloc];
    v52 = [(APServerRequester *)self contextIdentifier];
    v53 = [v51 initWithID:v52 ofType:0];
    v79[2] = v53;
    v54 = [NSArray arrayWithObjects:v79 count:3];
    [v73 send:v44 ofType:0 withMetadata:0 forIDs:v54];

    v55 = [[APTestHookMetadata alloc] initWithHttpHeaders:v76];
    v56 = [APTestHookID alloc];
    v57 = [(APServerRequester *)self requestIdentifier];
    v58 = [v57 UUIDString];
    v59 = [v56 initWithID:v58 ofType:2];
    v78[0] = v59;
    v60 = [APTestHookID alloc];
    v61 = [(APServerRequester *)self contentIdentifier];
    v62 = [v60 initWithID:v61 ofType:1];
    v78[1] = v62;
    v63 = [APTestHookID alloc];
    v64 = [(APServerRequester *)self contextIdentifier];
    v65 = [v63 initWithID:v64 ofType:0];
    v78[2] = v65;
    v66 = [NSArray arrayWithObjects:v78 count:3];
    [v73 send:v75 withMetadata:v55 forIDs:v66];

    v13 = v72;
    v9 = v75;

    v8 = v76;
    v27 = v71;
  }

  objc_autoreleasePoolPop(v27);
}

- (void)_logResponse:(id)a3 responseProtobuf:(id)a4 requestProtobufClass:(Class)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(APServerRequester *)self requestIdentifier];
      v15 = [v12 code];
      v16 = [v12 localizedDescription];
      *buf = 138543874;
      v62 = v14;
      v63 = 2048;
      v64 = v15;
      v65 = 2114;
      v66 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received error for request %{public}@\nCode:%ld\nReason:%{public}@", buf, 0x20u);
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v10 responseBody];
      v19 = [v18 base64EncodedStringWithOptions:0];
      *buf = 138543362;
      v62 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Base64-encoded response is:\n%{public}@", buf, 0xCu);
    }
  }

  else if ([v10 valid])
  {
    v17 = [NSMutableDictionary dictionaryWithCapacity:2];
    v20 = [v10 responseHeaders];

    if (v20)
    {
      v21 = [v10 responseHeaders];
      [v17 setValue:v21 forKey:@"headers"];
    }

    else
    {
      v21 = APLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Response headers were nil", buf, 2u);
      }
    }

    v25 = [v11 dictionaryRepresentation];

    if (v25)
    {
      v26 = [v11 dictionaryRepresentation];
      [v17 setValue:v26 forKey:@"body"];
    }

    else
    {
      v26 = APLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Response body was nil", buf, 2u);
      }
    }

    v27 = APLogForCategory();
    v28 = v27;
    if (v11)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromClass(a5);
        v32 = [(APServerRequester *)self requestIdentifier];
        v33 = [(APServerRequester *)self contextIdentifier];
        [(APServerRequester *)self contentIdentifier];
        v34 = v55 = self;
        v35 = [(APServerRequester *)self additionalRequestDescription];
        [v17 jsonString];
        v36 = v58 = v10;
        *buf = 138544899;
        v62 = v30;
        v63 = 2114;
        v64 = v31;
        v65 = 2114;
        v66 = v32;
        v67 = 2114;
        v68 = v33;
        v69 = 2114;
        v70 = v34;
        v71 = 2113;
        v72 = v35;
        v73 = 2113;
        v74 = v36;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received %{public}@ from %{public}@ with identifiers {r:%{public}@, ctx:[%{public}@], cnt:[%{public}@]} %{private}@:\n%{private}@", buf, 0x48u);

        v10 = v58;
        self = v55;

        v12 = 0;
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v37 = [(APServerRequester *)self requestIdentifier];
      v38 = [v10 responseBody];
      *buf = 138543619;
      v62 = v37;
      v63 = 2113;
      v64 = v38;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Response protobuf was nil for request: %{public}@ with response: %{private}@", buf, 0x16u);
    }
  }

  else
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [(APServerRequester *)self requestIdentifier];
      *buf = 138543618;
      v62 = v23;
      v63 = 2048;
      v64 = [v10 responseStatusCode];
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Response not valid %{public}@\n status %ld", buf, 0x16u);
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v10 responseHeaders];
      *buf = 138412290;
      v62 = v24;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "response headers %@", buf, 0xCu);
    }
  }

  v39 = objc_autoreleasePoolPush();
  if (+[APSystemInternal isAppleInternalInstall]&& objc_opt_class())
  {
    v40 = objc_alloc_init(APTestHookSender);
    v41 = [APTestHookMetadata alloc];
    v42 = [v10 responseHeaders];
    v53 = [v41 initWithHttpHeaders:v42];

    v43 = [APTestHookID alloc];
    [(APServerRequester *)self requestIdentifier];
    v56 = v59 = v10;
    [v56 UUIDString];
    v54 = v57 = v12;
    v44 = [v43 initWithID:v54 ofType:2];
    v60[0] = v44;
    v45 = [APTestHookID alloc];
    v46 = [(APServerRequester *)self contentIdentifier];
    v47 = [v45 initWithID:v46 ofType:1];
    v60[1] = v47;
    v48 = [APTestHookID alloc];
    [(APServerRequester *)self contextIdentifier];
    v50 = v49 = v11;
    v51 = [v48 initWithID:v50 ofType:0];
    v60[2] = v51;
    v52 = [NSArray arrayWithObjects:v60 count:3];
    [v40 send:v49 withMetadata:v53 forIDs:v52];

    v11 = v49;
    v12 = v57;

    v10 = v59;
  }

  objc_autoreleasePoolPop(v39);
}

- (void)cancelDelayedRequest
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(APServerRequester *)self requestIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelling request with ID %{public}@", &v5, 0xCu);
  }

  [(APServerRequester *)self setCancelled:1];
}

- (id)_deserializeResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length] || !-[APServerRequester isAllowedEmptyResponse](self, "isAllowedEmptyResponse"))
  {
    v8 = [APProtobufSerialization deserializeProtobufferData:v6 ofClass:[(APServerRequester *)self responseClass] error:a4];
    v7 = v8;
    if (v8)
    {
      v9 = v8;
    }

    else if (a4)
    {
      v10 = [(APServerRequester *)self requestIdentifier];
      v11 = [NSString stringWithFormat:@"Deserializing protobuffer failed for request %@.", v10];
      *a4 = [APLegacyInterfaceError validationErrorWithCode:4501 andReason:v11];
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

- (id)_serverEnvironmentTranslation:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [NSURL URLWithString:kAPServerEnvironmentProductionBaseURL];
  v6 = [v5 host];
  if ([v4 isEqual:v6])
  {

LABEL_4:
    v11 = 0;
    goto LABEL_14;
  }

  v7 = [v3 host];
  v8 = [NSURL URLWithString:@"https://news.iadsdk.apple.com/adserver/"];
  v9 = [v8 host];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    goto LABEL_4;
  }

  v12 = [v3 host];
  v13 = [v12 containsString:@"iad2v1"];

  if (v13)
  {
    v14 = &kAPServerEnvironmentQE1;
LABEL_13:
    v11 = *v14;
    goto LABEL_14;
  }

  v15 = [v3 host];
  v16 = [v15 containsString:@"iad2v2"];

  if (v16)
  {
    v14 = &kAPServerEnvironmentQE2;
    goto LABEL_13;
  }

  v17 = [v3 host];
  v18 = [v17 containsString:@"iad2v3"];

  if (v18)
  {
    v14 = &kAPServerEnvironmentQE3;
    goto LABEL_13;
  }

  v19 = [v3 host];
  v20 = [v19 containsString:@"iad2v4"];

  if (v20)
  {
    v14 = &kAPServerEnvironmentQE4;
    goto LABEL_13;
  }

  v22 = [v3 host];
  v23 = [v22 containsString:@"iad2v5"];

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