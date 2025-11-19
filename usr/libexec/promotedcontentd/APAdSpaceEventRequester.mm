@interface APAdSpaceEventRequester
- (APAdSpaceEventRequester)initWithMetric:(id)a3 internalContent:(id)a4 andContext:(id)a5 idAccount:(id)a6;
- (id)headers;
- (id)protoBuffer;
- (void)makeDelayedRequest:(double)a3 requestSentHandler:(id)a4 responseCallback:(id)a5;
- (void)makeRequest:(id)a3;
- (void)setStatusCode:(int)a3;
@end

@implementation APAdSpaceEventRequester

- (APAdSpaceEventRequester)initWithMetric:(id)a3 internalContent:(id)a4 andContext:(id)a5 idAccount:(id)a6
{
  v17.receiver = self;
  v17.super_class = APAdSpaceEventRequester;
  v6 = [(APLegacyMetricRequester *)&v17 initWithMetric:a3 internalContent:a4 andContext:a5 clientInfo:0 idAccount:a6];
  v7 = v6;
  if (v6)
  {
    v8 = [(APLegacyMetricRequester *)v6 context];

    if (!v8)
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(APLegacyMetricRequester *)v7 internalContent];
        v11 = [v10 content];
        v12 = [v11 identifier];
        v13 = [(APLegacyMetricRequester *)v7 internalContent];
        v14 = [v13 content];
        v15 = [v14 contextIdentifier];
        *buf = 138543618;
        v19 = v12;
        v20 = 2114;
        v21 = v15;
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

- (void)setStatusCode:(int)a3
{
  if (a3 <= 0xE && ((1 << a3) & 0x40E0) != 0 || (a3 - 3002) <= 9 && ((1 << (a3 + 70)) & 0x213) != 0)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Setting obsolete ASE %ld.", &v6, 0xCu);
    }
  }

  self->_statusCode = a3;
}

- (void)makeRequest:(id)a3
{
  v4 = a3;
  if ([(APAdSpaceEventRequester *)self statusCode])
  {
    v12.receiver = self;
    v12.super_class = APAdSpaceEventRequester;
    [(APServerRequester *)&v12 makeRequest:v4];
    v5 = [(APLegacyMetricRequester *)self internalContent];
    [v5 statusEventSent:{-[APAdSpaceEventRequester statusCode](self, "statusCode")}];
  }

  else
  {
    v6 = [(APLegacyMetricRequester *)self internalContent];
    v7 = [v6 content];
    v8 = [v7 identifier];
    v9 = [NSString stringWithFormat:@"ASE 0 will not be sent for content ID %@", v8];

    v10 = +[NSProcessInfo processInfo];
    LOBYTE(v6) = [v10 isRunningTests];

    if ((v6 & 1) == 0)
    {
      APSimulateCrash();
    }

    v11 = [APLegacyInterfaceError invalidRequestErrorWithCode:0 reason:v9];
    v4[2](v4, 0, v11);
  }
}

- (void)makeDelayedRequest:(double)a3 requestSentHandler:(id)a4 responseCallback:(id)a5
{
  v8 = a4;
  v9 = a5;
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

      a3 = 0.0;
    }
  }

  v14.receiver = self;
  v14.super_class = APAdSpaceEventRequester;
  [(APServerRequester *)&v14 makeDelayedRequest:v8 requestSentHandler:v9 responseCallback:a3];
  v13 = [(APLegacyMetricRequester *)self internalContent];
  [v13 statusEventSent:{-[APAdSpaceEventRequester statusCode](self, "statusCode")}];
}

- (id)headers
{
  v9.receiver = self;
  v9.super_class = APAdSpaceEventRequester;
  v3 = [(APServerRequester *)&v9 headers];
  v4 = [v3 mutableCopy];

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
  v4 = [(APLegacyMetricRequester *)self internalContent];
  v5 = [v4 privateContent];
  v6 = [v5 adResponseIdentifier];
  [(APPBAdSpaceStatusEventRequest *)v3 setAdServerResponseIdentifier:v6];

  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];

  if ([(APAdSpaceEventRequester *)self statusCode]== 370)
  {
    [(APPBAdSpaceStatusEventRequest *)v3 setAdOriginIdentifier:v8];
  }

  else
  {
    v9 = [(APLegacyMetricRequester *)self internalContent];
    v10 = [v9 content];
    v11 = [v10 identifier];
    [(APPBAdSpaceStatusEventRequest *)v3 setAdOriginIdentifier:v11];
  }

  v12 = +[APEncryptedIDProvider provider];
  v13 = [(APServerRequester *)self idAccount];
  v14 = [v12 encryptedIDsForIDAccountPrivate:v13];

  if ([(APAdSpaceEventRequester *)self statusCode]!= 360)
  {
    if ([(APAdSpaceEventRequester *)self statusCode]!= 370)
    {
      v22 = [v14 anonymousDemandID];
      [(APPBAdSpaceStatusEventRequest *)v3 setAnonymousDemandiAdID:v22];

      v23 = [v14 contentID];
      [(APPBAdSpaceStatusEventRequest *)v3 setContentiAdID:v23];

      v24 = [v14 DPID];
      [(APPBAdSpaceStatusEventRequest *)v3 setDPID:v24];

      v25 = [v14 iAdID];
      [(APPBAdSpaceStatusEventRequest *)v3 setIAdID:v25];

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

    v26 = [(APLegacyMetricRequester *)self metric];
    v27 = metricPropertyValue(v26, 0x15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [(APLegacyMetricRequester *)self metric];
      v29 = metricPropertyValue(v28, 0x15);
      LODWORD(v30) = [v29 intValue];

      if (v30 != -1)
      {
        v30 = v30;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v31 = [(APLegacyMetricRequester *)self internalContent];
    v32 = [v31 content];
    if (v32)
    {
      v33 = v32;
      v34 = [(APLegacyMetricRequester *)self internalContent];
      v35 = [v34 content];
      v36 = [v35 representations];
      v37 = [v36 count];

      if (!v37)
      {
        v30 = -1;
LABEL_26:
        v40 = [(APAdSpaceEventRequester *)self statusCode];
        v41 = [(APLegacyMetricRequester *)self context];
        v19 = v41;
        if (v40 == 370)
        {
          v42 = [v41 contextJSONDictionaryForRequest:v8 andPlacementType:v30];

          v20 = [APRemovePrivacySensitiveFieldsContextTransformer transformedContextForDroppedDueToPolicyFromContext:v42];
          [(APPBAdSpaceStatusEventRequest *)v3 setContextJSON:v20];
          v19 = v42;
        }

        else
        {
          v20 = [(APLegacyMetricRequester *)self internalContent];
          v43 = [v20 content];
          v44 = [v43 identifier];
          v45 = [v19 contextJSONForRequest:v44 andPlacementType:v30];
          [(APPBAdSpaceStatusEventRequest *)v3 setContextJSON:v45];
        }

        goto LABEL_29;
      }

      v31 = [(APLegacyMetricRequester *)self internalContent];
      v38 = [v31 content];
      v39 = [v38 getRepresentation];
      v30 = [v39 placementType];
    }

    else
    {
      v30 = -1;
    }

    goto LABEL_26;
  }

  v15 = [v14 deviceNewsPlusSubscriberID];
  [(APPBAdSpaceStatusEventRequest *)v3 setIAdID:v15];

  if (![(APPBAdSpaceStatusEventRequest *)v3 hasIAdID])
  {
    v58 = @"hasIAdID";
    v16 = [NSNumber numberWithBool:[(APPBAdSpaceStatusEventRequest *)v3 hasIAdID]];
    v59 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];

    v18 = [v17 description];
    CreateDiagnosticReport();
  }

  v19 = [(APServerRequester *)self idAccount];
  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 deviceNewsPlusSubscriberID];
    *buf = 138543362;
    v57 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Setting iAdID to deviceNewsPlusSubscriberID %{public}@", buf, 0xCu);
  }

LABEL_29:

  [(APAdSpaceEventRequester *)self roundedTimestampForASE];
  [(APPBAdSpaceStatusEventRequest *)v3 setTimestamp:?];
  v46 = [(APLegacyMetricRequester *)self internalContent];
  v47 = [v46 privateContent];
  [v47 responseTime];
  [(APPBAdSpaceStatusEventRequest *)v3 setResponseTime:?];

  v48 = [(APLegacyMetricRequester *)self internalContent];
  -[APPBAdSpaceStatusEventRequest setFirstMessage:](v3, "setFirstMessage:", [v48 isFirstMessage:{-[APAdSpaceEventRequester statusCode](self, "statusCode")}]);

  v49 = +[APDeviceInfo current];
  v50 = [v49 osVersionAndBuild];
  [(APPBAdSpaceStatusEventRequest *)v3 setOsVersionAndBuild:v50];

  v51 = [(APLegacyMetricRequester *)self metric];
  v52 = [v51 bundleIdentifier];
  [(APPBAdSpaceStatusEventRequest *)v3 setBundleID:v52];

  return v3;
}

@end