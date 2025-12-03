@interface APMediaServiceRequest
+ (id)_buildQueryParamsForDevicePlatform:(id)platform placement:(id)placement parameters:(id)parameters;
+ (id)_contentDataWithContextIdentifier:(id)identifier serverUnfilledReason:(int64_t)reason diagnosticCode:(int64_t)code;
+ (void)_handleResponseJsonData:(id)data error:(id)error params:(id)params responseReceivedTimestamp:(double)timestamp completionHandler:(id)handler;
+ (void)_handleResult:(id)result error:(id)error params:(id)params responseReceivedTimestamp:(double)timestamp completionHandler:(id)handler;
+ (void)_logResponse:(id)response requestID:(id)d error:(id)error prettyPrint:(BOOL)print;
+ (void)_reportBuildRequestForPlacement:(unint64_t)placement duration:(double)duration bagDuration:(double)bagDuration;
- (BOOL)isStorefrontAdPlatformsEnabledForBag:(id)bag;
- (id)_devicePlatform;
- (id)_placementForPlacement:(unint64_t)placement;
- (id)_requestJsonCatchingError:(id *)error;
- (void)_logRequestURL:(id)l requestID:(id)d headers:(id)headers innerRequestJson:(id)json prettyPrint:(BOOL)print;
- (void)beginSignpostForPlacement:(unint64_t)placement log:(id)log logID:(unint64_t)d;
- (void)endSignpostForPlacement:(unint64_t)placement log:(id)log logID:(unint64_t)d;
- (void)runWithParameters:(id)parameters endpoint:(id)endpoint completionHandler:(id)handler;
@end

@implementation APMediaServiceRequest

- (id)_devicePlatform
{
  if ((+[AMSDevice deviceIsiPhone]& 1) != 0)
  {
    return @"iphone";
  }

  if ((+[AMSDevice deviceIsiPad]& 1) != 0)
  {
    return @"ipad";
  }

  if ((+[AMSDevice deviceIsAppleTV]& 1) != 0)
  {
    return @"appletv";
  }

  if ((+[AMSDevice deviceIsAppleWatch]& 1) != 0)
  {
    return @"watch";
  }

  if ((+[AMSDevice deviceIsiPod]& 1) != 0)
  {
    return @"iphone";
  }

  if ((+[AMSDevice deviceIsMac]& 1) != 0)
  {
    return @"mac";
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unknown device platform", v4, 2u);
  }

  return 0;
}

- (id)_placementForPlacement:(unint64_t)placement
{
  if (placement - 7005 > 3)
  {
    return &stru_1004810B8;
  }

  else
  {
    return off_100480E28[placement - 7005];
  }
}

- (BOOL)isStorefrontAdPlatformsEnabledForBag:(id)bag
{
  v3 = +[APAMSBagManager isSearchLandingAdsEnabled];
  if (v3)
  {

    LOBYTE(v3) = +[APAMSBagManager isSponsoredAdsEnabledForAdTrackingd];
  }

  return v3;
}

- (void)runWithParameters:(id)parameters endpoint:(id)endpoint completionHandler:(id)handler
{
  parametersCopy = parameters;
  endpointCopy = endpoint;
  handlerCopy = handler;
  idAccount = [parametersCopy idAccount];
  iAdID = [idAccount iAdID];

  validate = [parametersCopy validate];
  if (handlerCopy && validate && iAdID)
  {
    [(APMediaServiceRequest *)self setParams:parametersCopy];
    if (+[APSystemInternal isAppleInternalInstall])
    {
      v11 = +[APMediaServiceRequestSettings settings];
    }

    else
    {
      v11 = 0;
    }

    v15 = +[NSDate now];
    [v15 timeIntervalSince1970];
    v17 = v16;

    if ([v11 useAMSBagValue])
    {
      v18 = +[AMSMediaTask bagSubProfile];
      v19 = +[AMSMediaTask bagSubProfileVersion];
      v92 = [AMSBag bagForProfile:v18 profileVersion:v19];
    }

    else
    {
      v92 = +[APAMSBagManager adprivacydBag];
    }

    v20 = 0.0;
    if (([v11 ignoreBagKeyCheckValue] & 1) == 0)
    {
      if (![(APMediaServiceRequest *)self isStorefrontAdPlatformsEnabledForBag:v92])
      {
        v31 = APLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134349056;
          *(&buf + 4) = 1025;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Ad Platforms is not enabled. Not making MediaAPI request: %{public}lu", &buf, 0xCu);
        }

        context = [parametersCopy context];
        identifier = [context identifier];
        v89 = [APMediaServiceRequest _contentDataWithContextIdentifier:identifier serverUnfilledReason:1025 diagnosticCode:13];

        v128 = v89;
        v90 = [NSArray arrayWithObjects:&v128 count:1];
        handlerCopy[2](handlerCopy, v90);
        goto LABEL_49;
      }

      v21 = +[NSDate now];
      [v21 timeIntervalSince1970];
      v23 = v22;

      v20 = v23 - v17;
    }

    mockRequestJson = [v11 mockRequestJson];
    if (![mockRequestJson length])
    {
      v110 = 0;
      v89 = [(APMediaServiceRequest *)self _requestJsonCatchingError:&v110];
      v90 = v110;

      if (v90 || ![v89 length])
      {
        v27 = APLogForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v90;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to generate request from context: %{public}@", &buf, 0xCu);
        }

        context2 = [parametersCopy context];
        identifier2 = [context2 identifier];
        v87 = [APMediaServiceRequest _contentDataWithContextIdentifier:identifier2 serverUnfilledReason:1025 diagnosticCode:14];

        v127 = v87;
        v30 = [NSArray arrayWithObjects:&v127 count:1];
        handlerCopy[2](handlerCopy, v30);

        goto LABEL_49;
      }

      mockRequestJson = v89;
    }

    v124 = mockRequestJson;
    v125 = @"data";
    v123 = @"adRequest";
    v89 = mockRequestJson;
    v25 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    v126 = v25;
    v90 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];

    v86 = [NSJSONSerialization dataWithJSONObject:v90 options:0 error:0];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v119 = 0x3032000000;
    v120 = sub_10038C334;
    v121 = sub_10038C344;
    v122 = 0;
    mediaAPIHostURL = [v11 mediaAPIHostURL];
    if ([mediaAPIHostURL length])
    {
      v26 = [NSURLComponents componentsWithString:mediaAPIHostURL];
    }

    else
    {
      if (!endpointCopy)
      {
        v73 = dispatch_semaphore_create(0);
        v74 = +[APAMSBagManager mediaAPIHostURL];
        valuePromise = [v74 valuePromise];

        v107[0] = _NSConcreteStackBlock;
        v107[1] = 3221225472;
        v107[2] = sub_10038C34C;
        v107[3] = &unk_100480D68;
        v107[4] = self;
        p_buf = &buf;
        v34 = v73;
        v108 = v34;
        [valuePromise addFinishBlock:v107];
        v76 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v34, v76))
        {
          v77 = APLogForCategory();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 = objc_opt_class();
            LODWORD(v113) = 138477827;
            *(&v113 + 4) = v78;
            v79 = v78;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%{private}@: Failed to get the API host from AMSMediaTask bag in time.", &v113, 0xCu);
          }

          v80 = [NSString stringWithFormat:@"Failed to get the API host from AMSMediaTask bag in time."];
          CreateDiagnosticReport();
        }

        goto LABEL_29;
      }

      v26 = [NSURLComponents componentsWithString:?];
    }

    v34 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v26;
LABEL_29:

    *&v113 = 0;
    *(&v113 + 1) = &v113;
    v114 = 0x3032000000;
    v115 = sub_10038C334;
    v116 = sub_10038C344;
    countryCode = [v11 countryCode];
    if (![*(*(&v113 + 1) + 40) length])
    {
      v35 = dispatch_semaphore_create(0);
      v36 = +[APAMSBagManager mediaAPICountryCode];
      valuePromise2 = [v36 valuePromise];

      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_10038C4E0;
      v104[3] = &unk_100480D90;
      v104[4] = self;
      v106 = &v113;
      v38 = v35;
      v105 = v38;
      [valuePromise2 addFinishBlock:v104];
      v39 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v38, v39))
      {
        v40 = APLogForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          *v111 = 138477827;
          v112 = v41;
          v42 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{private}@: Failed to get the country code from AMSMediaTask bag in time.", v111, 0xCu);
        }

        v43 = [NSString stringWithFormat:@"Failed to get the country code from AMSMediaTask bag in time."];
        CreateDiagnosticReport();
      }
    }

    devicePlatform = [v11 devicePlatform];
    if (![devicePlatform length])
    {
      _devicePlatform = [(APMediaServiceRequest *)self _devicePlatform];

      devicePlatform = _devicePlatform;
    }

    if ([v11 disablePlacementParamValue])
    {
      v45 = 0;
    }

    else
    {
      v45 = -[APMediaServiceRequest _placementForPlacement:](self, "_placementForPlacement:", [parametersCopy placement]);
    }

    v81 = v45;
    v83 = [APMediaServiceRequest _buildQueryParamsForDevicePlatform:"_buildQueryParamsForDevicePlatform:placement:parameters:" placement:devicePlatform parameters:?];
    v46 = [NSString stringWithFormat:@"/v1/engagement/%@/ads", *(*(&v113 + 1) + 40)];
    [*(*(&buf + 1) + 40) setPath:v46];

    [*(*(&buf + 1) + 40) setQueryItems:v83];
    v82 = [*(*(&buf + 1) + 40) URL];
    v47 = [NSMutableURLRequest requestWithURL:?];
    [v47 setHTTPBody:v86];
    [v47 setHTTPMethod:@"POST"];
    context3 = [parametersCopy context];
    identifier3 = [context3 identifier];
    uUIDString = [identifier3 UUIDString];

    if (+[APSystemInternal isAppleInternalInstall])
    {
      v50 = objc_alloc_init(APAdLibDefaults);
      v51 = [[ADRoutingInfoMessage alloc] initWithRoutingType:1 preferencesStore:v50];
      payload = [v51 payload];

      [v47 setValue:payload forHTTPHeaderField:@"x-apple-iad-env-name"];
    }

    [v47 setValue:*(*(&v113 + 1) + 40) forHTTPHeaderField:@"X-Apple-Store-Front"];
    [v47 setValue:uUIDString forHTTPHeaderField:@"X-Apple-App-Store-Client-Request-Id"];
    headers = [v11 headers];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_10038C5F4;
    v102[3] = &unk_10047DA60;
    v54 = v47;
    v103 = v54;
    [headers enumerateKeysAndObjectsUsingBlock:v102];

    prettyPrintJsonValue = [v11 prettyPrintJsonValue];
    allHTTPHeaderFields = [v54 allHTTPHeaderFields];
    [(APMediaServiceRequest *)self _logRequestURL:v82 requestID:uUIDString headers:allHTTPHeaderFields innerRequestJson:v89 prettyPrint:prettyPrintJsonValue];

    v57 = [v11 mockResponseResultForPlacement:{objc_msgSend(parametersCopy, "placement")}];
    requestTime = [parametersCopy requestTime];

    if (requestTime)
    {
      v59 = +[NSDate now];
      [v59 timeIntervalSince1970];
      v61 = v60;

      v62 = objc_opt_class();
      placement = [parametersCopy placement];
      requestTime2 = [parametersCopy requestTime];
      [requestTime2 timeIntervalSince1970];
      [v62 _reportBuildRequestForPlacement:placement duration:v61 - v65 bagDuration:v20];
    }

    if (v57)
    {
      [APMediaServiceRequest _logResponse:v57 requestID:uUIDString error:0 prettyPrint:prettyPrintJsonValue];
      v66 = +[NSDate now];
      [v66 timeIntervalSince1970];
      [APMediaServiceRequest _handleResult:v57 error:0 params:parametersCopy responseReceivedTimestamp:handlerCopy completionHandler:?];
    }

    else
    {
      v67 = APPerfLogForCategory();
      v68 = os_signpost_id_generate(v67);
      -[APMediaServiceRequest beginSignpostForPlacement:log:logID:](self, "beginSignpostForPlacement:log:logID:", [parametersCopy placement], v67, v68);
      v69 = +[NSDate now];
      [v69 timeIntervalSince1970];
      v71 = v70;

      objc_initWeak(v111, self);
      v72 = [APAMSNetworkFacade encodeUrlRequest:v54];
      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_10038C600;
      v95[3] = &unk_100480DE0;
      v96 = parametersCopy;
      v99 = handlerCopy;
      objc_copyWeak(v100, v111);
      v66 = v67;
      v97 = v66;
      v100[1] = v68;
      v100[2] = v71;
      v98 = uUIDString;
      v101 = prettyPrintJsonValue;
      [v72 addFinishBlock:v95];

      objc_destroyWeak(v100);
      objc_destroyWeak(v111);
    }

    _Block_object_dispose(&v113, 8);
    _Block_object_dispose(&buf, 8);

LABEL_49:
    goto LABEL_50;
  }

  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = 1025;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Media service request failed: %{public}lu", &buf, 0xCu);
  }

  context4 = [parametersCopy context];
  identifier4 = [context4 identifier];
  v11 = [APMediaServiceRequest _contentDataWithContextIdentifier:identifier4 serverUnfilledReason:1025 diagnosticCode:14];

  v129 = v11;
  v92 = [NSArray arrayWithObjects:&v129 count:1];
  handlerCopy[2](handlerCopy, v92);
LABEL_50:
}

+ (id)_contentDataWithContextIdentifier:(id)identifier serverUnfilledReason:(int64_t)reason diagnosticCode:(int64_t)code
{
  identifierCopy = identifier;
  v8 = objc_alloc_init(APContentData);
  [v8 setContextIdentifier:identifierCopy];

  [v8 setServerUnfilledReason:reason];
  [v8 setDiagnosticCode:code];

  return v8;
}

- (void)_logRequestURL:(id)l requestID:(id)d headers:(id)headers innerRequestJson:(id)json prettyPrint:(BOOL)print
{
  printCopy = print;
  lCopy = l;
  dCopy = d;
  headersCopy = headers;
  jsonCopy = json;
  v15 = objc_autoreleasePoolPush();
  if (!printCopy)
  {
    v16 = [headersCopy jsonStringWithOptions:0];
    jsonCopy = [NSString stringWithFormat:@"{headers:%@, body:%@}", v16, jsonCopy];
    goto LABEL_9;
  }

  v16 = [NSMutableDictionary dictionaryWithCapacity:2];
  v17 = [jsonCopy dataUsingEncoding:4];
  v18 = [NSJSONSerialization JSONObjectWithData:v17 options:0 error:0];

  if (!headersCopy)
  {
    v20 = +[NSNull null];
    [v16 setObject:v20 forKeyedSubscript:@"headers"];

    if (v18)
    {
      goto LABEL_4;
    }

LABEL_7:
    v21 = +[NSNull null];
    [v16 setObject:v21 forKeyedSubscript:@"body"];

    goto LABEL_8;
  }

  [v16 setObject:headersCopy forKeyedSubscript:@"headers"];
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_4:
  [v16 setObject:v18 forKeyedSubscript:@"body"];
LABEL_8:
  jsonCopy = [v16 jsonStringWithOptions:3];

LABEL_9:
  v22 = APLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138413059;
    v26 = v24;
    v27 = 2113;
    v28 = lCopy;
    v29 = 2114;
    v30 = dCopy;
    v31 = 2114;
    v32 = jsonCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%@] Making Media API request to %{private}@ with identifier %{public}@:\n%{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
}

+ (void)_logResponse:(id)response requestID:(id)d error:(id)error prettyPrint:(BOOL)print
{
  printCopy = print;
  responseCopy = response;
  dCopy = d;
  errorCopy = error;
  data = [responseCopy data];

  if (printCopy)
  {
    if (data)
    {
      data2 = [responseCopy data];
      data = [NSJSONSerialization JSONObjectWithData:data2 options:0 error:0];

      if (!data)
      {
        data3 = [responseCopy data];
        v16 = [data3 base64EncodedStringWithOptions:0];
        v17 = [NSString stringWithFormat:@"Failed to deserialize incoming data into JSON. %@", v16];

        APSimulateCrash();
        v50 = @"error";
        v51 = v17;
        data = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      }
    }

    v18 = [NSMutableDictionary dictionaryWithCapacity:4];
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [responseCopy responseStatusCode]);
    [(__CFString *)v18 setObject:v19 forKeyedSubscript:@"statusCode"];

    responseHeaders = [responseCopy responseHeaders];
    [(__CFString *)v18 setObject:responseHeaders forKeyedSubscript:@"headers"];

    [(__CFString *)v18 setObject:data forKeyedSubscript:@"body"];
    [(__CFString *)v18 setObject:errorCopy forKeyedSubscript:@"error"];
    v21 = [(__CFString *)v18 jsonStringWithOptions:3];
  }

  else
  {
    if (data)
    {
      v22 = [NSString alloc];
      data4 = [responseCopy data];
      data = [v22 initWithData:data4 encoding:4];

      if (!data)
      {
        data5 = [responseCopy data];
        v25 = [data5 base64EncodedStringWithOptions:0];
        v26 = [NSString stringWithFormat:@"Failed to convert incoming data into UTF8 string. %@", v25];

        APSimulateCrash();
        data = [NSString stringWithFormat:@"{error:%@}", v26];
      }
    }

    else
    {
      data = @"null";
    }

    responseHeaders2 = [responseCopy responseHeaders];
    v18 = @"null";
    if (responseHeaders2)
    {
      responseHeaders3 = [responseCopy responseHeaders];
      v18 = [responseHeaders3 jsonStringWithOptions:0];
    }

    if (errorCopy)
    {
      context = objc_autoreleasePoolPush();
      v49 = errorCopy;
      v29 = [NSArray arrayWithObjects:&v49 count:1];
      v30 = [v29 jsonRepresentationWithOptions:0];
      firstObject = [v30 firstObject];

      if (![NSJSONSerialization isValidJSONObject:firstObject])
      {
        v47 = @"description";
        if (+[APSystemInternal isAppleInternalInstall])
        {
          [errorCopy debugDescription];
        }

        else
        {
          [errorCopy description];
        }
        v33 = ;
        v48 = v33;
        v34 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

        firstObject = v34;
      }

      v35 = [NSJSONSerialization dataWithJSONObject:firstObject options:0 error:0];
      if (v35)
      {
        v32 = [[NSString alloc] initWithData:v35 encoding:4];
      }

      else
      {
        v32 = @"null";
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      v32 = 0;
    }

    responseStatusCode = [responseCopy responseStatusCode];
    if (v32)
    {
      v37 = v32;
    }

    else
    {
      v37 = @"null";
    }

    v21 = [NSString stringWithFormat:@"{statusCode:%ld, headers:%@, body:%@, error:%@}", responseStatusCode, v18, data, v37];
  }

  v38 = APLogForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = NSStringFromClass(self);
    *buf = 138412802;
    v42 = v39;
    v43 = 2114;
    v44 = dCopy;
    v45 = 2114;
    v46 = v21;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[%@] Received Media API response for %{public}@:\n%{public}@", buf, 0x20u);
  }
}

+ (void)_handleResult:(id)result error:(id)error params:(id)params responseReceivedTimestamp:(double)timestamp completionHandler:(id)handler
{
  resultCopy = result;
  errorCopy = error;
  paramsCopy = params;
  handlerCopy = handler;
  if (!errorCopy || ([errorCopy domain], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", AMSErrorDomain), v16, !v17))
  {
    longValue = -1;
    if (!resultCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  userInfo = [errorCopy userInfo];
  v19 = [userInfo objectForKey:AMSErrorUserInfoKeyStatusCode];

  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    longValue = [v19 longValue];
  }

  else
  {
    longValue = -1;
  }

  if (resultCopy)
  {
LABEL_7:
    longValue = [resultCopy responseStatusCode];
  }

LABEL_8:
  if (longValue != 200)
  {
    if ((longValue - 400) >= 0x64)
    {
      v22 = longValue - 500;
      if ((longValue - 500) >= 0x64)
      {
        v23 = 1010;
      }

      else
      {
        v23 = 1023;
      }

      if (errorCopy || v22 < 0x64)
      {
        goto LABEL_20;
      }

      v24 = APLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        responseStatusCode = [resultCopy responseStatusCode];
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unexpected MediaAPI server response. Status code: %lu", buf, 0xCu);
      }
    }

    v23 = 1022;
LABEL_20:
    context = [paramsCopy context];
    identifier = [context identifier];
    v27 = [self _contentDataWithContextIdentifier:identifier serverUnfilledReason:v23 diagnosticCode:0];

    v29 = v27;
    v28 = [NSArray arrayWithObjects:&v29 count:1];
    handlerCopy[2](handlerCopy, v28);

    goto LABEL_21;
  }

  data = [resultCopy data];
  [APMediaServiceRequest _handleResponseJsonData:data error:errorCopy params:paramsCopy responseReceivedTimestamp:handlerCopy completionHandler:timestamp];

LABEL_21:
}

+ (void)_handleResponseJsonData:(id)data error:(id)error params:(id)params responseReceivedTimestamp:(double)timestamp completionHandler:(id)handler
{
  dataCopy = data;
  paramsCopy = params;
  handlerCopy = handler;
  v15 = [dataCopy length];
  if (error || !v15)
  {
    context = [paramsCopy context];
    identifier = [context identifier];
    v18 = [self _contentDataWithContextIdentifier:identifier serverUnfilledReason:1023 diagnosticCode:0];

    v34 = v18;
    v16 = [NSArray arrayWithObjects:&v34 count:1];
    handlerCopy[2](handlerCopy, v16);
  }

  else
  {
    v28 = 0;
    v16 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v28];
    v17 = v28;
    v18 = v17;
    if (!v16 || v17)
    {
      v22 = APLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        *buf = 138412546;
        v31 = v23;
        v32 = 2114;
        v33 = 0;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@: Error with MediaAPI response serialization: %{public}@", buf, 0x16u);
      }

      context2 = [paramsCopy context];
      identifier2 = [context2 identifier];
      v19 = [self _contentDataWithContextIdentifier:identifier2 serverUnfilledReason:1025 diagnosticCode:0];

      v29 = v19;
      v27 = [NSArray arrayWithObjects:&v29 count:1];
      handlerCopy[2](handlerCopy, v27);
    }

    else
    {
      v19 = [APMediaServiceResponseTranslator translateResponse:v16 requestParams:paramsCopy responseReceivedTimestamp:timestamp];
      handlerCopy[2](handlerCopy, v19);
    }
  }
}

- (id)_requestJsonCatchingError:(id *)error
{
  v5 = objc_autoreleasePoolPush();
  v6 = [APMediaServiceContextTransformer alloc];
  params = [(APMediaServiceRequest *)self params];
  v8 = [(APMediaServiceContextTransformer *)v6 initWithParams:params];

  v16 = 0;
  v9 = [(APMediaServiceContextTransformer *)v8 transformedContextJSON:&v16];
  v10 = v16;
  if (v10)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138412546;
      v18 = v12;
      v19 = 2114;
      v20 = v10;
      v13 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@: Error with context to JSON transformer: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);
  if (error)
  {
    v14 = v10;
    *error = v10;
  }

  return v9;
}

+ (void)_reportBuildRequestForPlacement:(unint64_t)placement duration:(double)duration bagDuration:(double)bagDuration
{
  if (duration == 0.0)
  {
    bagDurationCopy = 0;
  }

  else
  {
    bagDuration = bagDuration * 100.0 / duration;
    bagDurationCopy = bagDuration;
  }

  v11[0] = @"Duration";
  bagDuration = [NSNumber numberWithDouble:duration, bagDuration];
  v12[0] = bagDuration;
  v11[1] = @"Type";
  v8 = [NSNumber numberWithUnsignedInteger:placement];
  v12[1] = v8;
  v11[2] = @"BagFraction";
  v9 = [NSNumber numberWithUnsignedInteger:bagDurationCopy];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  [APAnalytics sendEvent:@"mediasvc.buildrequest" customPayload:v10];
}

+ (id)_buildQueryParamsForDevicePlatform:(id)platform placement:(id)placement parameters:(id)parameters
{
  platformCopy = platform;
  placementCopy = placement;
  parametersCopy = parameters;
  appMetadataFields = [parametersCopy appMetadataFields];
  if (appMetadataFields)
  {
    appMetadataFields2 = [parametersCopy appMetadataFields];
    v12 = [appMetadataFields2 mutableCopy];
  }

  else
  {
    v12 = +[NSMutableDictionary dictionary];
  }

  v13 = [v12 valueForKey:@"platform"];

  if (!v13)
  {
    [v12 setValue:platformCopy forKey:@"platform"];
  }

  v14 = [v12 valueForKey:@"placement"];

  if (!v14)
  {
    [v12 setValue:placementCopy forKey:@"placement"];
  }

  if (![placementCopy isEqualToString:@"search-landing"])
  {
    v19 = [v12 valueForKey:@"extend"];

    if (v19)
    {
      v20 = [v12 valueForKey:@"extend"];
      v21 = [NSString stringWithFormat:@"%@, %@", v20, @"ageRating"];
      [v12 setValue:v21 forKey:@"extend"];

      goto LABEL_17;
    }

    v17 = @"ageRating";
    v18 = @"extend";
    goto LABEL_16;
  }

  v15 = [v12 valueForKey:@"fields"];

  if (!v15)
  {
    [v12 setValue:@"appBinaryTraits forKey:{ageRating", @"fields"}];
  }

  v16 = [v12 valueForKey:@"omit[resource]"];

  if (!v16)
  {
    v17 = @"autos";
    v18 = @"omit[resource]";
LABEL_16:
    [v12 setValue:v17 forKey:v18];
  }

LABEL_17:
  +[NSMutableArray array];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10038DC94;
  v26 = v25[3] = &unk_100480E08;
  v22 = v26;
  [v12 enumerateKeysAndObjectsUsingBlock:v25];
  v23 = [v22 copy];

  return v23;
}

- (void)beginSignpostForPlacement:(unint64_t)placement log:(id)log logID:(unint64_t)d
{
  logCopy = log;
  v8 = logCopy;
  v9 = d - 1;
  if (placement == 7005)
  {
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logCopy))
    {
      v13 = 0;
      v10 = "slpNetworkingTime";
      v11 = &v13;
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, d, v10, "", v11, 2u);
    }
  }

  else if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logCopy))
  {
    v12 = 0;
    v10 = "clNetworkingTime";
    v11 = &v12;
    goto LABEL_8;
  }
}

- (void)endSignpostForPlacement:(unint64_t)placement log:(id)log logID:(unint64_t)d
{
  logCopy = log;
  v8 = logCopy;
  v9 = d - 1;
  if (placement == 7005)
  {
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logCopy))
    {
      v13 = 0;
      v10 = "slpNetworkingTime";
      v11 = &v13;
LABEL_8:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, d, v10, " enableTelemetry=YES ", v11, 2u);
    }
  }

  else if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logCopy))
  {
    v12 = 0;
    v10 = "clNetworkingTime";
    v11 = &v12;
    goto LABEL_8;
  }
}

@end