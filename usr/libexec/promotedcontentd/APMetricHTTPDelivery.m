@interface APMetricHTTPDelivery
- (APJourneySettings)journeySettings;
- (APMetricHTTPDelivery)init;
- (BOOL)_shouldReturnFakeResponse;
- (id)_hashAndSavePayloadForInternalTesting:(id)a3 signature:(id)a4;
- (id)_serverURLForPurpose:(id)a3;
- (id)buildMetricDeliveryRequestFromData:(id)a3 toChannel:(id)a4 billing:(id)a5 signing:(id)a6 failIfSignatureIsNotAvailable:(BOOL)a7 error:(id *)a8;
- (id)sendHTTPDeliveryRequest:(id)a3 error:(id *)a4;
- (id)sendPayload:(id)a3 error:(id *)a4;
- (void)observeClientError:(int64_t)a3;
- (void)observeClientTimeout;
- (void)observerServerResponse:(int64_t)a3;
@end

@implementation APMetricHTTPDelivery

- (APMetricHTTPDelivery)init
{
  v10.receiver = self;
  v10.super_class = APMetricHTTPDelivery;
  v2 = [(APMetricHTTPDelivery *)&v10 init];
  if (v2)
  {
    v3 = [APDeliveryObservability alloc];
    v4 = objc_alloc_init(APDeliveryObservabilityCoreAnalyticsTransmitter);
    v5 = [(APDeliveryObservability *)v3 initWithTransmitter:v4];
    o11y = v2->_o11y;
    v2->_o11y = v5;

    v7 = objc_alloc_init(_TtC7Metrics27APSigningObservabilityDiary);
    diary = v2->_diary;
    v2->_diary = v7;
  }

  return v2;
}

- (APJourneySettings)journeySettings
{
  journeySettings = self->_journeySettings;
  if (!journeySettings)
  {
    v4 = +[APJourneySettings settings];
    v5 = self->_journeySettings;
    self->_journeySettings = v4;

    journeySettings = self->_journeySettings;
  }

  return journeySettings;
}

- (BOOL)_shouldReturnFakeResponse
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isRunningTests];

  if (v3)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = @"YES";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Metric data will not be sent running tests (%@)", &v6, 0xCu);
    }
  }

  return v3;
}

- (id)buildMetricDeliveryRequestFromData:(id)a3 toChannel:(id)a4 billing:(id)a5 signing:(id)a6 failIfSignatureIsNotAvailable:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(APMetricHTTPDeliveryRequest);
  [(APMetricHTTPDeliveryRequest *)v18 setData:v17];

  [(APMetricHTTPDeliveryRequest *)v18 setBilling:v15];
  v19 = [v16 destination];

  [(APMetricHTTPDeliveryRequest *)v18 setDestination:v19];
  if (!v14)
  {
    v21 = 0;
LABEL_15:
    v29 = [(APMetricHTTPDelivery *)self diary];
    [v29 recordFailure];

    v20 = 0;
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_16:
    if ((+[APSystemInternal isAppleInternalInstall]& 1) != 0)
    {
      v30 = [NSUserDefaults alloc];
      v31 = [v30 initWithSuiteName:APDefaultsBundleID];
      v32 = [v31 objectForKey:@"APMetricDelivery.disableSigning"];
      v33 = [v32 BOOLValue];

      if (+[APSystemInternal isAppleInternalInstall]&& v33)
      {
        v45[0] = @"Content-Type";
        v45[1] = @"X-Apple-BridgeTest";
        v46[0] = @"application/json";
        v46[1] = @"true";
        v34 = v46;
        v35 = v45;
        v36 = 2;
LABEL_22:
        v37 = [NSDictionary dictionaryWithObjects:v34 forKeys:v35 count:v36];
        [(APMetricHTTPDeliveryRequest *)v18 setHeaders:v37];
        v38 = v18;

        goto LABEL_32;
      }
    }

    else
    {
      +[APSystemInternal isAppleInternalInstall];
    }

    v43 = @"Content-Type";
    v44 = @"application/json";
    v34 = &v44;
    v35 = &v43;
    v36 = 1;
    goto LABEL_22;
  }

  v42 = 0;
  v20 = [(APMetricHTTPDeliveryRequest *)v18 buildSignatureUsingSigning:v14 error:&v42];
  v21 = v42;
  if (!v20)
  {
    goto LABEL_15;
  }

  v22 = [(APMetricHTTPDelivery *)self diary];
  [v22 recordSuccess];

  v23 = [v20 length];
  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 == 0;
  }

  if (!v24 || !v9)
  {
    goto LABEL_16;
  }

LABEL_9:
  v25 = APLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    *buf = 138478083;
    v50 = v27;
    v51 = 2114;
    v52 = v21;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to get a signature for Journey Server request: %{public}@", buf, 0x16u);
  }

  if (a8)
  {
    if (v21)
    {
      v47 = NSUnderlyingErrorKey;
      v48 = v21;
      v28 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    }

    else
    {
      v28 = 0;
    }

    *a8 = [NSError errorWithDomain:@"APMetricHTTPDeliveryDomain" code:8898 userInfo:v28];
  }

  if ([v14 isReady])
  {
    if (qword_1004E6D40 == -1)
    {
      v38 = 0;
      goto LABEL_32;
    }

    sub_1003946CC();
  }

  else
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100328DEC;
    v40[3] = &unk_1004790A8;
    v41 = v14;
    if (qword_1004E6D48 != -1)
    {
      dispatch_once(&qword_1004E6D48, v40);
    }
  }

  v38 = 0;
LABEL_32:

  return v38;
}

- (id)_serverURLForPurpose:(id)a3
{
  v4 = a3;
  v5 = [(APMetricHTTPDelivery *)self journeySettings];
  v6 = [v4 value];
  v7 = [v6 isEqualToString:@"ECRouter"];

  if (v7)
  {
    v8 = [v5 eCServerURL];
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected destination (%@)", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)sendPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(APMetricHTTPDelivery *)self _shouldReturnFakeResponse])
  {
    v7 = [v6 channel];
    v8 = [v7 destination];
    v9 = [(APMetricHTTPDelivery *)self _serverURLForPurpose:v8];

    v10 = [[NSHTTPURLResponse alloc] initWithURL:v9 statusCode:200 HTTPVersion:0 headerFields:0];
LABEL_8:
    v22 = v10;
    goto LABEL_9;
  }

  v11 = [v6 batchesData];
  v12 = [v6 channel];
  v13 = [v6 billing];
  v14 = +[APSigningAuthorityPoolManagerWrapper sharedInstance];
  v9 = [(APMetricHTTPDelivery *)self buildMetricDeliveryRequestFromData:v11 toChannel:v12 billing:v13 signing:v14 failIfSignatureIsNotAvailable:1 error:a4];

  v15 = [v6 batchInfos];
  [v9 setBatchInfos:v15];

  v16 = [v6 fakeNetworkResponse];
  if (v16)
  {
    v17 = v16;
    v18 = +[APSystemInternal isAppleInternalInstall];

    if (v18)
    {
      v19 = [v6 fakeNetworkResponse];
      v20 = [v9 headers];
      v21 = [v19 addFakeResponseHeadersToHeaders:v20];
      [v9 setHeaders:v21];
    }
  }

  if (v9)
  {
    v10 = [(APMetricHTTPDelivery *)self sendHTTPDeliveryRequest:v9 error:a4];
    goto LABEL_8;
  }

  v22 = 0;
LABEL_9:

  return v22;
}

- (id)sendHTTPDeliveryRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 signature];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 destination];
    v10 = [(APMetricHTTPDelivery *)self _serverURLForPurpose:v9];

    v36 = a4;
    if (+[APSystemInternal isAppleInternalInstall])
    {
      v11 = [NSUserDefaults alloc];
      v12 = [v11 initWithSuiteName:APDefaultsBundleID];
      v13 = [v12 stringForKey:kAPServerEnvironmentKey];
    }

    else
    {
      v13 = 0;
    }

    v16 = kAPServerEnvironmentProduction;
    if (v13)
    {
      v16 = v13;
    }

    v17 = v16;

    v18 = +[APNetworkClient sharedAPNetworkClient];
    v19 = [v6 billing];
    v38 = v18;
    v20 = [v18 temporarySessionForClient:v19];

    *buf = 0;
    v49 = buf;
    v50 = 0x3032000000;
    v51 = sub_100329620;
    v52 = sub_100329630;
    v53 = 0;
    v21 = dispatch_group_create();
    dispatch_group_enter(v21);
    v22 = dispatch_get_global_queue(9, 0);
    v23 = [v6 batchInfos];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100329638;
    block[3] = &unk_10047E4C8;
    block[4] = self;
    v41 = v6;
    v24 = v23;
    v42 = v24;
    v37 = v20;
    v43 = v37;
    v14 = v10;
    v44 = v14;
    v25 = v17;
    v45 = v25;
    v47 = buf;
    v26 = v21;
    v46 = v26;
    dispatch_async(v22, block);
    v27 = dispatch_time(0, 120000000000);
    v28 = dispatch_group_wait(v26, v27);
    v29 = sub_100007F08();
    sub_100394F00(v29, *(v49 + 5), v28 != 0, v24);

    if (v28)
    {
      [(APMetricHTTPDelivery *)self observeClientTimeout];
      v30 = APLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "We timed out waiting for the metric data to be sent to the server!", v39, 2u);
      }

      v15 = 0;
    }

    else
    {
      v15 = [*(v49 + 5) URLResponse];
      v31 = [*(v49 + 5) responseError];
      v30 = v31;
      if (v36)
      {
        v32 = v31;
        *v36 = v30;
      }

      if (v15)
      {
        -[APMetricHTTPDelivery observerServerResponse:](self, "observerServerResponse:", [v15 statusCode]);
      }

      else if (v30)
      {
        [(APMetricHTTPDelivery *)self observeClientError:[v30 code]];
      }

      v33 = APLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Metric data was sent to the server!", v39, 2u);
      }
    }

    v34 = *(v49 + 5);
    *(v49 + 5) = 0;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing signature.", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)observerServerResponse:(int64_t)a3
{
  if ((a3 - 200) > 0x63)
  {
    if ((a3 - 400) > 0x63)
    {
      if ((a3 - 500) > 0x63)
      {
        return;
      }

      v3 = [(APMetricHTTPDelivery *)self o11y];
      v5 = v3;
      v4 = 1;
    }

    else
    {
      v3 = [(APMetricHTTPDelivery *)self o11y];
      v5 = v3;
      v4 = 0;
    }

    [v3 recordFailure:v4];
  }

  else
  {
    v5 = [(APMetricHTTPDelivery *)self o11y];
    [v5 recordSuccess];
  }
}

- (void)observeClientError:(int64_t)a3
{
  v4 = [(APMetricHTTPDelivery *)self o11y];
  v7 = v4;
  v5 = 4;
  if (a3 == -1009)
  {
    v5 = 2;
  }

  if (a3 == -1001)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  [v4 recordFailure:v6];
}

- (void)observeClientTimeout
{
  v2 = [(APMetricHTTPDelivery *)self o11y];
  [v2 recordFailure:3];
}

- (id)_hashAndSavePayloadForInternalTesting:(id)a3 signature:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!+[APSystemInternal isAppleInternalInstall])
  {
    goto LABEL_21;
  }

  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:APDefaultsBundleID];
  if (![v8 BOOLForKey:kAPAutomationLoggingEnabled])
  {

LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v9 = [@"/tmp/com.apple.ap.promotedcontentd" stringByAppendingPathComponent:@"EC"];
  v10 = [v5 sha256];
  v11 = [v10 asHexString];

  v12 = [v9 stringByAppendingPathComponent:v11];
  v13 = [v9 stringByAppendingPathComponent:v11];
  v14 = [v13 stringByAppendingPathExtension:@"sig"];

  v15 = +[NSFileManager defaultManager];
  v37 = 0;
  v16 = [v15 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v37];
  v17 = v37;

  if ((v16 & 1) == 0)
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v17 localizedDescription];
      *buf = 138543362;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "error creating directory %{public}@", buf, 0xCu);
    }
  }

  v20 = +[NSFileManager defaultManager];
  v21 = [v20 fileExistsAtPath:v12];

  if ((v21 & 1) == 0)
  {
    v22 = +[NSFileManager defaultManager];
    [v22 createFileAtPath:v12 contents:0 attributes:0];
  }

  v36 = v17;
  v23 = [v5 writeToFile:v12 options:1 error:&v36];
  v24 = v36;

  if ((v23 & 1) == 0)
  {
    v25 = APLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v24 localizedDescription];
      *buf = 138543362;
      v39 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "error writing to payload to file %{public}@", buf, 0xCu);
    }
  }

  v27 = +[NSFileManager defaultManager];
  v28 = [v27 fileExistsAtPath:v14];

  if ((v28 & 1) == 0)
  {
    v29 = +[NSFileManager defaultManager];
    [v29 createFileAtPath:v14 contents:0 attributes:0];
  }

  v35 = v24;
  v30 = [v6 writeToFile:v14 atomically:1 encoding:4 error:&v35];
  v31 = v35;

  if ((v30 & 1) == 0)
  {
    v32 = APLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [v31 localizedDescription];
      *buf = 138543362;
      v39 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "error writing to signature to file %{public}@", buf, 0xCu);
    }
  }

LABEL_22:

  return v11;
}

@end