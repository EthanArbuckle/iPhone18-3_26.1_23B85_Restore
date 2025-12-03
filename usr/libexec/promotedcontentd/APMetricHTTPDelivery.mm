@interface APMetricHTTPDelivery
- (APJourneySettings)journeySettings;
- (APMetricHTTPDelivery)init;
- (BOOL)_shouldReturnFakeResponse;
- (id)_hashAndSavePayloadForInternalTesting:(id)testing signature:(id)signature;
- (id)_serverURLForPurpose:(id)purpose;
- (id)buildMetricDeliveryRequestFromData:(id)data toChannel:(id)channel billing:(id)billing signing:(id)signing failIfSignatureIsNotAvailable:(BOOL)available error:(id *)error;
- (id)sendHTTPDeliveryRequest:(id)request error:(id *)error;
- (id)sendPayload:(id)payload error:(id *)error;
- (void)observeClientError:(int64_t)error;
- (void)observeClientTimeout;
- (void)observerServerResponse:(int64_t)response;
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
  isRunningTests = [v2 isRunningTests];

  if (isRunningTests)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = @"YES";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Metric data will not be sent running tests (%@)", &v6, 0xCu);
    }
  }

  return isRunningTests;
}

- (id)buildMetricDeliveryRequestFromData:(id)data toChannel:(id)channel billing:(id)billing signing:(id)signing failIfSignatureIsNotAvailable:(BOOL)available error:(id *)error
{
  availableCopy = available;
  signingCopy = signing;
  billingCopy = billing;
  channelCopy = channel;
  dataCopy = data;
  v18 = objc_alloc_init(APMetricHTTPDeliveryRequest);
  [(APMetricHTTPDeliveryRequest *)v18 setData:dataCopy];

  [(APMetricHTTPDeliveryRequest *)v18 setBilling:billingCopy];
  destination = [channelCopy destination];

  [(APMetricHTTPDeliveryRequest *)v18 setDestination:destination];
  if (!signingCopy)
  {
    v21 = 0;
LABEL_15:
    diary = [(APMetricHTTPDelivery *)self diary];
    [diary recordFailure];

    v20 = 0;
    if (availableCopy)
    {
      goto LABEL_9;
    }

LABEL_16:
    if ((+[APSystemInternal isAppleInternalInstall]& 1) != 0)
    {
      v30 = [NSUserDefaults alloc];
      v31 = [v30 initWithSuiteName:APDefaultsBundleID];
      v32 = [v31 objectForKey:@"APMetricDelivery.disableSigning"];
      bOOLValue = [v32 BOOLValue];

      if (+[APSystemInternal isAppleInternalInstall]&& bOOLValue)
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
  v20 = [(APMetricHTTPDeliveryRequest *)v18 buildSignatureUsingSigning:signingCopy error:&v42];
  v21 = v42;
  if (!v20)
  {
    goto LABEL_15;
  }

  diary2 = [(APMetricHTTPDelivery *)self diary];
  [diary2 recordSuccess];

  v23 = [v20 length];
  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 == 0;
  }

  if (!v24 || !availableCopy)
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

  if (error)
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

    *error = [NSError errorWithDomain:@"APMetricHTTPDeliveryDomain" code:8898 userInfo:v28];
  }

  if ([signingCopy isReady])
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
    v41 = signingCopy;
    if (qword_1004E6D48 != -1)
    {
      dispatch_once(&qword_1004E6D48, v40);
    }
  }

  v38 = 0;
LABEL_32:

  return v38;
}

- (id)_serverURLForPurpose:(id)purpose
{
  purposeCopy = purpose;
  journeySettings = [(APMetricHTTPDelivery *)self journeySettings];
  value = [purposeCopy value];
  v7 = [value isEqualToString:@"ECRouter"];

  if (v7)
  {
    eCServerURL = [journeySettings eCServerURL];
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = purposeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected destination (%@)", &v11, 0xCu);
    }

    eCServerURL = 0;
  }

  return eCServerURL;
}

- (id)sendPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  if ([(APMetricHTTPDelivery *)self _shouldReturnFakeResponse])
  {
    channel = [payloadCopy channel];
    destination = [channel destination];
    v9 = [(APMetricHTTPDelivery *)self _serverURLForPurpose:destination];

    v10 = [[NSHTTPURLResponse alloc] initWithURL:v9 statusCode:200 HTTPVersion:0 headerFields:0];
LABEL_8:
    v22 = v10;
    goto LABEL_9;
  }

  batchesData = [payloadCopy batchesData];
  channel2 = [payloadCopy channel];
  billing = [payloadCopy billing];
  v14 = +[APSigningAuthorityPoolManagerWrapper sharedInstance];
  v9 = [(APMetricHTTPDelivery *)self buildMetricDeliveryRequestFromData:batchesData toChannel:channel2 billing:billing signing:v14 failIfSignatureIsNotAvailable:1 error:error];

  batchInfos = [payloadCopy batchInfos];
  [v9 setBatchInfos:batchInfos];

  fakeNetworkResponse = [payloadCopy fakeNetworkResponse];
  if (fakeNetworkResponse)
  {
    v17 = fakeNetworkResponse;
    v18 = +[APSystemInternal isAppleInternalInstall];

    if (v18)
    {
      fakeNetworkResponse2 = [payloadCopy fakeNetworkResponse];
      headers = [v9 headers];
      v21 = [fakeNetworkResponse2 addFakeResponseHeadersToHeaders:headers];
      [v9 setHeaders:v21];
    }
  }

  if (v9)
  {
    v10 = [(APMetricHTTPDelivery *)self sendHTTPDeliveryRequest:v9 error:error];
    goto LABEL_8;
  }

  v22 = 0;
LABEL_9:

  return v22;
}

- (id)sendHTTPDeliveryRequest:(id)request error:(id *)error
{
  requestCopy = request;
  signature = [requestCopy signature];
  v8 = [signature length];

  if (v8)
  {
    destination = [requestCopy destination];
    v10 = [(APMetricHTTPDelivery *)self _serverURLForPurpose:destination];

    errorCopy = error;
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
    billing = [requestCopy billing];
    v38 = v18;
    v20 = [v18 temporarySessionForClient:billing];

    *buf = 0;
    v49 = buf;
    v50 = 0x3032000000;
    v51 = sub_100329620;
    v52 = sub_100329630;
    v53 = 0;
    v21 = dispatch_group_create();
    dispatch_group_enter(v21);
    v22 = dispatch_get_global_queue(9, 0);
    batchInfos = [requestCopy batchInfos];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100329638;
    block[3] = &unk_10047E4C8;
    block[4] = self;
    v41 = requestCopy;
    v24 = batchInfos;
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

      uRLResponse = 0;
    }

    else
    {
      uRLResponse = [*(v49 + 5) URLResponse];
      responseError = [*(v49 + 5) responseError];
      v30 = responseError;
      if (errorCopy)
      {
        v32 = responseError;
        *errorCopy = v30;
      }

      if (uRLResponse)
      {
        -[APMetricHTTPDelivery observerServerResponse:](self, "observerServerResponse:", [uRLResponse statusCode]);
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

    uRLResponse = 0;
  }

  return uRLResponse;
}

- (void)observerServerResponse:(int64_t)response
{
  if ((response - 200) > 0x63)
  {
    if ((response - 400) > 0x63)
    {
      if ((response - 500) > 0x63)
      {
        return;
      }

      o11y = [(APMetricHTTPDelivery *)self o11y];
      o11y2 = o11y;
      v4 = 1;
    }

    else
    {
      o11y = [(APMetricHTTPDelivery *)self o11y];
      o11y2 = o11y;
      v4 = 0;
    }

    [o11y recordFailure:v4];
  }

  else
  {
    o11y2 = [(APMetricHTTPDelivery *)self o11y];
    [o11y2 recordSuccess];
  }
}

- (void)observeClientError:(int64_t)error
{
  o11y = [(APMetricHTTPDelivery *)self o11y];
  v7 = o11y;
  v5 = 4;
  if (error == -1009)
  {
    v5 = 2;
  }

  if (error == -1001)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  [o11y recordFailure:v6];
}

- (void)observeClientTimeout
{
  o11y = [(APMetricHTTPDelivery *)self o11y];
  [o11y recordFailure:3];
}

- (id)_hashAndSavePayloadForInternalTesting:(id)testing signature:(id)signature
{
  testingCopy = testing;
  signatureCopy = signature;
  if (!+[APSystemInternal isAppleInternalInstall])
  {
    goto LABEL_21;
  }

  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:APDefaultsBundleID];
  if (![v8 BOOLForKey:kAPAutomationLoggingEnabled])
  {

LABEL_21:
    asHexString = 0;
    goto LABEL_22;
  }

  v9 = [@"/tmp/com.apple.ap.promotedcontentd" stringByAppendingPathComponent:@"EC"];
  sha256 = [testingCopy sha256];
  asHexString = [sha256 asHexString];

  v12 = [v9 stringByAppendingPathComponent:asHexString];
  v13 = [v9 stringByAppendingPathComponent:asHexString];
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
      localizedDescription = [v17 localizedDescription];
      *buf = 138543362;
      v39 = localizedDescription;
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
  v23 = [testingCopy writeToFile:v12 options:1 error:&v36];
  v24 = v36;

  if ((v23 & 1) == 0)
  {
    v25 = APLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      localizedDescription2 = [v24 localizedDescription];
      *buf = 138543362;
      v39 = localizedDescription2;
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
  v30 = [signatureCopy writeToFile:v14 atomically:1 encoding:4 error:&v35];
  v31 = v35;

  if ((v30 & 1) == 0)
  {
    v32 = APLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      localizedDescription3 = [v31 localizedDescription];
      *buf = 138543362;
      v39 = localizedDescription3;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "error writing to signature to file %{public}@", buf, 0xCu);
    }
  }

LABEL_22:

  return asHexString;
}

@end