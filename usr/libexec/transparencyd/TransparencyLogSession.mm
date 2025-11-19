@interface TransparencyLogSession
+ (BOOL)enablePinning;
+ (id)createErrorFromURLResonse:(id)a3 data:(id)a4 allowEmptyData:(BOOL)a5 error:(id)a6;
+ (void)dispatchToQueue:(id)a3 block:(id)a4;
- (BOOL)fetch:(id)a3 allowEmptyData:(BOOL)a4 useReversePush:(BOOL)a5 completionHandler:(id)a6;
- (TransparencyLogSession)initWithWorkloop:(id)a3 analytics:(id)a4 sessionDelegate:(id)a5;
- (TransparencyLogSession)initWithWorkloop:(id)a3 sessionDelegate:(id)a4;
- (id)createAuthenticatedBackgroundSession:(id)a3 delegateQueue:(id)a4;
- (id)createAuthenticatedForegroundSession;
@end

@implementation TransparencyLogSession

- (TransparencyLogSession)initWithWorkloop:(id)a3 analytics:(id)a4 sessionDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = TransparencyLogSession;
  v11 = [(TransparencyLogSession *)&v18 init];
  v12 = v11;
  if (v11)
  {
    [(TransparencyLogSession *)v11 setCallbackWorkloop:v8];
    v13 = dispatch_workloop_create("com.apple.transparencyd.networking");
    [(TransparencyLogSession *)v12 setNetworkingWorkloop:v13];

    [(TransparencyLogSession *)v12 setDelegate:v10];
    v14 = [TransparencyAuthentication alloc];
    v15 = [(TransparencyLogSession *)v12 networkingWorkloop];
    v16 = [(TransparencyAuthentication *)v14 initWithWorkloop:v15];
    [(TransparencyLogSession *)v12 setAuth:v16];

    [(TransparencyLogSession *)v12 setAnalytics:v9];
  }

  return v12;
}

- (TransparencyLogSession)initWithWorkloop:(id)a3 sessionDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TransparencyAnalytics logger];
  v9 = [(TransparencyLogSession *)self initWithWorkloop:v7 analytics:v8 sessionDelegate:v6];

  return v9;
}

+ (BOOL)enablePinning
{
  if (qword_10039CEA0 != -1)
  {
    sub_1002601C8();
  }

  return (byte_10039CE98 & 1) == 0;
}

- (id)createAuthenticatedBackgroundSession:(id)a3 delegateQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.apple.transparencyd"];
  [v8 setDiscretionary:1];
  if (+[TransparencyLogSession enablePinning])
  {
    [v8 set_tlsTrustPinningPolicyName:kSecPolicyNameAppleIDSService];
  }

  v18 = off_10038B9D0;
  v9 = +[TransparencySettings deviceUserAgent];
  v19 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v11 = [v10 mutableCopy];

  v12 = +[TransparencySettings automatedDeviceGroup];
  [v11 setObject:v12 forKeyedSubscript:off_10038B9F0];

  v13 = +[TransparencySettings transparencyVersionStr];
  [v11 setObject:v13 forKeyedSubscript:off_10038B9F8];

  [v8 setHTTPAdditionalHeaders:v11];
  [v8 setTimeoutIntervalForResource:kTransparencyMaxmimumDownloadRecordLifetime];
  [v8 setHTTPCookieStorage:0];
  [v8 setURLCache:0];
  [v8 set_alternativeServicesStorage:0];
  v14 = [(TransparencyLogSession *)self auth];
  LOBYTE(v13) = [v14 isSupported];

  if ((v13 & 1) == 0)
  {
    v15 = +[TransparencyAccount createAuthkitSession];
    [v8 set_appleIDContext:v15];
  }

  v16 = [NSURLSession sessionWithConfiguration:v8 delegate:v6 delegateQueue:v7];

  return v16;
}

- (id)createAuthenticatedForegroundSession
{
  v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v3 setDiscretionary:0];
  if (+[TransparencyLogSession enablePinning])
  {
    [v3 set_tlsTrustPinningPolicyName:kSecPolicyNameAppleIDSService];
  }

  v16 = off_10038B9D0;
  v4 = +[TransparencySettings deviceUserAgent];
  v17 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v6 = [v5 mutableCopy];

  v7 = +[TransparencySettings automatedDeviceGroup];
  [v6 setObject:v7 forKeyedSubscript:off_10038B9F0];

  v8 = +[TransparencySettings transparencyVersionStr];
  [v6 setObject:v8 forKeyedSubscript:off_10038B9F8];

  [v3 setHTTPAdditionalHeaders:v6];
  [v3 setHTTPCookieStorage:0];
  [v3 setURLCache:0];
  [v3 set_alternativeServicesStorage:0];
  v9 = [(TransparencyLogSession *)self auth];
  LOBYTE(v5) = [v9 isSupported];

  if ((v5 & 1) == 0)
  {
    v10 = +[TransparencyAccount createAuthkitSession];
    [v3 set_appleIDContext:v10];
  }

  v11 = objc_alloc_init(NSOperationQueue);
  v12 = [(TransparencyLogSession *)self backgroundSession];

  if (v12)
  {
    [(TransparencyLogSession *)self networkingWorkloop];
  }

  else
  {
    [(TransparencyLogSession *)self callbackWorkloop];
  }
  v13 = ;
  [v11 setUnderlyingQueue:v13];

  v14 = [NSURLSession sessionWithConfiguration:v3 delegate:0 delegateQueue:v11];

  return v14;
}

+ (id)createErrorFromURLResonse:(id)a3 data:(id)a4 allowEmptyData:(BOOL)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([v9 requiresAuthorization])
  {
    v12 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-174 underlyingError:v11 description:@"HTTP request requires authorization code (401)"];
    if (qword_10039CEA8 != -1)
    {
      sub_100260204();
    }

    v13 = qword_10039CEB0;
    if (os_log_type_enabled(qword_10039CEB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "HTTP request requires authorization code (401)";
LABEL_6:
      v15 = v13;
      v16 = 2;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    }
  }

  else if ([v9 successful])
  {
    if (v11)
    {
      v12 = v11;
      goto LABEL_17;
    }

    if (a5 || v10 && [v10 length])
    {
      v12 = 0;
    }

    else
    {
      v12 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-145 underlyingError:0 description:@"HTTP response contains nil or empty data"];
      if (qword_10039CEA8 != -1)
      {
        sub_1002601F0();
      }

      v13 = qword_10039CEB0;
      if (os_log_type_enabled(qword_10039CEB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "HTTP response contains nil or empty data";
        goto LABEL_6;
      }
    }
  }

  else
  {
    v12 = v11;
    if (!v12)
    {
      v12 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", kTransparencyErrorNetwork, [v9 responseCode], @"Unsuccessful HTTP response code: %llu", objc_msgSend(v9, "responseCode"));
    }

    if (qword_10039CEA8 != -1)
    {
      sub_1002601DC();
    }

    v17 = qword_10039CEB0;
    if (os_log_type_enabled(qword_10039CEB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v12;
      v14 = "Unsuccessful HTTP response: %@";
      v15 = v17;
      v16 = 12;
      goto LABEL_16;
    }
  }

LABEL_17:

  return v12;
}

- (BOOL)fetch:(id)a3 allowEmptyData:(BOOL)a4 useReversePush:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = self;
  objc_sync_enter(v12);
  v13 = [(TransparencyLogSession *)v12 foregroundSession];

  if (!v13)
  {
    v14 = [(TransparencyLogSession *)v12 createAuthenticatedForegroundSession];
    [(TransparencyLogSession *)v12 setForegroundSession:v14];
  }

  objc_sync_exit(v12);

  [(TransparencyLogSession *)v12 setFetchCount:[(TransparencyLogSession *)v12 fetchCount]+ 1];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_10023BA00;
  v31[4] = sub_10023BA10;
  v32 = os_transaction_create();
  v15 = [(TransparencyLogSession *)v12 foregroundSession];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10023BA18;
  v26 = &unk_10032C8C0;
  v30 = a4;
  v27 = v12;
  v16 = v11;
  v28 = v16;
  v29 = v31;
  v17 = [v15 dataTaskWithRequest:v10 completionHandler:&v23];

  v18 = [v10 kt_requestId];
  v19 = [v18 UUIDString];
  [v17 setTaskDescription:v19];

  if (v7)
  {
    [v17 set_APSRelayTopic:@"com.apple.private.alloy.kt.webtunnel"];
  }

  [v17 resume];
  if (qword_10039CEA8 != -1)
  {
    sub_100260218();
  }

  v20 = qword_10039CEB0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v10 kt_requestId];
    *buf = 138543362;
    v34 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting fetch for fetchId %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(v31, 8);
  return 1;
}

+ (void)dispatchToQueue:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10023BA00;
  v15 = sub_10023BA10;
  v16 = os_transaction_create();
  if ([TransparencySettings getBool:kTransparencyFlagSwitchAsyncToSync])
  {
    v6[2](v6);
    v7 = v12[5];
    v12[5] = 0;
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10023BD94;
    v8[3] = &unk_10031BE08;
    v9 = v6;
    v10 = &v11;
    dispatch_async(v5, v8);
    v7 = v9;
  }

  _Block_object_dispose(&v11, 8);
}

@end