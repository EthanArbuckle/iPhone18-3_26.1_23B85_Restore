@interface APAttributionServer
+ (BOOL)sendRequestToServer:(id)a3 requestTimestamp:(id)a4 payloadDeliveryTimestamp:(id)a5 interval:(unint64_t)a6 error:(id *)a7 completionHandler:(id)a8;
+ (void)_processSigningQueue:(id)a3 useFpdi:(BOOL)a4 signingAuthorityPoolManager:(id)a5;
+ (void)_serverPost:(id)a3 requestTimestamp:(id)a4 payloadDeliveryStartDate:(id)a5 interval:(unint64_t)a6 completionHandler:(id)a7;
+ (void)signPayloadWithFpdi:(id)a3 requestTimestamp:(id)a4 interval:(unint64_t)a5 jsonBody:(id)a6 startDate:(id)a7 payloadDeliveryStartDate:(id)a8 completionHandler:(id)a9;
+ (void)signPayloadWithMescal:(id)a3 requestTimestamp:(id)a4 interval:(unint64_t)a5 jsonBody:(id)a6 startDate:(id)a7 deliveryStartDate:(id)a8 isFallback:(BOOL)a9 completionHandler:(id)a10;
@end

@implementation APAttributionServer

+ (BOOL)sendRequestToServer:(id)a3 requestTimestamp:(id)a4 payloadDeliveryTimestamp:(id)a5 interval:(unint64_t)a6 error:(id *)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [v13 requestBody];

  if (v17)
  {
    v18 = [v13 requestBody];
    v45 = 0;
    v19 = [NSJSONSerialization dataWithJSONObject:v18 options:0 error:&v45];
    v20 = v45;

    v21 = v19 != 0;
    if (v19)
    {
      v22 = APPerfLogForCategory();
      v23 = v22;
      if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 134349056;
        v49 = a6;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, a6, "Server Delivery Queue overhead", "id=%{public, name=id}lld", buf, 0xCu);
      }

      v24 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002235AC;
      block[3] = &unk_100479408;
      v44 = a6;
      v39 = v15;
      v40 = v13;
      v41 = v14;
      v42 = v19;
      v43 = v16;
      dispatch_async(v24, block);

      v25 = v39;
    }

    else
    {
      v30 = APLogForCategory();
      v37 = v14;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [v13 requestBody];
        v32 = [v31 jsonString];
        *buf = 138477827;
        v49 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to serialize body %{private}@", buf, 0xCu);

        v14 = v37;
      }

      if (a7)
      {
        v46 = NSLocalizedDescriptionKey;
        v47 = @"Unable to serialize body";
        v33 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v34 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v33];

        v35 = v34;
        *a7 = v34;
        v20 = v34;
        v14 = v37;
      }

      v25 = [v13 payloadForRequestBodyABCLog];
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

    if (a7)
    {
      v50 = NSLocalizedDescriptionKey;
      v51 = @"Malformed request body";
      v27 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v28 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v27];

      v29 = v28;
      *a7 = v28;
    }

    v20 = [v13 payloadForRequestBodyABCLog];
    CreateDiagnosticReport();
    v21 = 0;
  }

  return v21;
}

+ (void)_serverPost:(id)a3 requestTimestamp:(id)a4 payloadDeliveryStartDate:(id)a5 interval:(unint64_t)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v11 storefront];
  if (v15)
  {
    v16 = [v11 storefront];
    v61 = [APAttributionAnalytics storefrontCountryOnly:v16];
  }

  else
  {
    v61 = @"NONE";
  }

  v17 = APPerfLogForCategory();
  v18 = v17;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 134349314;
    v67 = a6;
    v68 = 2114;
    v69 = v61;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, a6, "HTTP Request Time", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", buf, 0x16u);
  }

  v19 = [v11 requestHeader];

  if (!v19)
  {
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Malformed request header", buf, 2u);
    }

    v21 = [v11 payloadForRequestHeaderABCLog];
    CreateDiagnosticReport();
  }

  v22 = [v11 requestHeader];
  v23 = [NSMutableDictionary dictionaryWithDictionary:v22];

  v62 = v23;
  [v23 setObject:@"application/json; charset=utf-8" forKey:@"Content-Type"];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v24 = +[NSProcessInfo processInfo];
    v25 = [v24 isRunningTests];

    if ((v25 & 1) == 0)
    {
      v26 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:0];
      v27 = [v26 valueForKey:@"APAttribution.serverSignBody"];
      if (v27)
      {
        [v62 setObject:v27 forKey:@"X-Apple-BridgeTest"];
      }
    }
  }

  v28 = [v11 requestBody];
  v63 = 0;
  v29 = [NSJSONSerialization dataWithJSONObject:v28 options:0 error:&v63];
  v60 = v63;

  v30 = APLogForCategory();
  v31 = v30;
  if (v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = [v11 requestBody];
      v33 = [v32 jsonString];
      *buf = 138477827;
      v67 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "JSON body %{private}@", buf, 0xCu);
    }

    v58 = a6;
    v59 = v14;

    v34 = APLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v62 jsonString];
      *buf = 138477827;
      v67 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "JSON header %{private}@", buf, 0xCu);
    }

    v36 = [NSURL URLWithString:@"https://ca.iadsdk.apple.com/adserver/attribution/v2"];
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

      v36 = v39;
    }

    v49 = APLogForCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v67 = v36;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Using %{private}@ to post attribution data", buf, 0xCu);
    }

    v50 = +[APNetworkClient sharedAPNetworkClient];
    v51 = [v11 bundleId];
    v52 = [v50 temporarySessionForClient:v51];

    v53 = [[APHTTPRequest alloc] initWithURL:v36 HTTPMethod:2 HTTPHeaders:v62 HTTPBody:v29 serviceName:0 completionHandler:0];
    v54 = +[NSDate now];
    if (v12)
    {
      if (v13)
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
        if (![APAttributionRetryWorkerBridge startWithSession:v52 request:v53 requestorId:@"attribution" intervalId:v58 reportingStorefront:v61 requestTimestamp:v12 daemonStartTime:v55 tokenReturnedToClientDate:v54 payloadDeliveryStartDate:v13])
        {
          v57 = APLogForCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to initiate upload.", buf, 2u);
          }

          CreateDiagnosticReport();
          v14 = v59;
        }

        if (v14)
        {
          (*(v14 + 2))(v14, 1, 0, 0);
        }

        v46 = v60;
        goto LABEL_47;
      }
    }

    else
    {
      v12 = +[NSDate now];
      if (v13)
      {
        goto LABEL_35;
      }
    }

    v13 = +[NSDate now];
    goto LABEL_35;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v43 = [v11 requestBody];
    v44 = [v43 jsonString];
    *buf = 138477827;
    v67 = v44;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Unable to serialize body %{private}@", buf, 0xCu);
  }

  v64 = NSLocalizedDescriptionKey;
  v65 = @"Unable to serialize payload";
  v45 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v46 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:1001 userInfo:v45];

  v47 = APPerfLogForCategory();
  v48 = v47;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *buf = 134349056;
    v67 = a6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, a6, "HTTP Request Time", "id=%{public, name=id}lld", buf, 0xCu);
  }

  (*(v14 + 2))(v14, 0, v46, 0);
  v36 = [v11 payloadForRequestBodyABCLog];
  CreateDiagnosticReport();
LABEL_47:
}

+ (void)signPayloadWithFpdi:(id)a3 requestTimestamp:(id)a4 interval:(unint64_t)a5 jsonBody:(id)a6 startDate:(id)a7 payloadDeliveryStartDate:(id)a8 completionHandler:(id)a9
{
  v13 = a3;
  v14 = a4;
  v58 = a6;
  v15 = a7;
  v16 = a8;
  v55 = a9;
  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Signing: Got FPDI signing request.", buf, 2u);
  }

  [APAttributionServer setHasTriedMescalFallback:0];
  v18 = v15;
  if (qword_1004DF6A8 != -1)
  {
    sub_10039397C();
  }

  [v14 timeIntervalSinceDate:qword_1004DD9D0];
  v19 = [APAttributionAnalytics findBucketForDaemonRunningTime:?];
  v20 = [v13 storefront];

  if (v20)
  {
    v21 = [v13 storefront];
    v56 = [APAttributionAnalytics storefrontCountryOnly:v21];
  }

  else
  {
    v22 = APLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136642819;
      v63 = "+[APAttributionServer signPayloadWithFpdi:requestTimestamp:interval:jsonBody:startDate:payloadDeliveryStartDate:completionHandler:]";
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
      v23 = [qword_1004DF690 signatureForData:v58 error:&v59];
      v24 = v59;
      v53 = +[NSDate now];
      if (v24)
      {
        v25 = APLogForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v63 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Signing: signingAuthorityPoolManager.state == APSigningAuthorityPoolManagerStateSetupSucceeded but signing failed: %{public}@. Fallback to Mescal.", buf, 0xCu);
        }

        v26 = v55;
        LOBYTE(v52) = 1;
        v27 = v58;
        v28 = v18;
        [APAttributionServer signPayloadWithMescal:v13 requestTimestamp:v14 interval:a5 jsonBody:v58 startDate:v18 deliveryStartDate:v16 isFallback:v52 completionHandler:v55];
        v29 = v53;
      }

      else
      {
        v35 = APPerfLogForCategory();
        v36 = v35;
        if (a5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 134349314;
          v63 = a5;
          v64 = 2114;
          v65 = v56;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, a5, "Payload Signing", "id=%{public, name=id}lld storefront=%{public, name=storefront}@", buf, 0x16u);
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

        v28 = v15;
        v29 = v53;
        [APAttributionAnalytics sendTimingAnalytics:@"payloadSigningTime" startDate:v15 endDate:v53 additionalFields:v41];
        [v13 setFpdiSignature:v39];
        [a1 _serverPost:v13 requestTimestamp:v14 payloadDeliveryStartDate:v16 interval:a5 completionHandler:v55];

        v26 = v55;
        v27 = v58;
      }
    }

    else
    {
      v28 = v15;
      if ([qword_1004DF690 state] == 18002 || objc_msgSend(qword_1004DF690, "state") == 18004)
      {
        v31 = APLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Signing: signingAuthorityPoolManager is not ready, starting it.", buf, 2u);
        }

        v32 = qword_1004DF698;
        v27 = v58;
        v33 = [APSigningQueueItem createItemWithRequest:v13 requestTimestamp:v14 interval:a5 jsonBody:v58 startDate:v18 deliveryStartDate:v16 completionHandler:v55];
        v34 = v32;
        v26 = v55;
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
          v27 = v58;
          if (v44)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Signing: signingAuthorityPoolManager has stuck in SetupStarted state. Fallback to Mescal.", buf, 2u);
          }

          v26 = v55;
          LOBYTE(v52) = 1;
          [APAttributionServer signPayloadWithMescal:v13 requestTimestamp:v14 interval:a5 jsonBody:v58 startDate:v18 deliveryStartDate:v16 isFallback:v52 completionHandler:v55];
        }

        else
        {
          if (v44)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Signing: signingAuthorityPoolManager is not ready, adding a request to the queue.", buf, 2u);
          }

          v49 = qword_1004DF698;
          v50 = [APSigningQueueItem createItemWithRequest:v13 requestTimestamp:v14 interval:a5 jsonBody:v58 startDate:v18 deliveryStartDate:v16 completionHandler:v55];
          v51 = v49;
          v26 = v55;
          [v51 add:v50];

          v27 = v58;
          if ([qword_1004DF690 state] == 18000)
          {
            [APAttributionServer _processSigningQueue:qword_1004DF698 useFpdi:1 signingAuthorityPoolManager:qword_1004DF690];
          }
        }
      }

      else
      {
        v45 = [qword_1004DF690 state];
        v46 = [[APSigningAuthorityPoolManager alloc] initWithName:@"attribution_fpdi" poolSize:1 numberToStash:1];
        v47 = qword_1004DF690;
        qword_1004DF690 = v46;

        [qword_1004DF6A0 unlock];
        v48 = APLogForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v63 = v45;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Signing: Unknown signingAuthorityPoolManager state: %ld", buf, 0xCu);
        }

        v26 = v55;
        LOBYTE(v52) = 1;
        v27 = v58;
        [APAttributionServer signPayloadWithMescal:v13 requestTimestamp:v14 interval:a5 jsonBody:v58 startDate:v18 deliveryStartDate:v16 isFallback:v52 completionHandler:v55];
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

    v26 = v55;
    LOBYTE(v52) = 1;
    v27 = v58;
    v28 = v18;
    [APAttributionServer signPayloadWithMescal:v13 requestTimestamp:v14 interval:a5 jsonBody:v58 startDate:v18 deliveryStartDate:v16 isFallback:v52 completionHandler:v55];
    if (qword_1004DF6B8 != -1)
    {
      sub_1003939A4();
    }
  }
}

+ (void)signPayloadWithMescal:(id)a3 requestTimestamp:(id)a4 interval:(unint64_t)a5 jsonBody:(id)a6 startDate:(id)a7 deliveryStartDate:(id)a8 isFallback:(BOOL)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  objc_initWeak(&location, a1);
  v22 = +[APMescalSigningService service];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1002250B8;
  v28[3] = &unk_1004794B0;
  v35 = a9;
  v23 = v21;
  v33 = v23;
  v34[1] = a5;
  v24 = v17;
  v29 = v24;
  v25 = v16;
  v30 = v25;
  v26 = v19;
  v31 = v26;
  objc_copyWeak(v34, &location);
  v27 = v20;
  v32 = v27;
  [v22 signatureForData:v18 waitTime:v28 completion:1.0e10];

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

+ (void)_processSigningQueue:(id)a3 useFpdi:(BOOL)a4 signingAuthorityPoolManager:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = dispatch_queue_create("com.apple.ap.signingAuthorityPoolManager.waitingTasks", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100225664;
  block[3] = &unk_1004794D8;
  v15 = a4;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

@end