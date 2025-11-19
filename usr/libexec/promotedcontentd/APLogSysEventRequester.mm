@interface APLogSysEventRequester
- (id)protoBuffer;
- (void)makeDelayedRequest:(double)a3 requestSentHandler:(id)a4 responseCallback:(id)a5;
@end

@implementation APLogSysEventRequester

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogSysEventRequest);
  v4 = [(APLegacyMetricRequester *)self logMetadata];
  [(APPBLogSysEventRequest *)v3 setMetaData:v4];

  [(APPBLogSysEventRequest *)v3 setEventType:[(APLogSysEventRequester *)self eventType]];
  v5 = objc_alloc_init(APPBClickLocation);
  [(APPBLogSysEventRequest *)v3 setClickLocation:v5];

  v6 = [(APLegacyMetricRequester *)self internalContent];
  v7 = [v6 transientContent];
  [v7 clickLocation];
  v9 = v8;
  v10 = [(APPBLogSysEventRequest *)v3 clickLocation];
  [v10 setX:v9];

  v11 = [(APLegacyMetricRequester *)self internalContent];
  v12 = [v11 transientContent];
  [v12 clickLocation];
  v14 = v13;
  v15 = [(APPBLogSysEventRequest *)v3 clickLocation];
  [v15 setY:v14];

  return v3;
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
        v15 = "[APLogSysEventRequester makeDelayedRequest:requestSentHandler:responseCallback:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s Overriding delay to 0 seconds", buf, 0xCu);
      }

      a3 = 0.0;
    }
  }

  v13.receiver = self;
  v13.super_class = APLogSysEventRequester;
  [(APServerRequester *)&v13 makeDelayedRequest:v8 requestSentHandler:v9 responseCallback:a3];
}

@end