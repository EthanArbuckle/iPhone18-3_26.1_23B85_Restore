@interface APAttributionServer
+ (BOOL)sendRequestToServer:(id)server requestTimestamp:(id)timestamp payloadDeliveryTimestamp:(id)deliveryTimestamp interval:(unint64_t)interval error:(id *)error completionHandler:(id)handler;
+ (void)_processSigningQueue:(id)queue useFpdi:(BOOL)fpdi signingAuthorityPoolManager:(id)manager;
+ (void)_serverPost:(id)post requestTimestamp:(id)timestamp payloadDeliveryStartDate:(id)date interval:(unint64_t)interval completionHandler:(id)handler;
+ (void)signPayloadWithFpdi:(id)fpdi requestTimestamp:(id)timestamp interval:(unint64_t)interval jsonBody:(id)body startDate:(id)date payloadDeliveryStartDate:(id)startDate completionHandler:(id)handler;
+ (void)signPayloadWithMescal:(id)mescal requestTimestamp:(id)timestamp interval:(unint64_t)interval jsonBody:(id)body startDate:(id)date deliveryStartDate:(id)startDate isFallback:(BOOL)fallback completionHandler:(id)self0;
@end

@implementation APAttributionServer

+ (BOOL)sendRequestToServer:(id)server requestTimestamp:(id)timestamp payloadDeliveryTimestamp:(id)deliveryTimestamp interval:(unint64_t)interval error:(id *)error completionHandler:(id)handler
{
  serverCopy = server;
  timestampCopy = timestamp;
  deliveryTimestampCopy = deliveryTimestamp;
  handlerCopy = handler;
  requestBody = [serverCopy requestBody];

  if (requestBody)
  {
    requestBody2 = [serverCopy requestBody];
    v45 = 0;
    v19 = [NSJSONSerialization dataWithJSONObject:requestBody2 options:0 error:&v45];
    payloadForRequestBodyABCLog2 = v45;

    v21 = v19 != 0;
    if (v19)
    {
      v22 = APPerfLogForCategory();
      v23 = v22;
      if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 134349056;
        intervalCopy = interval;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, interval, "Server Delivery Queue overhead", "id=%{public, name=id}lld", buf, 0xCu);
      }

      v24 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002235AC;
      block[3] = &unk_100479408;
      intervalCopy2 = interval;
      v39 = deliveryTimestampCopy;
      v40 = serverCopy;
      v41 = timestampCopy;
      v42 = v19;
      v43 = handlerCopy;
      dispatch_async(v24, block);

      payloadForRequestBodyABCLog = v39;
    }

    else
    {
      v30 = APLogForCategory();
      v37 = timestampCopy;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        requestBody3 = [serverCopy requestBody];
        jsonString = [requestBody3 jsonString];
        *buf = 138477827;
        intervalCopy = jsonString;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to serialize body %{private}@", buf, 0xCu);

        timestampCopy = v37;
      }

      if (error)
      {
        v46 = NSLocalizedDescriptionKey;
        v47 = @"Unable to serialize body";
        v33 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v34 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v33];

        v35 = v34;
        *error = v34;
        payloadForRequestBodyABCLog2 = v34;
        timestampCopy = v37;
      }

      payloadForRequestBodyABCLog = [serverCopy payloadForRequestBodyABCLog];
      CreateDiagnosticReport();
    }
  }

  else
  {
    v26 = APLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Malformed request body", buf, 2u);
    }

    if (error)
    {
      v50 = NSLocalizedDescriptionKey;
      v51 = @"Malformed request body";
      v27 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v28 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v27];

      v29 = v28;
      *error = v28;
    }

    payloadForRequestBodyABCLog2 = [serverCopy payloadForRequestBodyABCLog];
    CreateDiagnosticReport();
    v21 = 0;
  }

  return v21;
}

+ (void)_serverPost:(id)post requestTimestamp:(id)timestamp payloadDeliveryStartDate:(id)date interval:(unint64_t)interval completionHandler:(id)handler
{
  postCopy = post;
  timestampCopy = timestamp;
  dateCopy = date;
  handlerCopy = handler;
  storefront = [postCopy storefront];
  if (storefront)
  {
    storefront2 = [postCopy storefront];
    v61 = [APAttributionAnalytics storefrontCountryOnly:storefront2];
  }

  else
  {
    v61 = @"NONE";
  }

  v17 = APPerfLogForCategory();
  v18 = v17;
  if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 134349314;
    intervalCopy3 = interval;
    v68 = 2114;
    v69 = v61;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, interval, "HTTP Request Time", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", buf, 0x16u);
  }

  requestHeader = [postCopy requestHeader];

  if (!requestHeader)
  {
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Malformed request header", buf, 2u);
    }

    payloadForRequestHeaderABCLog = [postCopy payloadForRequestHeaderABCLog];
    CreateDiagnosticReport();
  }

  requestHeader2 = [postCopy requestHeader];
  v23 = [NSMutableDictionary dictionaryWithDictionary:requestHeader2];

  v62 = v23;
  [v23 setObject:@"application/json; charset=utf-8" forKey:@"Content-Type"];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v24 = +[NSProcessInfo processInfo];
    isRunningTests = [v24 isRunningTests];

    if ((isRunningTests & 1) == 0)
    {
      v26 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:0];
      v27 = [v26 valueForKey:@"APAttribution.serverSignBody"];
      if (v27)
      {
        [v62 setObject:v27 forKey:@"X-Apple-BridgeTest"];
      }
    }
  }

  requestBody = [postCopy requestBody];
  v63 = 0;
  v29 = [NSJSONSerialization dataWithJSONObject:requestBody options:0 error:&v63];
  v60 = v63;

  v30 = APLogForCategory();
  v31 = v30;
  if (v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      requestBody2 = [postCopy requestBody];
      jsonString = [requestBody2 jsonString];
      *buf = 138477827;
      intervalCopy3 = jsonString;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "JSON body %{private}@", buf, 0xCu);
    }

    intervalCopy2 = interval;
    v59 = handlerCopy;

    v34 = APLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      jsonString2 = [v62 jsonString];
      *buf = 138477827;
      intervalCopy3 = jsonString2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "JSON header %{private}@", buf, 0xCu);
    }

    payloadForRequestBodyABCLog = [NSURL URLWithString:@"https://ca.iadsdk.apple.com/adserver/attribution/v2"];
    if (+[APSystemInternal isAppleInternalInstall])
    {
      v37 = objc_alloc_init(APServerConfiguration);
      v38 = [(APServerConfiguration *)v37 serverURLForMessageID:&off_100492070 andBundleID:@"com.apple.ap.adprivacyd"];

      v39 = [v38 URLByAppendingPathComponent:@"attribution/v2"];

      v40 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:0];
      v41 = [v40 valueForKey:@"APAttribution.serverURLoverride"];
      if (v41)
      {
        v42 = [NSURL URLWithString:v41];

        v39 = v42;
      }

      payloadForRequestBodyABCLog = v39;
    }

    v49 = APLogForCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      intervalCopy3 = payloadForRequestBodyABCLog;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Using %{private}@ to post attribution data", buf, 0xCu);
    }

    v50 = +[APNetworkClient sharedAPNetworkClient];
    bundleId = [postCopy bundleId];
    v52 = [v50 temporarySessionForClient:bundleId];

    v53 = [[APHTTPRequest alloc] initWithURL:payloadForRequestBodyABCLog HTTPMethod:2 HTTPHeaders:v62 HTTPBody:v29 serviceName:0 completionHandler:0];
    v54 = +[NSDate now];
    if (timestampCopy)
    {
      if (dateCopy)
      {
LABEL_35:
        if (qword_1004DD9D0)
        {
          v55 = qword_1004DD9D0;
        }

        else
        {
          v55 = +[NSDate now];
        }

        v56 = v55;
        if (![APAttributionRetryWorkerBridge startWithSession:v52 request:v53 requestorId:@"attribution" intervalId:intervalCopy2 reportingStorefront:v61 requestTimestamp:timestampCopy daemonStartTime:v55 tokenReturnedToClientDate:v54 payloadDeliveryStartDate:dateCopy])
        {
          v57 = APLogForCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to initiate upload.", buf, 2u);
          }

          CreateDiagnosticReport();
          handlerCopy = v59;
        }

        if (handlerCopy)
        {
          (*(handlerCopy + 2))(handlerCopy, 1, 0, 0);
        }

        v46 = v60;
        goto LABEL_47;
      }
    }

    else
    {
      timestampCopy = +[NSDate now];
      if (dateCopy)
      {
        goto LABEL_35;
      }
    }

    dateCopy = +[NSDate now];
    goto LABEL_35;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    requestBody3 = [postCopy requestBody];
    jsonString3 = [requestBody3 jsonString];
    *buf = 138477827;
    intervalCopy3 = jsonString3;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Unable to serialize body %{private}@", buf, 0xCu);
  }

  v64 = NSLocalizedDescriptionKey;
  v65 = @"Unable to serialize payload";
  v45 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v46 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:1001 userInfo:v45];

  v47 = APPerfLogForCategory();
  v48 = v47;
  if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *buf = 134349056;
    intervalCopy3 = interval;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, interval, "HTTP Request Time", "id=%{public, name=id}lld", buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, v46, 0);
  payloadForRequestBodyABCLog = [postCopy payloadForRequestBodyABCLog];
  CreateDiagnosticReport();
LABEL_47:
}

+ (void)signPayloadWithFpdi:(id)fpdi requestTimestamp:(id)timestamp interval:(unint64_t)interval jsonBody:(id)body startDate:(id)date payloadDeliveryStartDate:(id)startDate completionHandler:(id)handler
{
  fpdiCopy = fpdi;
  timestampCopy = timestamp;
  bodyCopy = body;
  dateCopy = date;
  startDateCopy = startDate;
  handlerCopy = handler;
  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Signing: Got FPDI signing request.", buf, 2u);
  }

  [APAttributionServer setHasTriedMescalFallback:0];
  v18 = dateCopy;
  if (qword_1004DF6A8 != -1)
  {
    sub_10039397C();
  }

  [timestampCopy timeIntervalSinceDate:qword_1004DD9D0];
  v19 = [APAttributionAnalytics findBucketForDaemonRunningTime:?];
  storefront = [fpdiCopy storefront];

  if (storefront)
  {
    storefront2 = [fpdiCopy storefront];
    v56 = [APAttributionAnalytics storefrontCountryOnly:storefront2];
  }

  else
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136642819;
      intervalCopy = "+[APAttributionServer signPayloadWithFpdi:requestTimestamp:interval:jsonBody:startDate:payloadDeliveryStartDate:completionHandler:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{sensitive}s, Storefront is nil", buf, 0xCu);
    }

    CreateDiagnosticReport();
    v56 = @"NONE";
  }

  if (qword_1004DF690)
  {
    [qword_1004DF6A0 lock];
    if ([qword_1004DF690 state] == 18001)
    {
      [qword_1004DF6A0 unlock];
      v59 = 0;
      v23 = [qword_1004DF690 signatureForData:bodyCopy error:&v59];
      v24 = v59;
      v53 = +[NSDate now];
      if (v24)
      {
        v25 = APLogForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          intervalCopy = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Signing: signingAuthorityPoolManager.state == APSigningAuthorityPoolManagerStateSetupSucceeded but signing failed: %{public}@. Fallback to Mescal.", buf, 0xCu);
        }

        v26 = handlerCopy;
        LOBYTE(v52) = 1;
        v27 = bodyCopy;
        v28 = v18;
        [APAttributionServer signPayloadWithMescal:fpdiCopy requestTimestamp:timestampCopy interval:interval jsonBody:bodyCopy startDate:v18 deliveryStartDate:startDateCopy isFallback:v52 completionHandler:handlerCopy];
        v29 = v53;
      }

      else
      {
        v35 = APPerfLogForCategory();
        v36 = v35;
        if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 134349314;
          intervalCopy = interval;
          v64 = 2114;
          v65 = v56;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, interval, "Payload Signing", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", buf, 0x16u);
        }

        v37 = APLogForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Signing: Using FPDI.", buf, 2u);
        }

        if (!+[APAttributionServer hasSuccessfullySignedWithFPDI])
        {
          v38 = APLogForCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Attribution server: successfully signed payload with FPDI.", buf, 2u);
          }

          AnalyticsSendEvent();
          [APAttributionServer setHasSuccessfullySignedWithFPDI:1];
        }

        v39 = [v23 base64EncodedStringWithOptions:32];
        v60[0] = @"daemonRunningTime";
        v40 = [NSNumber numberWithInteger:v19];
        v61[0] = v40;
        v61[1] = v56;
        v60[1] = @"storeFront";
        v60[2] = @"signingType";
        v61[2] = &off_1004920B8;
        v41 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];

        v28 = dateCopy;
        v29 = v53;
        [APAttributionAnalytics sendTimingAnalytics:@"payloadSigningTime" startDate:dateCopy endDate:v53 additionalFields:v41];
        [fpdiCopy setFpdiSignature:v39];
        [self _serverPost:fpdiCopy requestTimestamp:timestampCopy payloadDeliveryStartDate:startDateCopy interval:interval completionHandler:handlerCopy];

        v26 = handlerCopy;
        v27 = bodyCopy;
      }
    }

    else
    {
      v28 = dateCopy;
      if ([qword_1004DF690 state] == 18002 || objc_msgSend(qword_1004DF690, "state") == 18004)
      {
        v31 = APLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Signing: signingAuthorityPoolManager is not ready, starting it.", buf, 2u);
        }

        v32 = qword_1004DF698;
        v27 = bodyCopy;
        v33 = [APSigningQueueItem createItemWithRequest:fpdiCopy requestTimestamp:timestampCopy interval:interval jsonBody:bodyCopy startDate:v18 deliveryStartDate:startDateCopy completionHandler:handlerCopy];
        v34 = v32;
        v26 = handlerCopy;
        [v34 add:v33];

        byte_1004DF6B0 = 0;
        [qword_1004DF690 setupWithTimeout:&stru_100479488 completion:5.0];
        [qword_1004DF6A0 unlock];
      }

      else if ([qword_1004DF690 state] == 18000)
      {
        v42 = byte_1004DF6B0;
        [qword_1004DF6A0 unlock];
        v43 = APLogForCategory();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
        if (v42 == 1)
        {
          v27 = bodyCopy;
          if (v44)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Signing: signingAuthorityPoolManager has stuck in SetupStarted state. Fallback to Mescal.", buf, 2u);
          }

          v26 = handlerCopy;
          LOBYTE(v52) = 1;
          [APAttributionServer signPayloadWithMescal:fpdiCopy requestTimestamp:timestampCopy interval:interval jsonBody:bodyCopy startDate:v18 deliveryStartDate:startDateCopy isFallback:v52 completionHandler:handlerCopy];
        }

        else
        {
          if (v44)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Signing: signingAuthorityPoolManager is not ready, adding a request to the queue.", buf, 2u);
          }

          v49 = qword_1004DF698;
          v50 = [APSigningQueueItem createItemWithRequest:fpdiCopy requestTimestamp:timestampCopy interval:interval jsonBody:bodyCopy startDate:v18 deliveryStartDate:startDateCopy completionHandler:handlerCopy];
          v51 = v49;
          v26 = handlerCopy;
          [v51 add:v50];

          v27 = bodyCopy;
          if ([qword_1004DF690 state] == 18000)
          {
            [APAttributionServer _processSigningQueue:qword_1004DF698 useFpdi:1 signingAuthorityPoolManager:qword_1004DF690];
          }
        }
      }

      else
      {
        state = [qword_1004DF690 state];
        v46 = [[APSigningAuthorityPoolManager alloc] initWithName:@"attribution_fpdi" poolSize:1 numberToStash:1];
        v47 = qword_1004DF690;
        qword_1004DF690 = v46;

        [qword_1004DF6A0 unlock];
        v48 = APLogForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          intervalCopy = state;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Signing: Unknown signingAuthorityPoolManager state: %ld", buf, 0xCu);
        }

        v26 = handlerCopy;
        LOBYTE(v52) = 1;
        v27 = bodyCopy;
        [APAttributionServer signPayloadWithMescal:fpdiCopy requestTimestamp:timestampCopy interval:interval jsonBody:bodyCopy startDate:v18 deliveryStartDate:startDateCopy isFallback:v52 completionHandler:handlerCopy];
      }
    }
  }

  else
  {
    v30 = APLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Signing: signingAuthorityPoolManager is nil. Using Mescal.", buf, 2u);
    }

    v26 = handlerCopy;
    LOBYTE(v52) = 1;
    v27 = bodyCopy;
    v28 = v18;
    [APAttributionServer signPayloadWithMescal:fpdiCopy requestTimestamp:timestampCopy interval:interval jsonBody:bodyCopy startDate:v18 deliveryStartDate:startDateCopy isFallback:v52 completionHandler:handlerCopy];
    if (qword_1004DF6B8 != -1)
    {
      sub_1003939A4();
    }
  }
}

+ (void)signPayloadWithMescal:(id)mescal requestTimestamp:(id)timestamp interval:(unint64_t)interval jsonBody:(id)body startDate:(id)date deliveryStartDate:(id)startDate isFallback:(BOOL)fallback completionHandler:(id)self0
{
  mescalCopy = mescal;
  timestampCopy = timestamp;
  bodyCopy = body;
  dateCopy = date;
  startDateCopy = startDate;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v22 = +[APMescalSigningService service];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1002250B8;
  v28[3] = &unk_1004794B0;
  fallbackCopy = fallback;
  v23 = handlerCopy;
  v33 = v23;
  v34[1] = interval;
  v24 = timestampCopy;
  v29 = v24;
  v25 = mescalCopy;
  v30 = v25;
  v26 = dateCopy;
  v31 = v26;
  objc_copyWeak(v34, &location);
  v27 = startDateCopy;
  v32 = v27;
  [v22 signatureForData:bodyCopy waitTime:v28 completion:1.0e10];

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

+ (void)_processSigningQueue:(id)queue useFpdi:(BOOL)fpdi signingAuthorityPoolManager:(id)manager
{
  queueCopy = queue;
  managerCopy = manager;
  v9 = dispatch_queue_create("com.apple.ap.signingAuthorityPoolManager.waitingTasks", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100225664;
  block[3] = &unk_1004794D8;
  fpdiCopy = fpdi;
  v13 = queueCopy;
  v14 = managerCopy;
  v10 = managerCopy;
  v11 = queueCopy;
  dispatch_async(v9, block);
}

@end