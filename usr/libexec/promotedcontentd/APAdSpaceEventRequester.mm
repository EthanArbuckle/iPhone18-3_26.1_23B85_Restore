@interface APAdSpaceEventRequester
- (APAdSpaceEventRequester)initWithMetric:(id)metric internalContent:(id)content andContext:(id)context idAccount:(id)account;
- (id)headers;
- (id)protoBuffer;
- (void)makeDelayedRequest:(double)request requestSentHandler:(id)handler responseCallback:(id)callback;
- (void)makeRequest:(id)request;
- (void)setStatusCode:(int)code;
@end

@implementation APAdSpaceEventRequester

- (APAdSpaceEventRequester)initWithMetric:(id)metric internalContent:(id)content andContext:(id)context idAccount:(id)account
{
  v17.receiver = self;
  v17.super_class = APAdSpaceEventRequester;
  v6 = [(APLegacyMetricRequester *)&v17 initWithMetric:metric internalContent:content andContext:context clientInfo:0 idAccount:account];
  v7 = v6;
  if (v6)
  {
    context = [(APLegacyMetricRequester *)v6 context];

    if (!context)
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        internalContent = [(APLegacyMetricRequester *)v7 internalContent];
        content = [internalContent content];
        identifier = [content identifier];
        internalContent2 = [(APLegacyMetricRequester *)v7 internalContent];
        content2 = [internalContent2 content];
        contextIdentifier = [content2 contextIdentifier];
        *buf = 138543618;
        v19 = identifier;
        v20 = 2114;
        v21 = contextIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No context for content %{public}@ with context identifier %{public}@", buf, 0x16u);
      }
    }

    if ([(APAdSpaceEventRequester *)v7 statusCode]== 370)
    {
      +[APTimestampUtilities midnightUTCOfCurrentDay];
      [APTimestampUtilities roundedTimestampFromInterval:?];
    }

    else
    {
      [(APServerRequester *)v7 roundedTimestamp];
    }

    [(APAdSpaceEventRequester *)v7 setRoundedTimestampForASE:?];
  }

  return v7;
}

- (void)setStatusCode:(int)code
{
  if (code <= 0xE && ((1 << code) & 0x40E0) != 0 || (code - 3002) <= 9 && ((1 << (code + 70)) & 0x213) != 0)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      codeCopy = code;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Setting obsolete ASE %ld.", &v6, 0xCu);
    }
  }

  self->_statusCode = code;
}

- (void)makeRequest:(id)request
{
  requestCopy = request;
  if ([(APAdSpaceEventRequester *)self statusCode])
  {
    v12.receiver = self;
    v12.super_class = APAdSpaceEventRequester;
    [(APServerRequester *)&v12 makeRequest:requestCopy];
    internalContent = [(APLegacyMetricRequester *)self internalContent];
    [internalContent statusEventSent:{-[APAdSpaceEventRequester statusCode](self, "statusCode")}];
  }

  else
  {
    internalContent2 = [(APLegacyMetricRequester *)self internalContent];
    content = [internalContent2 content];
    identifier = [content identifier];
    v9 = [NSString stringWithFormat:@"ASE 0 will not be sent for content ID %@", identifier];

    v10 = +[NSProcessInfo processInfo];
    LOBYTE(internalContent2) = [v10 isRunningTests];

    if ((internalContent2 & 1) == 0)
    {
      APSimulateCrash();
    }

    v11 = [APLegacyInterfaceError invalidRequestErrorWithCode:0 reason:v9];
    requestCopy[2](requestCopy, 0, v11);
  }
}

- (void)makeDelayedRequest:(double)request requestSentHandler:(id)handler responseCallback:(id)callback
{
  handlerCopy = handler;
  callbackCopy = callback;
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v10 = [NSUserDefaults alloc];
    v11 = [v10 initWithSuiteName:APDefaultsBundleID];
    if ([v11 BOOLForKey:@"disableDelayForRequests"])
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v16 = "[APAdSpaceEventRequester makeDelayedRequest:requestSentHandler:responseCallback:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s Overriding delay to 0 seconds", buf, 0xCu);
      }

      request = 0.0;
    }
  }

  v14.receiver = self;
  v14.super_class = APAdSpaceEventRequester;
  [(APServerRequester *)&v14 makeDelayedRequest:handlerCopy requestSentHandler:callbackCopy responseCallback:request];
  internalContent = [(APLegacyMetricRequester *)self internalContent];
  [internalContent statusEventSent:{-[APAdSpaceEventRequester statusCode](self, "statusCode")}];
}

- (id)headers
{
  v9.receiver = self;
  v9.super_class = APAdSpaceEventRequester;
  headers = [(APServerRequester *)&v9 headers];
  v4 = [headers mutableCopy];

  [(APAdSpaceEventRequester *)self roundedTimestampForASE];
  v6 = [NSString stringWithFormat:@"%.6f", v5];
  [v4 setValue:v6 forKey:@"timestamp"];

  v7 = [v4 copy];

  return v7;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBAdSpaceStatusEventRequest);
  [(APPBAdSpaceStatusEventRequest *)v3 setStatusCode:[(APAdSpaceEventRequester *)self statusCode]];
  internalContent = [(APLegacyMetricRequester *)self internalContent];
  privateContent = [internalContent privateContent];
  adResponseIdentifier = [privateContent adResponseIdentifier];
  [(APPBAdSpaceStatusEventRequest *)v3 setAdServerResponseIdentifier:adResponseIdentifier];

  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];

  if ([(APAdSpaceEventRequester *)self statusCode]== 370)
  {
    [(APPBAdSpaceStatusEventRequest *)v3 setAdOriginIdentifier:uUIDString];
  }

  else
  {
    internalContent2 = [(APLegacyMetricRequester *)self internalContent];
    content = [internalContent2 content];
    identifier = [content identifier];
    [(APPBAdSpaceStatusEventRequest *)v3 setAdOriginIdentifier:identifier];
  }

  v12 = +[APEncryptedIDProvider provider];
  idAccount = [(APServerRequester *)self idAccount];
  v14 = [v12 encryptedIDsForIDAccountPrivate:idAccount];

  if ([(APAdSpaceEventRequester *)self statusCode]!= 360)
  {
    if ([(APAdSpaceEventRequester *)self statusCode]!= 370)
    {
      anonymousDemandID = [v14 anonymousDemandID];
      [(APPBAdSpaceStatusEventRequest *)v3 setAnonymousDemandiAdID:anonymousDemandID];

      contentID = [v14 contentID];
      [(APPBAdSpaceStatusEventRequest *)v3 setContentiAdID:contentID];

      dPID = [v14 DPID];
      [(APPBAdSpaceStatusEventRequest *)v3 setDPID:dPID];

      iAdID = [v14 iAdID];
      [(APPBAdSpaceStatusEventRequest *)v3 setIAdID:iAdID];

      if (![(APPBAdSpaceStatusEventRequest *)v3 hasAnonymousDemandiAdID]|| ![(APPBAdSpaceStatusEventRequest *)v3 hasContentiAdID]|| ![(APPBAdSpaceStatusEventRequest *)v3 hasIAdID])
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1002ADCA8;
        block[3] = &unk_1004790A8;
        v55 = v3;
        if (qword_1004E6A30 != -1)
        {
          dispatch_once(&qword_1004E6A30, block);
        }
      }
    }

    metric = [(APLegacyMetricRequester *)self metric];
    v27 = metricPropertyValue(metric, 0x15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metric2 = [(APLegacyMetricRequester *)self metric];
      v29 = metricPropertyValue(metric2, 0x15);
      LODWORD(placementType) = [v29 intValue];

      if (placementType != -1)
      {
        placementType = placementType;
        goto LABEL_26;
      }
    }

    else
    {
    }

    internalContent3 = [(APLegacyMetricRequester *)self internalContent];
    content2 = [internalContent3 content];
    if (content2)
    {
      v33 = content2;
      internalContent4 = [(APLegacyMetricRequester *)self internalContent];
      content3 = [internalContent4 content];
      representations = [content3 representations];
      v37 = [representations count];

      if (!v37)
      {
        placementType = -1;
LABEL_26:
        statusCode = [(APAdSpaceEventRequester *)self statusCode];
        context = [(APLegacyMetricRequester *)self context];
        idAccount2 = context;
        if (statusCode == 370)
        {
          v42 = [context contextJSONDictionaryForRequest:uUIDString andPlacementType:placementType];

          internalContent5 = [APRemovePrivacySensitiveFieldsContextTransformer transformedContextForDroppedDueToPolicyFromContext:v42];
          [(APPBAdSpaceStatusEventRequest *)v3 setContextJSON:internalContent5];
          idAccount2 = v42;
        }

        else
        {
          internalContent5 = [(APLegacyMetricRequester *)self internalContent];
          content4 = [internalContent5 content];
          identifier2 = [content4 identifier];
          v45 = [idAccount2 contextJSONForRequest:identifier2 andPlacementType:placementType];
          [(APPBAdSpaceStatusEventRequest *)v3 setContextJSON:v45];
        }

        goto LABEL_29;
      }

      internalContent3 = [(APLegacyMetricRequester *)self internalContent];
      content5 = [internalContent3 content];
      getRepresentation = [content5 getRepresentation];
      placementType = [getRepresentation placementType];
    }

    else
    {
      placementType = -1;
    }

    goto LABEL_26;
  }

  deviceNewsPlusSubscriberID = [v14 deviceNewsPlusSubscriberID];
  [(APPBAdSpaceStatusEventRequest *)v3 setIAdID:deviceNewsPlusSubscriberID];

  if (![(APPBAdSpaceStatusEventRequest *)v3 hasIAdID])
  {
    v58 = @"hasIAdID";
    v16 = [NSNumber numberWithBool:[(APPBAdSpaceStatusEventRequest *)v3 hasIAdID]];
    v59 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];

    v18 = [v17 description];
    CreateDiagnosticReport();
  }

  idAccount2 = [(APServerRequester *)self idAccount];
  internalContent5 = APLogForCategory();
  if (os_log_type_enabled(internalContent5, OS_LOG_TYPE_DEFAULT))
  {
    deviceNewsPlusSubscriberID2 = [idAccount2 deviceNewsPlusSubscriberID];
    *buf = 138543362;
    v57 = deviceNewsPlusSubscriberID2;
    _os_log_impl(&_mh_execute_header, internalContent5, OS_LOG_TYPE_DEFAULT, "Setting iAdID to deviceNewsPlusSubscriberID %{public}@", buf, 0xCu);
  }

LABEL_29:

  [(APAdSpaceEventRequester *)self roundedTimestampForASE];
  [(APPBAdSpaceStatusEventRequest *)v3 setTimestamp:?];
  internalContent6 = [(APLegacyMetricRequester *)self internalContent];
  privateContent2 = [internalContent6 privateContent];
  [privateContent2 responseTime];
  [(APPBAdSpaceStatusEventRequest *)v3 setResponseTime:?];

  internalContent7 = [(APLegacyMetricRequester *)self internalContent];
  -[APPBAdSpaceStatusEventRequest setFirstMessage:](v3, "setFirstMessage:", [internalContent7 isFirstMessage:{-[APAdSpaceEventRequester statusCode](self, "statusCode")}]);

  v49 = +[APDeviceInfo current];
  osVersionAndBuild = [v49 osVersionAndBuild];
  [(APPBAdSpaceStatusEventRequest *)v3 setOsVersionAndBuild:osVersionAndBuild];

  metric3 = [(APLegacyMetricRequester *)self metric];
  bundleIdentifier = [metric3 bundleIdentifier];
  [(APPBAdSpaceStatusEventRequest *)v3 setBundleID:bundleIdentifier];

  return v3;
}

@end