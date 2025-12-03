@interface APLogSysEventRequester
- (id)protoBuffer;
- (void)makeDelayedRequest:(double)request requestSentHandler:(id)handler responseCallback:(id)callback;
@end

@implementation APLogSysEventRequester

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogSysEventRequest);
  logMetadata = [(APLegacyMetricRequester *)self logMetadata];
  [(APPBLogSysEventRequest *)v3 setMetaData:logMetadata];

  [(APPBLogSysEventRequest *)v3 setEventType:[(APLogSysEventRequester *)self eventType]];
  v5 = objc_alloc_init(APPBClickLocation);
  [(APPBLogSysEventRequest *)v3 setClickLocation:v5];

  internalContent = [(APLegacyMetricRequester *)self internalContent];
  transientContent = [internalContent transientContent];
  [transientContent clickLocation];
  v9 = v8;
  clickLocation = [(APPBLogSysEventRequest *)v3 clickLocation];
  [clickLocation setX:v9];

  internalContent2 = [(APLegacyMetricRequester *)self internalContent];
  transientContent2 = [internalContent2 transientContent];
  [transientContent2 clickLocation];
  v14 = v13;
  clickLocation2 = [(APPBLogSysEventRequest *)v3 clickLocation];
  [clickLocation2 setY:v14];

  return v3;
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
        v15 = "[APLogSysEventRequester makeDelayedRequest:requestSentHandler:responseCallback:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s Overriding delay to 0 seconds", buf, 0xCu);
      }

      request = 0.0;
    }
  }

  v13.receiver = self;
  v13.super_class = APLogSysEventRequester;
  [(APServerRequester *)&v13 makeDelayedRequest:handlerCopy requestSentHandler:callbackCopy responseCallback:request];
}

@end